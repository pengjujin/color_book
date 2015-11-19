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

int main(){
	if (!glfwInit()){
		fprintf(stderr, "Failed to initialize GLFW \n");
		return -1;
	}

	glfwWindowHint(GLFW_SAMPLES, 4); // 4x antialiasing
  	glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3); // We want OpenGL 3.3
  	glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
  	glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE); // To make MacOS happy; should not be needed
  	glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE); //We don't want the old OpenGL 
  
	 //GLFWwindow* window; // (In the accompanying source code, this variable is global)
	 window = glfwCreateWindow( 1024, 768, "Triangle", NULL, NULL);
	 if( window == NULL ){
	     fprintf( stderr, "Failed to open GLFW window. If you have an Intel GPU, they are not 3.3 compatible. Try the 2.1 version of the tutorials.\n" );
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
 
 	// Dark blue background
	glClearColor(0.0f, 0.0f, 0.4f, 0.0f);

	//Create vertex array
	GLuint VertexArrayId;
	glGenVertexArrays(1, &VertexArrayId);
	glBindVertexArray(VertexArrayId);

	GLuint programID = LoadShaders("/home/pengju/15-463/final_proj/src/TransformVertexShader.vertexshader", "/home/pengju/15-463/final_proj/src/TextureFragmentShader.fragmentshader");

	// Get a handle for our "MVP" uniform
	GLuint MatrixID = glGetUniformLocation(programID, "MVP");


	// Load the texture
	GLuint Texture = loadDDS("uvmap.DDS");

	// Get a handle for our "myTextureSampler" uniform
	GLuint TextureID  = glGetUniformLocation(programID, "myTextureSampler");


	//CAMERA MATRIX MODELS

	//Intrinsics
	glm::mat4 Projection = glm::perspective(45.0f, 4.0f / 3.0f, 0.1f, 100.0f);
	// Or, for an ortho camera :
	//glm::mat4 Projection = glm::ortho(-10.0f,10.0f,-10.0f,10.0f,0.0f,100.0f); // In world coordinates
	
	// Camera matrix or extrinsics
	glm::mat4 View       = glm::lookAt(
								glm::vec3(4,3,3), // Camera is at (4,3,3), in World Space
								glm::vec3(0,3,0), // and looks at the origin
								glm::vec3(0,1,0)  // Head is up (set to 0,-1,0 to look upside-down)
						   );
	// Model matrix : an identity matrix (model will be at the origin)
	glm::mat4 Model      = glm::mat4(1.0f);
	// Our ModelViewProjection : multiplication of our 3 matrices
	glm::mat4 MVP        = Projection * View * Model; // Remember, matrix multiplication is the other way around

	// Read .obj model file
	std::vector<glm::vec3> vertices;
	std::vector<glm::vec2> uvs;
	std::vector<glm::vec3> normals; // Won't be used at the moment.
	bool res = loadOBJ("sample.obj", vertices, uvs, normals);


	GLuint vertexbuffer;
	glGenBuffers(1, &vertexbuffer);
	glBindBuffer(GL_ARRAY_BUFFER, vertexbuffer);
	glBufferData(GL_ARRAY_BUFFER, vertices.size() * sizeof(glm::vec3), &vertices[0], GL_STATIC_DRAW);

	GLuint uvbuffer;
	glGenBuffers(1, &uvbuffer);
	glBindBuffer(GL_ARRAY_BUFFER, uvbuffer);
	glBufferData(GL_ARRAY_BUFFER, uvs.size() * sizeof(glm::vec2), &uvs[0], GL_STATIC_DRAW);

  	do{
  		glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

  		glUseProgram(programID);

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
		glDisableVertexAttribArray(1);

      	// Swap buffers
      	glfwSwapBuffers(window);
      	glfwPollEvents();
 
 	} // Check if the ESC key was pressed or the window was closed
 	while( glfwGetKey(window, GLFW_KEY_ESCAPE ) != GLFW_PRESS &&
  	glfwWindowShouldClose(window) == 0 );

 	glDeleteBuffers(1, &vertexbuffer);
 	glDeleteBuffers(1, &uvbuffer);

 	glDeleteVertexArrays(1, &VertexArrayId);
 	glDeleteTextures(1, &TextureID);
 	glDeleteProgram(programID);

 	glfwTerminate();

 	return 0;	
}
