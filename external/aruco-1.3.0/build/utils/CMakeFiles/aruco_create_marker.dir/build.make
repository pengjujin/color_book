# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pengju/15-463/final_proj/external/aruco-1.3.0

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pengju/15-463/final_proj/external/aruco-1.3.0/build

# Include any dependencies generated for this target.
include utils/CMakeFiles/aruco_create_marker.dir/depend.make

# Include the progress variables for this target.
include utils/CMakeFiles/aruco_create_marker.dir/progress.make

# Include the compile flags for this target's objects.
include utils/CMakeFiles/aruco_create_marker.dir/flags.make

utils/CMakeFiles/aruco_create_marker.dir/aruco_create_marker.cpp.o: utils/CMakeFiles/aruco_create_marker.dir/flags.make
utils/CMakeFiles/aruco_create_marker.dir/aruco_create_marker.cpp.o: ../utils/aruco_create_marker.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pengju/15-463/final_proj/external/aruco-1.3.0/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object utils/CMakeFiles/aruco_create_marker.dir/aruco_create_marker.cpp.o"
	cd /home/pengju/15-463/final_proj/external/aruco-1.3.0/build/utils && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/aruco_create_marker.dir/aruco_create_marker.cpp.o -c /home/pengju/15-463/final_proj/external/aruco-1.3.0/utils/aruco_create_marker.cpp

utils/CMakeFiles/aruco_create_marker.dir/aruco_create_marker.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/aruco_create_marker.dir/aruco_create_marker.cpp.i"
	cd /home/pengju/15-463/final_proj/external/aruco-1.3.0/build/utils && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/pengju/15-463/final_proj/external/aruco-1.3.0/utils/aruco_create_marker.cpp > CMakeFiles/aruco_create_marker.dir/aruco_create_marker.cpp.i

utils/CMakeFiles/aruco_create_marker.dir/aruco_create_marker.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/aruco_create_marker.dir/aruco_create_marker.cpp.s"
	cd /home/pengju/15-463/final_proj/external/aruco-1.3.0/build/utils && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/pengju/15-463/final_proj/external/aruco-1.3.0/utils/aruco_create_marker.cpp -o CMakeFiles/aruco_create_marker.dir/aruco_create_marker.cpp.s

utils/CMakeFiles/aruco_create_marker.dir/aruco_create_marker.cpp.o.requires:
.PHONY : utils/CMakeFiles/aruco_create_marker.dir/aruco_create_marker.cpp.o.requires

utils/CMakeFiles/aruco_create_marker.dir/aruco_create_marker.cpp.o.provides: utils/CMakeFiles/aruco_create_marker.dir/aruco_create_marker.cpp.o.requires
	$(MAKE) -f utils/CMakeFiles/aruco_create_marker.dir/build.make utils/CMakeFiles/aruco_create_marker.dir/aruco_create_marker.cpp.o.provides.build
.PHONY : utils/CMakeFiles/aruco_create_marker.dir/aruco_create_marker.cpp.o.provides

utils/CMakeFiles/aruco_create_marker.dir/aruco_create_marker.cpp.o.provides.build: utils/CMakeFiles/aruco_create_marker.dir/aruco_create_marker.cpp.o

# Object files for target aruco_create_marker
aruco_create_marker_OBJECTS = \
"CMakeFiles/aruco_create_marker.dir/aruco_create_marker.cpp.o"

# External object files for target aruco_create_marker
aruco_create_marker_EXTERNAL_OBJECTS =

utils/aruco_create_marker: utils/CMakeFiles/aruco_create_marker.dir/aruco_create_marker.cpp.o
utils/aruco_create_marker: utils/CMakeFiles/aruco_create_marker.dir/build.make
utils/aruco_create_marker: src/libaruco.so.1.3.0
utils/aruco_create_marker: /usr/local/lib/libopencv_core.a
utils/aruco_create_marker: /usr/local/lib/libopencv_flann.a
utils/aruco_create_marker: /usr/local/lib/libopencv_imgproc.a
utils/aruco_create_marker: /usr/local/lib/libopencv_highgui.a
utils/aruco_create_marker: /usr/local/lib/libopencv_features2d.a
utils/aruco_create_marker: /usr/local/lib/libopencv_calib3d.a
utils/aruco_create_marker: /usr/local/lib/libopencv_ml.a
utils/aruco_create_marker: /usr/local/lib/libopencv_video.a
utils/aruco_create_marker: /usr/local/lib/libopencv_legacy.a
utils/aruco_create_marker: /usr/local/lib/libopencv_objdetect.a
utils/aruco_create_marker: /usr/local/lib/libopencv_photo.a
utils/aruco_create_marker: /usr/local/lib/libopencv_gpu.a
utils/aruco_create_marker: /usr/local/lib/libopencv_videostab.a
utils/aruco_create_marker: /usr/local/lib/libopencv_ts.a
utils/aruco_create_marker: /usr/local/lib/libopencv_ocl.a
utils/aruco_create_marker: /usr/local/lib/libopencv_superres.a
utils/aruco_create_marker: /usr/local/lib/libopencv_nonfree.a
utils/aruco_create_marker: /usr/local/lib/libopencv_stitching.a
utils/aruco_create_marker: /usr/local/lib/libopencv_contrib.a
utils/aruco_create_marker: /usr/local/lib/libopencv_nonfree.a
utils/aruco_create_marker: /usr/local/lib/libopencv_gpu.a
utils/aruco_create_marker: /usr/local/lib/libopencv_legacy.a
utils/aruco_create_marker: /usr/local/lib/libopencv_photo.a
utils/aruco_create_marker: /usr/local/lib/libopencv_ocl.a
utils/aruco_create_marker: /usr/local/lib/libopencv_calib3d.a
utils/aruco_create_marker: /usr/local/lib/libopencv_features2d.a
utils/aruco_create_marker: /usr/local/lib/libopencv_flann.a
utils/aruco_create_marker: /usr/local/lib/libopencv_ml.a
utils/aruco_create_marker: /usr/local/lib/libopencv_video.a
utils/aruco_create_marker: /usr/local/lib/libopencv_objdetect.a
utils/aruco_create_marker: /usr/local/lib/libopencv_highgui.a
utils/aruco_create_marker: /usr/local/lib/libopencv_imgproc.a
utils/aruco_create_marker: /usr/local/lib/libopencv_core.a
utils/aruco_create_marker: /usr/lib/x86_64-linux-gnu/libjpeg.so
utils/aruco_create_marker: /usr/lib/x86_64-linux-gnu/libpng.so
utils/aruco_create_marker: /usr/lib/x86_64-linux-gnu/libtiff.so
utils/aruco_create_marker: /usr/lib/x86_64-linux-gnu/libjasper.so
utils/aruco_create_marker: /usr/lib/x86_64-linux-gnu/libjpeg.so
utils/aruco_create_marker: /usr/lib/x86_64-linux-gnu/libpng.so
utils/aruco_create_marker: /usr/lib/x86_64-linux-gnu/libtiff.so
utils/aruco_create_marker: /usr/lib/x86_64-linux-gnu/libjasper.so
utils/aruco_create_marker: /usr/lib/x86_64-linux-gnu/libz.so
utils/aruco_create_marker: /usr/lib/x86_64-linux-gnu/libImath.so
utils/aruco_create_marker: /usr/lib/x86_64-linux-gnu/libIlmImf.so
utils/aruco_create_marker: /usr/lib/x86_64-linux-gnu/libIex.so
utils/aruco_create_marker: /usr/lib/x86_64-linux-gnu/libHalf.so
utils/aruco_create_marker: /usr/lib/x86_64-linux-gnu/libIlmThread.so
utils/aruco_create_marker: /usr/lib/x86_64-linux-gnu/libQtOpenGL.so
utils/aruco_create_marker: /usr/lib/x86_64-linux-gnu/libQtGui.so
utils/aruco_create_marker: /usr/lib/x86_64-linux-gnu/libQtTest.so
utils/aruco_create_marker: /usr/lib/x86_64-linux-gnu/libQtCore.so
utils/aruco_create_marker: /usr/lib/x86_64-linux-gnu/libGLU.so
utils/aruco_create_marker: /usr/lib/x86_64-linux-gnu/libGL.so
utils/aruco_create_marker: /usr/lib/x86_64-linux-gnu/libSM.so
utils/aruco_create_marker: /usr/lib/x86_64-linux-gnu/libICE.so
utils/aruco_create_marker: /usr/lib/x86_64-linux-gnu/libX11.so
utils/aruco_create_marker: /usr/lib/x86_64-linux-gnu/libXext.so
utils/aruco_create_marker: utils/CMakeFiles/aruco_create_marker.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable aruco_create_marker"
	cd /home/pengju/15-463/final_proj/external/aruco-1.3.0/build/utils && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/aruco_create_marker.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
utils/CMakeFiles/aruco_create_marker.dir/build: utils/aruco_create_marker
.PHONY : utils/CMakeFiles/aruco_create_marker.dir/build

utils/CMakeFiles/aruco_create_marker.dir/requires: utils/CMakeFiles/aruco_create_marker.dir/aruco_create_marker.cpp.o.requires
.PHONY : utils/CMakeFiles/aruco_create_marker.dir/requires

utils/CMakeFiles/aruco_create_marker.dir/clean:
	cd /home/pengju/15-463/final_proj/external/aruco-1.3.0/build/utils && $(CMAKE_COMMAND) -P CMakeFiles/aruco_create_marker.dir/cmake_clean.cmake
.PHONY : utils/CMakeFiles/aruco_create_marker.dir/clean

utils/CMakeFiles/aruco_create_marker.dir/depend:
	cd /home/pengju/15-463/final_proj/external/aruco-1.3.0/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pengju/15-463/final_proj/external/aruco-1.3.0 /home/pengju/15-463/final_proj/external/aruco-1.3.0/utils /home/pengju/15-463/final_proj/external/aruco-1.3.0/build /home/pengju/15-463/final_proj/external/aruco-1.3.0/build/utils /home/pengju/15-463/final_proj/external/aruco-1.3.0/build/utils/CMakeFiles/aruco_create_marker.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : utils/CMakeFiles/aruco_create_marker.dir/depend
