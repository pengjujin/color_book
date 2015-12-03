cmake_minimum_required (VERSION 2.6)
project (3DColorBook)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake/Modules/")
include(${CMAKE_SOURCE_DIR}/external/aruco-1.3.0/build/Findaruco.cmake)

find_package(OpenGL REQUIRED)
find_package(aruco REQUIRED)
find_package(OpenCV REQUIRED)
add_subdirectory (external)

include_directories(
        external/AntTweakBar-1.16/include/
        external/glfw-3.1.2/include/GLFW/
        external/glm-0.9.7.1/
        external/glew-1.13.0/include/
        external/assimp-3.0.1270/include/
        external/bullet-2.81-rev2613/src/
	external/soil/src/
        .
)

set(ALL_LIBS
        ${OPENGL_LIBRARY}
	${OpenCV_LIBS}
        glfw
        GLEW_1130
)

#ACTUAL CODE
set (core src/test.cpp)

add_executable(gltest 
	src/gltest.cpp
	common/shader.cpp
	common/shader.hpp
	common/controls.cpp
	common/controls.hpp
	common/texture.cpp
	common/texture.hpp
	common/objloader.cpp
	common/objloader.hpp
	src/SimpleFragmentShader.fragmentshader
	src/SimpleVertexShader.vertexshader
)
target_link_libraries(gltest ${ALL_LIBS})

add_executable(aruco_simple src/aruco_simple.cpp)
target_link_libraries(aruco_simple ${aruco_LIBS})

add_executable(color_book 
	src/video_reader.cpp
	src/tracker.h
	src/tracker.cpp
	common/shader.cpp
        common/shader.hpp
        common/controls.cpp
        common/controls.hpp
        common/texture.cpp
        common/texture.hpp
        common/objloader.cpp
        common/objloader.hpp
        src/SimpleFragmentShader.fragmentshader
        src/SimpleVertexShader.vertexshader
	src/texture_model_util.cpp
)
target_link_libraries(color_book ${ALL_LIBS} ${aruco_LIBS})
target_link_libraries(color_book ${CMAKE_SOURCE_DIR}/external/soil/libSOIL.a)

#add_executable(warp_test
#	src/texture_model_util.cpp
#	src/tracker.h
#	src/tracker.cpp
#)
#target_link_libraries(warp_test ${ALL_LIBS} ${aruco_LIBS})
