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
CMAKE_SOURCE_DIR = /home/pengju/15-463/final_proj

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pengju/15-463/final_proj/build

# Include any dependencies generated for this target.
include CMakeFiles/color_book.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/color_book.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/color_book.dir/flags.make

CMakeFiles/color_book.dir/src/video_reader.cpp.o: CMakeFiles/color_book.dir/flags.make
CMakeFiles/color_book.dir/src/video_reader.cpp.o: ../src/video_reader.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pengju/15-463/final_proj/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/color_book.dir/src/video_reader.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/color_book.dir/src/video_reader.cpp.o -c /home/pengju/15-463/final_proj/src/video_reader.cpp

CMakeFiles/color_book.dir/src/video_reader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/color_book.dir/src/video_reader.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/pengju/15-463/final_proj/src/video_reader.cpp > CMakeFiles/color_book.dir/src/video_reader.cpp.i

CMakeFiles/color_book.dir/src/video_reader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/color_book.dir/src/video_reader.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/pengju/15-463/final_proj/src/video_reader.cpp -o CMakeFiles/color_book.dir/src/video_reader.cpp.s

CMakeFiles/color_book.dir/src/video_reader.cpp.o.requires:
.PHONY : CMakeFiles/color_book.dir/src/video_reader.cpp.o.requires

CMakeFiles/color_book.dir/src/video_reader.cpp.o.provides: CMakeFiles/color_book.dir/src/video_reader.cpp.o.requires
	$(MAKE) -f CMakeFiles/color_book.dir/build.make CMakeFiles/color_book.dir/src/video_reader.cpp.o.provides.build
.PHONY : CMakeFiles/color_book.dir/src/video_reader.cpp.o.provides

CMakeFiles/color_book.dir/src/video_reader.cpp.o.provides.build: CMakeFiles/color_book.dir/src/video_reader.cpp.o

CMakeFiles/color_book.dir/src/tracker.cpp.o: CMakeFiles/color_book.dir/flags.make
CMakeFiles/color_book.dir/src/tracker.cpp.o: ../src/tracker.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pengju/15-463/final_proj/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/color_book.dir/src/tracker.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/color_book.dir/src/tracker.cpp.o -c /home/pengju/15-463/final_proj/src/tracker.cpp

CMakeFiles/color_book.dir/src/tracker.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/color_book.dir/src/tracker.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/pengju/15-463/final_proj/src/tracker.cpp > CMakeFiles/color_book.dir/src/tracker.cpp.i

CMakeFiles/color_book.dir/src/tracker.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/color_book.dir/src/tracker.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/pengju/15-463/final_proj/src/tracker.cpp -o CMakeFiles/color_book.dir/src/tracker.cpp.s

CMakeFiles/color_book.dir/src/tracker.cpp.o.requires:
.PHONY : CMakeFiles/color_book.dir/src/tracker.cpp.o.requires

CMakeFiles/color_book.dir/src/tracker.cpp.o.provides: CMakeFiles/color_book.dir/src/tracker.cpp.o.requires
	$(MAKE) -f CMakeFiles/color_book.dir/build.make CMakeFiles/color_book.dir/src/tracker.cpp.o.provides.build
.PHONY : CMakeFiles/color_book.dir/src/tracker.cpp.o.provides

CMakeFiles/color_book.dir/src/tracker.cpp.o.provides.build: CMakeFiles/color_book.dir/src/tracker.cpp.o

CMakeFiles/color_book.dir/common/shader.cpp.o: CMakeFiles/color_book.dir/flags.make
CMakeFiles/color_book.dir/common/shader.cpp.o: ../common/shader.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pengju/15-463/final_proj/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/color_book.dir/common/shader.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/color_book.dir/common/shader.cpp.o -c /home/pengju/15-463/final_proj/common/shader.cpp

CMakeFiles/color_book.dir/common/shader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/color_book.dir/common/shader.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/pengju/15-463/final_proj/common/shader.cpp > CMakeFiles/color_book.dir/common/shader.cpp.i

CMakeFiles/color_book.dir/common/shader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/color_book.dir/common/shader.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/pengju/15-463/final_proj/common/shader.cpp -o CMakeFiles/color_book.dir/common/shader.cpp.s

CMakeFiles/color_book.dir/common/shader.cpp.o.requires:
.PHONY : CMakeFiles/color_book.dir/common/shader.cpp.o.requires

CMakeFiles/color_book.dir/common/shader.cpp.o.provides: CMakeFiles/color_book.dir/common/shader.cpp.o.requires
	$(MAKE) -f CMakeFiles/color_book.dir/build.make CMakeFiles/color_book.dir/common/shader.cpp.o.provides.build
.PHONY : CMakeFiles/color_book.dir/common/shader.cpp.o.provides

CMakeFiles/color_book.dir/common/shader.cpp.o.provides.build: CMakeFiles/color_book.dir/common/shader.cpp.o

CMakeFiles/color_book.dir/common/controls.cpp.o: CMakeFiles/color_book.dir/flags.make
CMakeFiles/color_book.dir/common/controls.cpp.o: ../common/controls.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pengju/15-463/final_proj/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/color_book.dir/common/controls.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/color_book.dir/common/controls.cpp.o -c /home/pengju/15-463/final_proj/common/controls.cpp

CMakeFiles/color_book.dir/common/controls.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/color_book.dir/common/controls.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/pengju/15-463/final_proj/common/controls.cpp > CMakeFiles/color_book.dir/common/controls.cpp.i

CMakeFiles/color_book.dir/common/controls.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/color_book.dir/common/controls.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/pengju/15-463/final_proj/common/controls.cpp -o CMakeFiles/color_book.dir/common/controls.cpp.s

CMakeFiles/color_book.dir/common/controls.cpp.o.requires:
.PHONY : CMakeFiles/color_book.dir/common/controls.cpp.o.requires

CMakeFiles/color_book.dir/common/controls.cpp.o.provides: CMakeFiles/color_book.dir/common/controls.cpp.o.requires
	$(MAKE) -f CMakeFiles/color_book.dir/build.make CMakeFiles/color_book.dir/common/controls.cpp.o.provides.build
.PHONY : CMakeFiles/color_book.dir/common/controls.cpp.o.provides

CMakeFiles/color_book.dir/common/controls.cpp.o.provides.build: CMakeFiles/color_book.dir/common/controls.cpp.o

CMakeFiles/color_book.dir/common/texture.cpp.o: CMakeFiles/color_book.dir/flags.make
CMakeFiles/color_book.dir/common/texture.cpp.o: ../common/texture.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pengju/15-463/final_proj/build/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/color_book.dir/common/texture.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/color_book.dir/common/texture.cpp.o -c /home/pengju/15-463/final_proj/common/texture.cpp

CMakeFiles/color_book.dir/common/texture.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/color_book.dir/common/texture.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/pengju/15-463/final_proj/common/texture.cpp > CMakeFiles/color_book.dir/common/texture.cpp.i

CMakeFiles/color_book.dir/common/texture.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/color_book.dir/common/texture.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/pengju/15-463/final_proj/common/texture.cpp -o CMakeFiles/color_book.dir/common/texture.cpp.s

CMakeFiles/color_book.dir/common/texture.cpp.o.requires:
.PHONY : CMakeFiles/color_book.dir/common/texture.cpp.o.requires

CMakeFiles/color_book.dir/common/texture.cpp.o.provides: CMakeFiles/color_book.dir/common/texture.cpp.o.requires
	$(MAKE) -f CMakeFiles/color_book.dir/build.make CMakeFiles/color_book.dir/common/texture.cpp.o.provides.build
.PHONY : CMakeFiles/color_book.dir/common/texture.cpp.o.provides

CMakeFiles/color_book.dir/common/texture.cpp.o.provides.build: CMakeFiles/color_book.dir/common/texture.cpp.o

CMakeFiles/color_book.dir/common/objloader.cpp.o: CMakeFiles/color_book.dir/flags.make
CMakeFiles/color_book.dir/common/objloader.cpp.o: ../common/objloader.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pengju/15-463/final_proj/build/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/color_book.dir/common/objloader.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/color_book.dir/common/objloader.cpp.o -c /home/pengju/15-463/final_proj/common/objloader.cpp

CMakeFiles/color_book.dir/common/objloader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/color_book.dir/common/objloader.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/pengju/15-463/final_proj/common/objloader.cpp > CMakeFiles/color_book.dir/common/objloader.cpp.i

CMakeFiles/color_book.dir/common/objloader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/color_book.dir/common/objloader.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/pengju/15-463/final_proj/common/objloader.cpp -o CMakeFiles/color_book.dir/common/objloader.cpp.s

CMakeFiles/color_book.dir/common/objloader.cpp.o.requires:
.PHONY : CMakeFiles/color_book.dir/common/objloader.cpp.o.requires

CMakeFiles/color_book.dir/common/objloader.cpp.o.provides: CMakeFiles/color_book.dir/common/objloader.cpp.o.requires
	$(MAKE) -f CMakeFiles/color_book.dir/build.make CMakeFiles/color_book.dir/common/objloader.cpp.o.provides.build
.PHONY : CMakeFiles/color_book.dir/common/objloader.cpp.o.provides

CMakeFiles/color_book.dir/common/objloader.cpp.o.provides.build: CMakeFiles/color_book.dir/common/objloader.cpp.o

# Object files for target color_book
color_book_OBJECTS = \
"CMakeFiles/color_book.dir/src/video_reader.cpp.o" \
"CMakeFiles/color_book.dir/src/tracker.cpp.o" \
"CMakeFiles/color_book.dir/common/shader.cpp.o" \
"CMakeFiles/color_book.dir/common/controls.cpp.o" \
"CMakeFiles/color_book.dir/common/texture.cpp.o" \
"CMakeFiles/color_book.dir/common/objloader.cpp.o"

# External object files for target color_book
color_book_EXTERNAL_OBJECTS =

bin/color_book: CMakeFiles/color_book.dir/src/video_reader.cpp.o
bin/color_book: CMakeFiles/color_book.dir/src/tracker.cpp.o
bin/color_book: CMakeFiles/color_book.dir/common/shader.cpp.o
bin/color_book: CMakeFiles/color_book.dir/common/controls.cpp.o
bin/color_book: CMakeFiles/color_book.dir/common/texture.cpp.o
bin/color_book: CMakeFiles/color_book.dir/common/objloader.cpp.o
bin/color_book: CMakeFiles/color_book.dir/build.make
bin/color_book: /usr/lib/x86_64-linux-gnu/libGLU.so
bin/color_book: /usr/lib/x86_64-linux-gnu/libGL.so
bin/color_book: /usr/lib/x86_64-linux-gnu/libSM.so
bin/color_book: /usr/lib/x86_64-linux-gnu/libICE.so
bin/color_book: /usr/lib/x86_64-linux-gnu/libX11.so
bin/color_book: /usr/lib/x86_64-linux-gnu/libXext.so
bin/color_book: /usr/local/lib/libopencv_core.a
bin/color_book: /usr/local/lib/libopencv_flann.a
bin/color_book: /usr/local/lib/libopencv_imgproc.a
bin/color_book: /usr/local/lib/libopencv_highgui.a
bin/color_book: /usr/local/lib/libopencv_features2d.a
bin/color_book: /usr/local/lib/libopencv_calib3d.a
bin/color_book: /usr/local/lib/libopencv_ml.a
bin/color_book: /usr/local/lib/libopencv_video.a
bin/color_book: /usr/local/lib/libopencv_legacy.a
bin/color_book: /usr/local/lib/libopencv_objdetect.a
bin/color_book: /usr/local/lib/libopencv_photo.a
bin/color_book: /usr/local/lib/libopencv_gpu.a
bin/color_book: /usr/local/lib/libopencv_videostab.a
bin/color_book: /usr/local/lib/libopencv_ts.a
bin/color_book: /usr/local/lib/libopencv_ocl.a
bin/color_book: /usr/local/lib/libopencv_superres.a
bin/color_book: /usr/local/lib/libopencv_nonfree.a
bin/color_book: /usr/local/lib/libopencv_stitching.a
bin/color_book: /usr/local/lib/libopencv_contrib.a
bin/color_book: external/glfw-3.1.2/src/libglfw3.a
bin/color_book: external/libGLEW_1130.a
bin/color_book: /usr/local/lib/libopencv_core.a
bin/color_book: /usr/local/lib/libopencv_flann.a
bin/color_book: /usr/local/lib/libopencv_imgproc.a
bin/color_book: /usr/local/lib/libopencv_highgui.a
bin/color_book: /usr/local/lib/libopencv_features2d.a
bin/color_book: /usr/local/lib/libopencv_calib3d.a
bin/color_book: /usr/local/lib/libopencv_ml.a
bin/color_book: /usr/local/lib/libopencv_video.a
bin/color_book: /usr/local/lib/libopencv_legacy.a
bin/color_book: /usr/local/lib/libopencv_objdetect.a
bin/color_book: /usr/local/lib/libopencv_photo.a
bin/color_book: /usr/local/lib/libopencv_gpu.a
bin/color_book: /usr/local/lib/libopencv_videostab.a
bin/color_book: /usr/local/lib/libopencv_ts.a
bin/color_book: /usr/local/lib/libopencv_ocl.a
bin/color_book: /usr/local/lib/libopencv_superres.a
bin/color_book: /usr/local/lib/libopencv_nonfree.a
bin/color_book: /usr/local/lib/libopencv_stitching.a
bin/color_book: /usr/local/lib/libopencv_contrib.a
bin/color_book: /usr/local/lib/libopencv_nonfree.a
bin/color_book: /usr/local/lib/libopencv_gpu.a
bin/color_book: /usr/local/lib/libopencv_legacy.a
bin/color_book: /usr/local/lib/libopencv_photo.a
bin/color_book: /usr/local/lib/libopencv_ocl.a
bin/color_book: /usr/local/lib/libopencv_calib3d.a
bin/color_book: /usr/local/lib/libopencv_features2d.a
bin/color_book: /usr/local/lib/libopencv_flann.a
bin/color_book: /usr/local/lib/libopencv_ml.a
bin/color_book: /usr/local/lib/libopencv_video.a
bin/color_book: /usr/local/lib/libopencv_objdetect.a
bin/color_book: /usr/local/lib/libopencv_highgui.a
bin/color_book: /usr/local/lib/libopencv_imgproc.a
bin/color_book: /usr/local/lib/libopencv_core.a
bin/color_book: /usr/lib/x86_64-linux-gnu/libjpeg.so
bin/color_book: /usr/lib/x86_64-linux-gnu/libpng.so
bin/color_book: /usr/lib/x86_64-linux-gnu/libtiff.so
bin/color_book: /usr/lib/x86_64-linux-gnu/libjasper.so
bin/color_book: /usr/lib/x86_64-linux-gnu/libjpeg.so
bin/color_book: /usr/lib/x86_64-linux-gnu/libpng.so
bin/color_book: /usr/lib/x86_64-linux-gnu/libtiff.so
bin/color_book: /usr/lib/x86_64-linux-gnu/libjasper.so
bin/color_book: /usr/lib/x86_64-linux-gnu/libz.so
bin/color_book: /usr/lib/x86_64-linux-gnu/libImath.so
bin/color_book: /usr/lib/x86_64-linux-gnu/libIlmImf.so
bin/color_book: /usr/lib/x86_64-linux-gnu/libIex.so
bin/color_book: /usr/lib/x86_64-linux-gnu/libHalf.so
bin/color_book: /usr/lib/x86_64-linux-gnu/libIlmThread.so
bin/color_book: /usr/lib/x86_64-linux-gnu/libQtOpenGL.so
bin/color_book: /usr/lib/x86_64-linux-gnu/libQtGui.so
bin/color_book: /usr/lib/x86_64-linux-gnu/libQtTest.so
bin/color_book: /usr/lib/x86_64-linux-gnu/libQtCore.so
bin/color_book: /usr/lib/x86_64-linux-gnu/libGLU.so
bin/color_book: /usr/lib/x86_64-linux-gnu/librt.so
bin/color_book: /usr/lib/x86_64-linux-gnu/libm.so
bin/color_book: /usr/lib/x86_64-linux-gnu/libXrandr.so
bin/color_book: /usr/lib/x86_64-linux-gnu/libXinerama.so
bin/color_book: /usr/lib/x86_64-linux-gnu/libXi.so
bin/color_book: /usr/lib/x86_64-linux-gnu/libXxf86vm.so
bin/color_book: /usr/lib/x86_64-linux-gnu/libXcursor.so
bin/color_book: /usr/lib/x86_64-linux-gnu/libGL.so
bin/color_book: /usr/lib/x86_64-linux-gnu/libSM.so
bin/color_book: /usr/lib/x86_64-linux-gnu/libICE.so
bin/color_book: /usr/lib/x86_64-linux-gnu/libX11.so
bin/color_book: /usr/lib/x86_64-linux-gnu/libXext.so
bin/color_book: CMakeFiles/color_book.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable bin/color_book"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/color_book.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/color_book.dir/build: bin/color_book
.PHONY : CMakeFiles/color_book.dir/build

CMakeFiles/color_book.dir/requires: CMakeFiles/color_book.dir/src/video_reader.cpp.o.requires
CMakeFiles/color_book.dir/requires: CMakeFiles/color_book.dir/src/tracker.cpp.o.requires
CMakeFiles/color_book.dir/requires: CMakeFiles/color_book.dir/common/shader.cpp.o.requires
CMakeFiles/color_book.dir/requires: CMakeFiles/color_book.dir/common/controls.cpp.o.requires
CMakeFiles/color_book.dir/requires: CMakeFiles/color_book.dir/common/texture.cpp.o.requires
CMakeFiles/color_book.dir/requires: CMakeFiles/color_book.dir/common/objloader.cpp.o.requires
.PHONY : CMakeFiles/color_book.dir/requires

CMakeFiles/color_book.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/color_book.dir/cmake_clean.cmake
.PHONY : CMakeFiles/color_book.dir/clean

CMakeFiles/color_book.dir/depend:
	cd /home/pengju/15-463/final_proj/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pengju/15-463/final_proj /home/pengju/15-463/final_proj /home/pengju/15-463/final_proj/build /home/pengju/15-463/final_proj/build /home/pengju/15-463/final_proj/build/CMakeFiles/color_book.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/color_book.dir/depend

