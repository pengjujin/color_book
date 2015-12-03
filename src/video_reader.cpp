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
#include <glm/gtc/type_ptr.hpp>
#include <glm/ext.hpp>

using namespace glm;

#include <common/shader.hpp>
#include <common/texture.hpp>
#include <common/controls.hpp>
#include <common/objloader.hpp>

#include "external/soil/src/SOIL.h"

#include "texture_model_util.h"

const GLchar* vertexSource =
    "#version 130 \n"
    "in vec3 position;"
    "in vec2 texcoord;"
    "out vec2 Texcoord;"
    "uniform mat4 model;"
    "uniform mat4 view;"
    "uniform mat4 proj;"
    "void main() {"
    "   Texcoord = texcoord;"
    "   gl_Position =  proj * view * model * vec4(position, 1.0);"
    "}";
const GLchar* fragmentSource =
    "#version 130\n"
    "in vec2 Texcoord;"
    "out vec3 outColor;"
    "uniform sampler2D tex;"
    "void main() {"
    "   outColor = texture(tex, Texcoord).rgb;"
    "}";
//; //;
GLuint shaderProgram;	
GLuint textureId[2];
int gl_init(){
	if (!glfwInit()){
		fprintf(stderr, "Failed to initialize GLFW \n");
		return -1;
	}

	glfwWindowHint(GLFW_SAMPLES, 4); // 4x antialiasing
  	//glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3); // We want OpenGL 3.3
  	//glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
  	//glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE); //We don't want the old OpenGL 

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
	glUseProgramObjectARB(0);

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
	glActiveTexture(GL_TEXTURE0);

	if (!textureGenerated)
	{
		glBindTexture(GL_TEXTURE_2D, textureId[0]);
		glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP);
		glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP);
		glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
		glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);

		textureGenerated = true;
	}
	// Copy the image to the texture.
	glBindTexture(GL_TEXTURE_2D, textureId[0]);
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

glm::mat4 extrinsics_to_view(cv::Mat extrinsics){
	cv::Mat cvToGl = cv::Mat::zeros(4,4, CV_64F); 
	 cvToGl.at<double>(0, 0) = 1.0f; 
	 cvToGl.at<double>(1, 1) = -1.0f; // Invert the y axis
	 cvToGl.at<double>(2, 2) = -1.0f; // invert the z axis 
	 cvToGl.at<double>(3, 3) = 1.0f; 
	 cv::Mat viewMat = cvToGl * extrinsics;
	 //cout << viewMat << endl;
	 glm::mat4 view( 1.0f );

	 for(int i = 0; i < 3; i++){
	 	for(int j = 0; j < 3; j++){
	 		view[j][i] = viewMat.at<double>(i,j);
	 	}
	 }
	 view[3][0] = viewMat.at<double>(0,3);
	 view[3][1] = viewMat.at<double>(1,3);
	 view[3][2] = viewMat.at<double>(2,3);

	 view[3][3] = 1.0f;
	 return view;
}

int main(int, char**)
{

	//Declare some constants
	cv::Mat intrinsics = (Mat_<double>(3,3) << 628.9, 0, 317.53, 0, 624.08, 229.5, 0, 0, 1);
	float msize = 0.035;

	//OpenCV init Stuff
	//declare tracker and video IO 
	tracker ar_tracker(intrinsics, msize);
	VideoCapture cap(1);
	if(!cap.isOpened())
		return -1;

	Mat frame; // = imread("../util/gt_test2.jpg", CV_LOAD_IMAGE_COLOR);
	Mat texture = imread("../util/kat_flip.png", CV_LOAD_IMAGE_COLOR);
	bool succ;

	//OpenGL stuff
	gl_init();

	// Create and compile the vertex shader
    GLuint vertexShader = glCreateShader(GL_VERTEX_SHADER);
    glShaderSource(vertexShader, 1, &vertexSource, NULL);
    glCompileShader(vertexShader);
    GLint status;
	glGetShaderiv(vertexShader, GL_COMPILE_STATUS, &status);

	if(status ==  GL_TRUE){
		cout << "vertexShader compiled correctly" << endl;
	}
	else{
		char buffer[512];
		glGetShaderInfoLog(vertexShader, 512, NULL, buffer);
		cout << "VertexShader not compiled" << endl;
		cout << buffer << endl;
	}

    // Create and compile the fragment shader
    GLuint fragmentShader = glCreateShader(GL_FRAGMENT_SHADER);
    glShaderSource(fragmentShader, 1, &fragmentSource, NULL);
    glCompileShader(fragmentShader);

    GLint status2;
	glGetShaderiv(fragmentShader, GL_COMPILE_STATUS, &status2);

	if(status2 ==  GL_TRUE){
		cout << "fragment shader compiled correctly" << endl;
	}
	else{
		char frag_buffer[512];
		glGetShaderInfoLog(fragmentShader, 512, NULL, frag_buffer);
		cout << "fragment not compiled" << endl;
		cout << frag_buffer << endl;

	}

    // Link the vertex and fragment shader into a shader program
    shaderProgram = glCreateProgram();
    glAttachShader(shaderProgram, vertexShader);
    glAttachShader(shaderProgram, fragmentShader);
    glBindFragDataLocation(shaderProgram, 0, "outColor");
    glLinkProgram(shaderProgram);
    glUseProgram(shaderProgram);

	GLuint VertexArrayId;
	glGenVertexArrays(1, &VertexArrayId);
	glBindVertexArray(VertexArrayId);

	// Enable depth test
	glEnable(GL_DEPTH_TEST);
	// Accept fragment if it closer to the camera than the former one
	glDepthFunc(GL_LESS); 

	//loading model
	std::vector<glm::vec3> vertices;
	std::vector<glm::vec2> uvs;
	std::vector<glm::vec3> normals; 
	bool ar_model = loadOBJ("../util/sample_cube.obj", vertices, uvs, normals);
	cout << ar_model << endl;
	cout << "verticies  " << vertices.size() << endl;
	cout << "UV SIZE   " << uvs.size() << endl;
/*
	for(int i = 0; i < uvs.size(); i++){
		cout << glm::to_string(uvs[i]) << endl;
	}
*/
	GLuint vertexbuffer;
	glGenBuffers(1, &vertexbuffer);
	glBindBuffer(GL_ARRAY_BUFFER, vertexbuffer);
	glBufferData(GL_ARRAY_BUFFER, vertices.size() * sizeof(glm::vec3), &vertices[0], GL_STATIC_DRAW);


	GLuint uvbuffer;
	glGenBuffers(1, &uvbuffer);
	glBindBuffer(GL_ARRAY_BUFFER, uvbuffer);
	glBufferData(GL_ARRAY_BUFFER, uvs.size() * sizeof(glm::vec2), &uvs[0], GL_STATIC_DRAW);

	glGenTextures(2, textureId);
    glActiveTexture(GL_TEXTURE0);
    glBindTexture(GL_TEXTURE_2D, textureId[0]);
	//int width, height;
	//unsigned char* image =
    //SOIL_load_image("../util/rcube.png", &width, &height, 0, SOIL_LOAD_RGB);

    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);

	//glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, width, height, 0, GL_RGB,
      //        GL_UNSIGNED_BYTE, image);
	//glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, texture.size().width, texture.size().height, 0,  GL_BGR_EXT, GL_UNSIGNED_BYTE, texture.data);

	
    glUniform1i(glGetUniformLocation(shaderProgram, "tex"), 0);


	while(!glfwWindowShouldClose(window)){

		//OpenCV capturing and get extrinsics
		cap >> frame;
		cv::resize(frame, frame, Size(640, 480));
		Mat extrinsics = Mat::eye(4, 4, CV_64F);
		succ = ar_tracker.track(frame, extrinsics);



		glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
	
		//Get the background picture
		renderBackgroundGL(frame);


		//Render the AR Model
		glUseProgram(shaderProgram);
		if(succ){
			//
			glm::mat4 view = extrinsics_to_view(extrinsics);
    		GLint uniView = glGetUniformLocation(shaderProgram, "view");
    		glUniformMatrix4fv(uniView, 1, GL_FALSE, glm::value_ptr(view));

    		glm::mat4 proj = glm::perspective(glm::radians(45.0f), 800.0f / 600.0f, 0.1f, 100.0f);
    		GLint uniProj = glGetUniformLocation(shaderProgram, "proj");
    		glUniformMatrix4fv(uniProj, 1, GL_FALSE, glm::value_ptr(proj));

    		GLint uniModel = glGetUniformLocation(shaderProgram, "model");
  			glm::mat4 model = glm::scale(glm::mat4(0.05f), glm::vec3(0.05f));  
 			model = glm::rotate(model, glm::radians(90.0f), glm::vec3(1.0f, 0.0f, 0.0f)); 
        	glUniformMatrix4fv(uniModel, 1, GL_FALSE, glm::value_ptr(model));

        	glActiveTexture(GL_TEXTURE0);
    		glBindTexture(GL_TEXTURE_2D, textureId[0]);
	
			//glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, width, height, 0, GL_RGB,
             // GL_UNSIGNED_BYTE, image);
    		get_texture_from_frame(frame, texture, extrinsics, intrinsics);
			glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, texture.size().width, texture.size().height, 0,  GL_BGR_EXT, GL_UNSIGNED_BYTE, texture.data);

   			glUniform1i(glGetUniformLocation(shaderProgram, "tex"), 0);

			// Specify the layout of the vertex data
			glBindBuffer(GL_ARRAY_BUFFER, vertexbuffer);
		    GLint posAttrib = glGetAttribLocation(shaderProgram, "position");
		    glEnableVertexAttribArray(posAttrib);
		    glVertexAttribPointer(posAttrib, 3, GL_FLOAT, GL_FALSE, 0, 0);

		    glBindBuffer(GL_ARRAY_BUFFER, uvbuffer);
		    GLint texAttrib = glGetAttribLocation(shaderProgram, "texcoord");
		    glEnableVertexAttribArray(texAttrib);
		    glVertexAttribPointer(texAttrib, 2, GL_FLOAT, GL_FALSE, 0, 0);

			glDrawArrays(GL_TRIANGLES, 0, vertices.size());
			glClear(GL_DEPTH_BUFFER_BIT);
			//glDrawArrays(GL_TRIANGLES, 0, sizeof(vertices));
		  	//glDisableVertexAttribArray(0);
		} 
		// Swap buffers
      	glfwSwapBuffers(window);
      	glfwPollEvents();
	}

	return 0; 
}