#include "opencv2/opencv.hpp"
#include "tracker.h"
using namespace cv;

#include <stdio.h>
#include <stdlib.h>
#include <GL/glew.h>

#include <glfw3.h>
GLFWwindow* window;

#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>

using namespace glm;

#include <common/shader.hpp>
#include <common/texture.hpp>
#include <common/controls.hpp>
#include <common/objloader.hpp>

int gl_init(){
	if (!glfwInit()){
		fprintf(stderr, "Failed to initialize GLFW \n");
		return -1;
	}

	glfwWindowHint(GLFW_SAMPLES, 4); // 4x antialiasing
  	glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3); // We want OpenGL 3.3
  	glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
  	glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE); //We don't want the old OpenGL 

	 window = glfwCreateWindow( 1024, 768, "Frame", NULL, NULL);
	 if( window == NULL ){
	     fprintf( stderr, "Failed to open GLFW window.\n" );
	     glfwTerminate();
	     return -1;
	 }
	 glfwMakeContextCurrent(window); 

	 // Initialize GLEW
	 glewExperimental=true; // Needed in core profile
	 if (glewInit() != GLEW_OK) {
	     fprintf(stderr, "Failed to initialize GLEW\n");
	     return -1;
	 }

	glfwSetInputMode(window, GLFW_STICKY_KEYS, GL_TRUE);
}



void renderBackgroundGL(const cv::Mat& image)
{
	// Make sure that the polygon mode is set so we draw the polygons filled
	// (save the state first so we can restore it).
	GLint polygonMode[2];
	glGetIntegerv(GL_POLYGON_MODE, polygonMode);
	glPolygonMode(GL_FRONT, GL_FILL);
	glPolygonMode(GL_BACK, GL_FILL);

	// Set up the virtual camera, projecting using simple ortho so we can draw the background image.
	glMatrixMode(GL_PROJECTION);
	glLoadIdentity();
	gluOrtho2D(0.0, 1.0, 0.0, 1.0);
	
	glMatrixMode(GL_MODELVIEW);
	glLoadIdentity();
	
	// Create a texture (on the first pass only, we will reuse it later) to hold the image we captured.
	static bool textureGenerated = false;
	static GLuint textureId;
	if (!textureGenerated)
	{
		glGenTextures(1, &textureId);

		glBindTexture(GL_TEXTURE_2D, textureId);
		glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP);
		glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP);
		glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
		glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);

		textureGenerated = true;
	}
	
	// Copy the image to the texture.
	glBindTexture(GL_TEXTURE_2D, textureId);
	glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, image.size().width, image.size().height, 0, GL_BGR_EXT, GL_UNSIGNED_BYTE, image.data);
	
	// Draw the image.
	glEnable(GL_TEXTURE_2D);
	glBegin(GL_TRIANGLES);
		glNormal3f(0.0, 0.0, 1.0);
		
		glTexCoord2f(0.0, 1.0);
		glVertex3f(0.0, 0.0, 0.0);
		glTexCoord2f(0.0, 0.0);
		glVertex3f(0.0, 1.0, 0.0);
		glTexCoord2f(1.0, 1.0);
		glVertex3f(1.0, 0.0, 0.0);
		
		glTexCoord2f(1.0, 1.0);
		glVertex3f(1.0, 0.0, 0.0);
		glTexCoord2f(0.0, 0.0);
		glVertex3f(0.0, 1.0, 0.0);
		glTexCoord2f(1.0, 0.0);
		glVertex3f(1.0, 1.0, 0.0);
	glEnd();
	glDisable(GL_TEXTURE_2D);

	// Clear the depth buffer so the texture forms the background.
	glClear(GL_DEPTH_BUFFER_BIT);

	// Restore the polygon mode state.
	glPolygonMode(GL_FRONT, polygonMode[0]);
	glPolygonMode(GL_BACK, polygonMode[1]);
} 

GLuint matToTexture(cv::Mat &mat, GLenum minFilter, GLenum magFilter, GLenum wrapFilter)
{
	// Generate a number for our textureID's unique handle
	GLuint textureID;
	glGenTextures(1, &textureID);
 
	// Bind to our texture handle
	glBindTexture(GL_TEXTURE_2D, textureID);
 
	// Catch silly-mistake texture interpolation method for magnification
	if (magFilter == GL_LINEAR_MIPMAP_LINEAR  ||
	    magFilter == GL_LINEAR_MIPMAP_NEAREST ||
	    magFilter == GL_NEAREST_MIPMAP_LINEAR ||
	    magFilter == GL_NEAREST_MIPMAP_NEAREST)
	{
		cout << "You can't use MIPMAPs for magnification - setting filter to GL_LINEAR" << endl;
		magFilter = GL_LINEAR;
	}
 
	// Set texture interpolation methods for minification and magnification
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, minFilter);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, magFilter);
 
	// Set texture clamping method
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, wrapFilter);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, wrapFilter);
 
	// Set incoming texture format to:
	// GL_BGR       for CV_CAP_OPENNI_BGR_IMAGE,
	// GL_LUMINANCE for CV_CAP_OPENNI_DISPARITY_MAP,
	// Work out other mappings as required ( there's a list in comments in main() )
	GLenum inputColourFormat = GL_BGR;
	if (mat.channels() == 1)
	{
		inputColourFormat = GL_LUMINANCE;
	}
 
	// Create the texture
	glTexImage2D(GL_TEXTURE_2D,     // Type of texture
	             0,                 // Pyramid level (for mip-mapping) - 0 is the top level
	             GL_RGB,            // Internal colour format to convert to
	             mat.cols,          // Image width  i.e. 640 for Kinect in standard mode
	             mat.rows,          // Image height i.e. 480 for Kinect in standard mode
	             0,                 // Border width in pixels (can either be 1 or 0)
	             inputColourFormat, // Input image format (i.e. GL_RGB, GL_RGBA, GL_BGR etc.)
	             GL_UNSIGNED_BYTE,  // Image data type
	             mat.ptr());        // The actual image data itself
 
	// If we're using mipmaps then generate them. Note: This requires OpenGL 3.0 or higher
	if (minFilter == GL_LINEAR_MIPMAP_LINEAR  ||
	    minFilter == GL_LINEAR_MIPMAP_NEAREST ||
	    minFilter == GL_NEAREST_MIPMAP_LINEAR ||
	    minFilter == GL_NEAREST_MIPMAP_NEAREST)
	{
		glGenerateMipmap(GL_TEXTURE_2D);
	}
 
	return textureID;
}

void draw_background(cv::Mat &camFrame)
{
	// Clear the screen and depth buffer, and reset the ModelView matrix to identity
	glLoadIdentity();
 
 
	glEnable(GL_TEXTURE_2D);
 
	// Quad width and height
	float w = 6.4f;
	float h = 4.8f;
 
	// Convert image and depth data to OpenGL textures
	GLuint imageTex = matToTexture(camFrame,   GL_LINEAR_MIPMAP_LINEAR,   GL_LINEAR, GL_CLAMP);
 
	// Front facing texture
	glBindTexture(GL_TEXTURE_2D, imageTex);
	glBegin(GL_QUADS);
		glTexCoord2f(1, 1);
		glVertex2f(-w/2,  h/2);
		glTexCoord2f(0, 1);
		glVertex2f( w/2,  h/2);
		glTexCoord2f(0, 0);
		glVertex2f( w/2, -h/2);
		glTexCoord2f(1, 0);
		glVertex2f(-w/2, -h/2);
	glEnd();

 
	// Free the texture memory
	glDeleteTextures(1, &imageTex);

 
	glDisable(GL_TEXTURE_2D);
}

glm::mat4 cvMatToglm(Mat extrinsics){
	Mat cvToGl = Mat::zeros(4,4, CV_64F);
	cvToGl.at<double>(0,0) = 1.0f;
	cvToGl.at<double>(1,1) = -1.0f;

	cvToGl.at<double>(2,2) = -1.0f;

	cvToGl.at<double>(3,3) = 1.0f;

	Mat viewMat = cvToGl * extrinsics;
	glm::mat4 view(1.0f);
	for(int i = 0; i < 3; i++){
		for(int j = 0; j<3; j++){
			view[j][i] = viewMat.at<double>(i,j);
		}
	}

	view[3][0] = viewMat.at<double>(0,3);
	view[3][1] = viewMat.at<double>(1,3);
	view[3][2] = viewMat.at<double>(2,3);

	return view;
}

int main(int, char**)
{

	//Declare some constants
	cv::Mat intrinsics = (Mat_<double>(3,3) << 622.9, 0, 341.53, 0, 624.08, 259.9, 0, 0, 1);
	float msize = 0.034;

	//OpenCV init Stuff
	//declare tracker and video IO 
	tracker ar_tracker(intrinsics, msize);
	VideoCapture cap(0);
	if(!cap.isOpened())
		return -1;

	Mat frame;
	Mat extrinsics;
	bool succ;


	//OpenGL stuff
	gl_init();

	GLuint VertexArrayId;
	glGenVertexArrays(1, &VertexArrayId);
	glBindVertexArray(VertexArrayId);

//	GLuint programID = LoadShaders("/home/pengju/15-463/final_proj/src/TransformVertexShader.vertexshader", 
	//								"/home/pengju/15-463/final_proj/src/TextureFragmentShader.fragmentshader");
	
//	GLuint MatrixID = glGetUniformLocation(programID, "MVP");
 	
 	//Texture stuff
//	GLuint Texture = loadDDS("uvmap.DDS");

//	GLuint TextureID  = glGetUniformLocation(programID, "myTextureSampler");

	//loading model
	std::vector<glm::vec3> vertices;
	std::vector<glm::vec2> uvs;
	std::vector<glm::vec3> normals; 
	bool ar_model = loadOBJ("sample.obj", vertices, uvs, normals);

	GLuint vertexbuffer;
	glGenBuffers(1, &vertexbuffer);
	glBindBuffer(GL_ARRAY_BUFFER, vertexbuffer);
	glBufferData(GL_ARRAY_BUFFER, vertices.size() * sizeof(glm::vec3), &vertices[0], GL_STATIC_DRAW);

	GLuint uvbuffer;
	glGenBuffers(1, &uvbuffer);
	glBindBuffer(GL_ARRAY_BUFFER, uvbuffer);
	glBufferData(GL_ARRAY_BUFFER, uvs.size() * sizeof(glm::vec2), &uvs[0], GL_STATIC_DRAW);

	while(!glfwWindowShouldClose(window)){

		//OpenCV capturing and get extrinsics
		cap >> frame;
		succ = ar_tracker.track(frame, extrinsics);
	//	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
		renderBackgroundGL(frame);

		//render model
		/*
		if(succ){
			//

	  		glUseProgram(programID);

	  		glm::mat4 ProjectionMatrix = glm::perspective(45.0f, 4.0f / 3.0f, 0.1f, 100.0f);
			glm::mat4 ViewMatrix = //glm::lookAt(
								//glm::vec3(4,3,3), // Camera is at (4,3,3), in World Space
							//	glm::vec3(0,3,0), // and looks at the origin
							//	glm::vec3(0,1,0));
								cvMatToglm(extrinsics);
			glm::mat4 ModelMatrix = glm::mat4(1.0);
			glm::mat4 MVP = ProjectionMatrix * ViewMatrix * ModelMatrix;
	  		// Send our transformation to the currently bound shader, 
			// in the "MVP" uniform
			glUniformMatrix4fv(MatrixID, 1, GL_FALSE, &MVP[0][0]);

			// Bind our texture in Texture Unit 0
			glActiveTexture(GL_TEXTURE0);
			glBindTexture(GL_TEXTURE_2D, Texture);
			// Set our "myTextureSampler" sampler to user Texture Unit 0
			glUniform1i(TextureID, 0);

			glEnableVertexAttribArray(0);
			glBindBuffer(GL_ARRAY_BUFFER, vertexbuffer);
			glVertexAttribPointer(
				0, 
				3, 
				GL_FLOAT,
				GL_FALSE,
				0,
				(void*) 0
			);

			// 2nd attribute buffer : UVs
			glEnableVertexAttribArray(1);
			glBindBuffer(GL_ARRAY_BUFFER, uvbuffer);
			glVertexAttribPointer(
				1,                                // attribute
				2,                                // size
				GL_FLOAT,                         // type
				GL_FALSE,                         // normalized?
				0,                                // stride
				(void*)0                          // array buffer offset
			);

			glDrawArrays(GL_TRIANGLES, 0, vertices.size() );
		  	glDisableVertexAttribArray(0);
		} */
		// Swap buffers
      	glfwSwapBuffers(window);
      	glfwPollEvents();
	}

	return 0; 
}