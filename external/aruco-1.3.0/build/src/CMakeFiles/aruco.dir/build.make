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
include src/CMakeFiles/aruco.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/aruco.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/aruco.dir/flags.make

src/CMakeFiles/aruco.dir/highlyreliablemarkers.cpp.o: src/CMakeFiles/aruco.dir/flags.make
src/CMakeFiles/aruco.dir/highlyreliablemarkers.cpp.o: ../src/highlyreliablemarkers.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pengju/15-463/final_proj/external/aruco-1.3.0/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/aruco.dir/highlyreliablemarkers.cpp.o"
	cd /home/pengju/15-463/final_proj/external/aruco-1.3.0/build/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/aruco.dir/highlyreliablemarkers.cpp.o -c /home/pengju/15-463/final_proj/external/aruco-1.3.0/src/highlyreliablemarkers.cpp

src/CMakeFiles/aruco.dir/highlyreliablemarkers.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/aruco.dir/highlyreliablemarkers.cpp.i"
	cd /home/pengju/15-463/final_proj/external/aruco-1.3.0/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/pengju/15-463/final_proj/external/aruco-1.3.0/src/highlyreliablemarkers.cpp > CMakeFiles/aruco.dir/highlyreliablemarkers.cpp.i

src/CMakeFiles/aruco.dir/highlyreliablemarkers.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/aruco.dir/highlyreliablemarkers.cpp.s"
	cd /home/pengju/15-463/final_proj/external/aruco-1.3.0/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/pengju/15-463/final_proj/external/aruco-1.3.0/src/highlyreliablemarkers.cpp -o CMakeFiles/aruco.dir/highlyreliablemarkers.cpp.s

src/CMakeFiles/aruco.dir/highlyreliablemarkers.cpp.o.requires:
.PHONY : src/CMakeFiles/aruco.dir/highlyreliablemarkers.cpp.o.requires

src/CMakeFiles/aruco.dir/highlyreliablemarkers.cpp.o.provides: src/CMakeFiles/aruco.dir/highlyreliablemarkers.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/aruco.dir/build.make src/CMakeFiles/aruco.dir/highlyreliablemarkers.cpp.o.provides.build
.PHONY : src/CMakeFiles/aruco.dir/highlyreliablemarkers.cpp.o.provides

src/CMakeFiles/aruco.dir/highlyreliablemarkers.cpp.o.provides.build: src/CMakeFiles/aruco.dir/highlyreliablemarkers.cpp.o

src/CMakeFiles/aruco.dir/marker.cpp.o: src/CMakeFiles/aruco.dir/flags.make
src/CMakeFiles/aruco.dir/marker.cpp.o: ../src/marker.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pengju/15-463/final_proj/external/aruco-1.3.0/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/aruco.dir/marker.cpp.o"
	cd /home/pengju/15-463/final_proj/external/aruco-1.3.0/build/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/aruco.dir/marker.cpp.o -c /home/pengju/15-463/final_proj/external/aruco-1.3.0/src/marker.cpp

src/CMakeFiles/aruco.dir/marker.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/aruco.dir/marker.cpp.i"
	cd /home/pengju/15-463/final_proj/external/aruco-1.3.0/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/pengju/15-463/final_proj/external/aruco-1.3.0/src/marker.cpp > CMakeFiles/aruco.dir/marker.cpp.i

src/CMakeFiles/aruco.dir/marker.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/aruco.dir/marker.cpp.s"
	cd /home/pengju/15-463/final_proj/external/aruco-1.3.0/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/pengju/15-463/final_proj/external/aruco-1.3.0/src/marker.cpp -o CMakeFiles/aruco.dir/marker.cpp.s

src/CMakeFiles/aruco.dir/marker.cpp.o.requires:
.PHONY : src/CMakeFiles/aruco.dir/marker.cpp.o.requires

src/CMakeFiles/aruco.dir/marker.cpp.o.provides: src/CMakeFiles/aruco.dir/marker.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/aruco.dir/build.make src/CMakeFiles/aruco.dir/marker.cpp.o.provides.build
.PHONY : src/CMakeFiles/aruco.dir/marker.cpp.o.provides

src/CMakeFiles/aruco.dir/marker.cpp.o.provides.build: src/CMakeFiles/aruco.dir/marker.cpp.o

src/CMakeFiles/aruco.dir/boarddetector.cpp.o: src/CMakeFiles/aruco.dir/flags.make
src/CMakeFiles/aruco.dir/boarddetector.cpp.o: ../src/boarddetector.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pengju/15-463/final_proj/external/aruco-1.3.0/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/aruco.dir/boarddetector.cpp.o"
	cd /home/pengju/15-463/final_proj/external/aruco-1.3.0/build/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/aruco.dir/boarddetector.cpp.o -c /home/pengju/15-463/final_proj/external/aruco-1.3.0/src/boarddetector.cpp

src/CMakeFiles/aruco.dir/boarddetector.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/aruco.dir/boarddetector.cpp.i"
	cd /home/pengju/15-463/final_proj/external/aruco-1.3.0/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/pengju/15-463/final_proj/external/aruco-1.3.0/src/boarddetector.cpp > CMakeFiles/aruco.dir/boarddetector.cpp.i

src/CMakeFiles/aruco.dir/boarddetector.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/aruco.dir/boarddetector.cpp.s"
	cd /home/pengju/15-463/final_proj/external/aruco-1.3.0/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/pengju/15-463/final_proj/external/aruco-1.3.0/src/boarddetector.cpp -o CMakeFiles/aruco.dir/boarddetector.cpp.s

src/CMakeFiles/aruco.dir/boarddetector.cpp.o.requires:
.PHONY : src/CMakeFiles/aruco.dir/boarddetector.cpp.o.requires

src/CMakeFiles/aruco.dir/boarddetector.cpp.o.provides: src/CMakeFiles/aruco.dir/boarddetector.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/aruco.dir/build.make src/CMakeFiles/aruco.dir/boarddetector.cpp.o.provides.build
.PHONY : src/CMakeFiles/aruco.dir/boarddetector.cpp.o.provides

src/CMakeFiles/aruco.dir/boarddetector.cpp.o.provides.build: src/CMakeFiles/aruco.dir/boarddetector.cpp.o

src/CMakeFiles/aruco.dir/markerdetector.cpp.o: src/CMakeFiles/aruco.dir/flags.make
src/CMakeFiles/aruco.dir/markerdetector.cpp.o: ../src/markerdetector.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pengju/15-463/final_proj/external/aruco-1.3.0/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/aruco.dir/markerdetector.cpp.o"
	cd /home/pengju/15-463/final_proj/external/aruco-1.3.0/build/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/aruco.dir/markerdetector.cpp.o -c /home/pengju/15-463/final_proj/external/aruco-1.3.0/src/markerdetector.cpp

src/CMakeFiles/aruco.dir/markerdetector.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/aruco.dir/markerdetector.cpp.i"
	cd /home/pengju/15-463/final_proj/external/aruco-1.3.0/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/pengju/15-463/final_proj/external/aruco-1.3.0/src/markerdetector.cpp > CMakeFiles/aruco.dir/markerdetector.cpp.i

src/CMakeFiles/aruco.dir/markerdetector.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/aruco.dir/markerdetector.cpp.s"
	cd /home/pengju/15-463/final_proj/external/aruco-1.3.0/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/pengju/15-463/final_proj/external/aruco-1.3.0/src/markerdetector.cpp -o CMakeFiles/aruco.dir/markerdetector.cpp.s

src/CMakeFiles/aruco.dir/markerdetector.cpp.o.requires:
.PHONY : src/CMakeFiles/aruco.dir/markerdetector.cpp.o.requires

src/CMakeFiles/aruco.dir/markerdetector.cpp.o.provides: src/CMakeFiles/aruco.dir/markerdetector.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/aruco.dir/build.make src/CMakeFiles/aruco.dir/markerdetector.cpp.o.provides.build
.PHONY : src/CMakeFiles/aruco.dir/markerdetector.cpp.o.provides

src/CMakeFiles/aruco.dir/markerdetector.cpp.o.provides.build: src/CMakeFiles/aruco.dir/markerdetector.cpp.o

src/CMakeFiles/aruco.dir/ar_omp.cpp.o: src/CMakeFiles/aruco.dir/flags.make
src/CMakeFiles/aruco.dir/ar_omp.cpp.o: ../src/ar_omp.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pengju/15-463/final_proj/external/aruco-1.3.0/build/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/aruco.dir/ar_omp.cpp.o"
	cd /home/pengju/15-463/final_proj/external/aruco-1.3.0/build/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/aruco.dir/ar_omp.cpp.o -c /home/pengju/15-463/final_proj/external/aruco-1.3.0/src/ar_omp.cpp

src/CMakeFiles/aruco.dir/ar_omp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/aruco.dir/ar_omp.cpp.i"
	cd /home/pengju/15-463/final_proj/external/aruco-1.3.0/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/pengju/15-463/final_proj/external/aruco-1.3.0/src/ar_omp.cpp > CMakeFiles/aruco.dir/ar_omp.cpp.i

src/CMakeFiles/aruco.dir/ar_omp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/aruco.dir/ar_omp.cpp.s"
	cd /home/pengju/15-463/final_proj/external/aruco-1.3.0/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/pengju/15-463/final_proj/external/aruco-1.3.0/src/ar_omp.cpp -o CMakeFiles/aruco.dir/ar_omp.cpp.s

src/CMakeFiles/aruco.dir/ar_omp.cpp.o.requires:
.PHONY : src/CMakeFiles/aruco.dir/ar_omp.cpp.o.requires

src/CMakeFiles/aruco.dir/ar_omp.cpp.o.provides: src/CMakeFiles/aruco.dir/ar_omp.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/aruco.dir/build.make src/CMakeFiles/aruco.dir/ar_omp.cpp.o.provides.build
.PHONY : src/CMakeFiles/aruco.dir/ar_omp.cpp.o.provides

src/CMakeFiles/aruco.dir/ar_omp.cpp.o.provides.build: src/CMakeFiles/aruco.dir/ar_omp.cpp.o

src/CMakeFiles/aruco.dir/subpixelcorner.cpp.o: src/CMakeFiles/aruco.dir/flags.make
src/CMakeFiles/aruco.dir/subpixelcorner.cpp.o: ../src/subpixelcorner.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pengju/15-463/final_proj/external/aruco-1.3.0/build/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/aruco.dir/subpixelcorner.cpp.o"
	cd /home/pengju/15-463/final_proj/external/aruco-1.3.0/build/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/aruco.dir/subpixelcorner.cpp.o -c /home/pengju/15-463/final_proj/external/aruco-1.3.0/src/subpixelcorner.cpp

src/CMakeFiles/aruco.dir/subpixelcorner.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/aruco.dir/subpixelcorner.cpp.i"
	cd /home/pengju/15-463/final_proj/external/aruco-1.3.0/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/pengju/15-463/final_proj/external/aruco-1.3.0/src/subpixelcorner.cpp > CMakeFiles/aruco.dir/subpixelcorner.cpp.i

src/CMakeFiles/aruco.dir/subpixelcorner.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/aruco.dir/subpixelcorner.cpp.s"
	cd /home/pengju/15-463/final_proj/external/aruco-1.3.0/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/pengju/15-463/final_proj/external/aruco-1.3.0/src/subpixelcorner.cpp -o CMakeFiles/aruco.dir/subpixelcorner.cpp.s

src/CMakeFiles/aruco.dir/subpixelcorner.cpp.o.requires:
.PHONY : src/CMakeFiles/aruco.dir/subpixelcorner.cpp.o.requires

src/CMakeFiles/aruco.dir/subpixelcorner.cpp.o.provides: src/CMakeFiles/aruco.dir/subpixelcorner.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/aruco.dir/build.make src/CMakeFiles/aruco.dir/subpixelcorner.cpp.o.provides.build
.PHONY : src/CMakeFiles/aruco.dir/subpixelcorner.cpp.o.provides

src/CMakeFiles/aruco.dir/subpixelcorner.cpp.o.provides.build: src/CMakeFiles/aruco.dir/subpixelcorner.cpp.o

src/CMakeFiles/aruco.dir/cameraparameters.cpp.o: src/CMakeFiles/aruco.dir/flags.make
src/CMakeFiles/aruco.dir/cameraparameters.cpp.o: ../src/cameraparameters.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pengju/15-463/final_proj/external/aruco-1.3.0/build/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/aruco.dir/cameraparameters.cpp.o"
	cd /home/pengju/15-463/final_proj/external/aruco-1.3.0/build/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/aruco.dir/cameraparameters.cpp.o -c /home/pengju/15-463/final_proj/external/aruco-1.3.0/src/cameraparameters.cpp

src/CMakeFiles/aruco.dir/cameraparameters.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/aruco.dir/cameraparameters.cpp.i"
	cd /home/pengju/15-463/final_proj/external/aruco-1.3.0/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/pengju/15-463/final_proj/external/aruco-1.3.0/src/cameraparameters.cpp > CMakeFiles/aruco.dir/cameraparameters.cpp.i

src/CMakeFiles/aruco.dir/cameraparameters.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/aruco.dir/cameraparameters.cpp.s"
	cd /home/pengju/15-463/final_proj/external/aruco-1.3.0/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/pengju/15-463/final_proj/external/aruco-1.3.0/src/cameraparameters.cpp -o CMakeFiles/aruco.dir/cameraparameters.cpp.s

src/CMakeFiles/aruco.dir/cameraparameters.cpp.o.requires:
.PHONY : src/CMakeFiles/aruco.dir/cameraparameters.cpp.o.requires

src/CMakeFiles/aruco.dir/cameraparameters.cpp.o.provides: src/CMakeFiles/aruco.dir/cameraparameters.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/aruco.dir/build.make src/CMakeFiles/aruco.dir/cameraparameters.cpp.o.provides.build
.PHONY : src/CMakeFiles/aruco.dir/cameraparameters.cpp.o.provides

src/CMakeFiles/aruco.dir/cameraparameters.cpp.o.provides.build: src/CMakeFiles/aruco.dir/cameraparameters.cpp.o

src/CMakeFiles/aruco.dir/chromaticmask.cpp.o: src/CMakeFiles/aruco.dir/flags.make
src/CMakeFiles/aruco.dir/chromaticmask.cpp.o: ../src/chromaticmask.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pengju/15-463/final_proj/external/aruco-1.3.0/build/CMakeFiles $(CMAKE_PROGRESS_8)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/aruco.dir/chromaticmask.cpp.o"
	cd /home/pengju/15-463/final_proj/external/aruco-1.3.0/build/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/aruco.dir/chromaticmask.cpp.o -c /home/pengju/15-463/final_proj/external/aruco-1.3.0/src/chromaticmask.cpp

src/CMakeFiles/aruco.dir/chromaticmask.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/aruco.dir/chromaticmask.cpp.i"
	cd /home/pengju/15-463/final_proj/external/aruco-1.3.0/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/pengju/15-463/final_proj/external/aruco-1.3.0/src/chromaticmask.cpp > CMakeFiles/aruco.dir/chromaticmask.cpp.i

src/CMakeFiles/aruco.dir/chromaticmask.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/aruco.dir/chromaticmask.cpp.s"
	cd /home/pengju/15-463/final_proj/external/aruco-1.3.0/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/pengju/15-463/final_proj/external/aruco-1.3.0/src/chromaticmask.cpp -o CMakeFiles/aruco.dir/chromaticmask.cpp.s

src/CMakeFiles/aruco.dir/chromaticmask.cpp.o.requires:
.PHONY : src/CMakeFiles/aruco.dir/chromaticmask.cpp.o.requires

src/CMakeFiles/aruco.dir/chromaticmask.cpp.o.provides: src/CMakeFiles/aruco.dir/chromaticmask.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/aruco.dir/build.make src/CMakeFiles/aruco.dir/chromaticmask.cpp.o.provides.build
.PHONY : src/CMakeFiles/aruco.dir/chromaticmask.cpp.o.provides

src/CMakeFiles/aruco.dir/chromaticmask.cpp.o.provides.build: src/CMakeFiles/aruco.dir/chromaticmask.cpp.o

src/CMakeFiles/aruco.dir/board.cpp.o: src/CMakeFiles/aruco.dir/flags.make
src/CMakeFiles/aruco.dir/board.cpp.o: ../src/board.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pengju/15-463/final_proj/external/aruco-1.3.0/build/CMakeFiles $(CMAKE_PROGRESS_9)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/aruco.dir/board.cpp.o"
	cd /home/pengju/15-463/final_proj/external/aruco-1.3.0/build/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/aruco.dir/board.cpp.o -c /home/pengju/15-463/final_proj/external/aruco-1.3.0/src/board.cpp

src/CMakeFiles/aruco.dir/board.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/aruco.dir/board.cpp.i"
	cd /home/pengju/15-463/final_proj/external/aruco-1.3.0/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/pengju/15-463/final_proj/external/aruco-1.3.0/src/board.cpp > CMakeFiles/aruco.dir/board.cpp.i

src/CMakeFiles/aruco.dir/board.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/aruco.dir/board.cpp.s"
	cd /home/pengju/15-463/final_proj/external/aruco-1.3.0/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/pengju/15-463/final_proj/external/aruco-1.3.0/src/board.cpp -o CMakeFiles/aruco.dir/board.cpp.s

src/CMakeFiles/aruco.dir/board.cpp.o.requires:
.PHONY : src/CMakeFiles/aruco.dir/board.cpp.o.requires

src/CMakeFiles/aruco.dir/board.cpp.o.provides: src/CMakeFiles/aruco.dir/board.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/aruco.dir/build.make src/CMakeFiles/aruco.dir/board.cpp.o.provides.build
.PHONY : src/CMakeFiles/aruco.dir/board.cpp.o.provides

src/CMakeFiles/aruco.dir/board.cpp.o.provides.build: src/CMakeFiles/aruco.dir/board.cpp.o

src/CMakeFiles/aruco.dir/cvdrawingutils.cpp.o: src/CMakeFiles/aruco.dir/flags.make
src/CMakeFiles/aruco.dir/cvdrawingutils.cpp.o: ../src/cvdrawingutils.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pengju/15-463/final_proj/external/aruco-1.3.0/build/CMakeFiles $(CMAKE_PROGRESS_10)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/aruco.dir/cvdrawingutils.cpp.o"
	cd /home/pengju/15-463/final_proj/external/aruco-1.3.0/build/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/aruco.dir/cvdrawingutils.cpp.o -c /home/pengju/15-463/final_proj/external/aruco-1.3.0/src/cvdrawingutils.cpp

src/CMakeFiles/aruco.dir/cvdrawingutils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/aruco.dir/cvdrawingutils.cpp.i"
	cd /home/pengju/15-463/final_proj/external/aruco-1.3.0/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/pengju/15-463/final_proj/external/aruco-1.3.0/src/cvdrawingutils.cpp > CMakeFiles/aruco.dir/cvdrawingutils.cpp.i

src/CMakeFiles/aruco.dir/cvdrawingutils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/aruco.dir/cvdrawingutils.cpp.s"
	cd /home/pengju/15-463/final_proj/external/aruco-1.3.0/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/pengju/15-463/final_proj/external/aruco-1.3.0/src/cvdrawingutils.cpp -o CMakeFiles/aruco.dir/cvdrawingutils.cpp.s

src/CMakeFiles/aruco.dir/cvdrawingutils.cpp.o.requires:
.PHONY : src/CMakeFiles/aruco.dir/cvdrawingutils.cpp.o.requires

src/CMakeFiles/aruco.dir/cvdrawingutils.cpp.o.provides: src/CMakeFiles/aruco.dir/cvdrawingutils.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/aruco.dir/build.make src/CMakeFiles/aruco.dir/cvdrawingutils.cpp.o.provides.build
.PHONY : src/CMakeFiles/aruco.dir/cvdrawingutils.cpp.o.provides

src/CMakeFiles/aruco.dir/cvdrawingutils.cpp.o.provides.build: src/CMakeFiles/aruco.dir/cvdrawingutils.cpp.o

src/CMakeFiles/aruco.dir/arucofidmarkers.cpp.o: src/CMakeFiles/aruco.dir/flags.make
src/CMakeFiles/aruco.dir/arucofidmarkers.cpp.o: ../src/arucofidmarkers.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pengju/15-463/final_proj/external/aruco-1.3.0/build/CMakeFiles $(CMAKE_PROGRESS_11)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/aruco.dir/arucofidmarkers.cpp.o"
	cd /home/pengju/15-463/final_proj/external/aruco-1.3.0/build/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/aruco.dir/arucofidmarkers.cpp.o -c /home/pengju/15-463/final_proj/external/aruco-1.3.0/src/arucofidmarkers.cpp

src/CMakeFiles/aruco.dir/arucofidmarkers.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/aruco.dir/arucofidmarkers.cpp.i"
	cd /home/pengju/15-463/final_proj/external/aruco-1.3.0/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/pengju/15-463/final_proj/external/aruco-1.3.0/src/arucofidmarkers.cpp > CMakeFiles/aruco.dir/arucofidmarkers.cpp.i

src/CMakeFiles/aruco.dir/arucofidmarkers.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/aruco.dir/arucofidmarkers.cpp.s"
	cd /home/pengju/15-463/final_proj/external/aruco-1.3.0/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/pengju/15-463/final_proj/external/aruco-1.3.0/src/arucofidmarkers.cpp -o CMakeFiles/aruco.dir/arucofidmarkers.cpp.s

src/CMakeFiles/aruco.dir/arucofidmarkers.cpp.o.requires:
.PHONY : src/CMakeFiles/aruco.dir/arucofidmarkers.cpp.o.requires

src/CMakeFiles/aruco.dir/arucofidmarkers.cpp.o.provides: src/CMakeFiles/aruco.dir/arucofidmarkers.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/aruco.dir/build.make src/CMakeFiles/aruco.dir/arucofidmarkers.cpp.o.provides.build
.PHONY : src/CMakeFiles/aruco.dir/arucofidmarkers.cpp.o.provides

src/CMakeFiles/aruco.dir/arucofidmarkers.cpp.o.provides.build: src/CMakeFiles/aruco.dir/arucofidmarkers.cpp.o

# Object files for target aruco
aruco_OBJECTS = \
"CMakeFiles/aruco.dir/highlyreliablemarkers.cpp.o" \
"CMakeFiles/aruco.dir/marker.cpp.o" \
"CMakeFiles/aruco.dir/boarddetector.cpp.o" \
"CMakeFiles/aruco.dir/markerdetector.cpp.o" \
"CMakeFiles/aruco.dir/ar_omp.cpp.o" \
"CMakeFiles/aruco.dir/subpixelcorner.cpp.o" \
"CMakeFiles/aruco.dir/cameraparameters.cpp.o" \
"CMakeFiles/aruco.dir/chromaticmask.cpp.o" \
"CMakeFiles/aruco.dir/board.cpp.o" \
"CMakeFiles/aruco.dir/cvdrawingutils.cpp.o" \
"CMakeFiles/aruco.dir/arucofidmarkers.cpp.o"

# External object files for target aruco
aruco_EXTERNAL_OBJECTS =

src/libaruco.so.1.3.0: src/CMakeFiles/aruco.dir/highlyreliablemarkers.cpp.o
src/libaruco.so.1.3.0: src/CMakeFiles/aruco.dir/marker.cpp.o
src/libaruco.so.1.3.0: src/CMakeFiles/aruco.dir/boarddetector.cpp.o
src/libaruco.so.1.3.0: src/CMakeFiles/aruco.dir/markerdetector.cpp.o
src/libaruco.so.1.3.0: src/CMakeFiles/aruco.dir/ar_omp.cpp.o
src/libaruco.so.1.3.0: src/CMakeFiles/aruco.dir/subpixelcorner.cpp.o
src/libaruco.so.1.3.0: src/CMakeFiles/aruco.dir/cameraparameters.cpp.o
src/libaruco.so.1.3.0: src/CMakeFiles/aruco.dir/chromaticmask.cpp.o
src/libaruco.so.1.3.0: src/CMakeFiles/aruco.dir/board.cpp.o
src/libaruco.so.1.3.0: src/CMakeFiles/aruco.dir/cvdrawingutils.cpp.o
src/libaruco.so.1.3.0: src/CMakeFiles/aruco.dir/arucofidmarkers.cpp.o
src/libaruco.so.1.3.0: src/CMakeFiles/aruco.dir/build.make
src/libaruco.so.1.3.0: /usr/local/lib/libopencv_core.a
src/libaruco.so.1.3.0: /usr/local/lib/libopencv_flann.a
src/libaruco.so.1.3.0: /usr/local/lib/libopencv_imgproc.a
src/libaruco.so.1.3.0: /usr/local/lib/libopencv_highgui.a
src/libaruco.so.1.3.0: /usr/local/lib/libopencv_features2d.a
src/libaruco.so.1.3.0: /usr/local/lib/libopencv_calib3d.a
src/libaruco.so.1.3.0: /usr/local/lib/libopencv_ml.a
src/libaruco.so.1.3.0: /usr/local/lib/libopencv_video.a
src/libaruco.so.1.3.0: /usr/local/lib/libopencv_legacy.a
src/libaruco.so.1.3.0: /usr/local/lib/libopencv_objdetect.a
src/libaruco.so.1.3.0: /usr/local/lib/libopencv_photo.a
src/libaruco.so.1.3.0: /usr/local/lib/libopencv_gpu.a
src/libaruco.so.1.3.0: /usr/local/lib/libopencv_videostab.a
src/libaruco.so.1.3.0: /usr/local/lib/libopencv_ts.a
src/libaruco.so.1.3.0: /usr/local/lib/libopencv_ocl.a
src/libaruco.so.1.3.0: /usr/local/lib/libopencv_superres.a
src/libaruco.so.1.3.0: /usr/local/lib/libopencv_nonfree.a
src/libaruco.so.1.3.0: /usr/local/lib/libopencv_stitching.a
src/libaruco.so.1.3.0: /usr/local/lib/libopencv_contrib.a
src/libaruco.so.1.3.0: /usr/local/lib/libopencv_nonfree.a
src/libaruco.so.1.3.0: /usr/local/lib/libopencv_gpu.a
src/libaruco.so.1.3.0: /usr/local/lib/libopencv_legacy.a
src/libaruco.so.1.3.0: /usr/local/lib/libopencv_photo.a
src/libaruco.so.1.3.0: /usr/local/lib/libopencv_ocl.a
src/libaruco.so.1.3.0: /usr/local/lib/libopencv_calib3d.a
src/libaruco.so.1.3.0: /usr/local/lib/libopencv_features2d.a
src/libaruco.so.1.3.0: /usr/local/lib/libopencv_flann.a
src/libaruco.so.1.3.0: /usr/local/lib/libopencv_ml.a
src/libaruco.so.1.3.0: /usr/local/lib/libopencv_video.a
src/libaruco.so.1.3.0: /usr/local/lib/libopencv_objdetect.a
src/libaruco.so.1.3.0: /usr/local/lib/libopencv_highgui.a
src/libaruco.so.1.3.0: /usr/local/lib/libopencv_imgproc.a
src/libaruco.so.1.3.0: /usr/local/lib/libopencv_core.a
src/libaruco.so.1.3.0: /usr/lib/x86_64-linux-gnu/libjpeg.so
src/libaruco.so.1.3.0: /usr/lib/x86_64-linux-gnu/libpng.so
src/libaruco.so.1.3.0: /usr/lib/x86_64-linux-gnu/libtiff.so
src/libaruco.so.1.3.0: /usr/lib/x86_64-linux-gnu/libjasper.so
src/libaruco.so.1.3.0: /usr/lib/x86_64-linux-gnu/libjpeg.so
src/libaruco.so.1.3.0: /usr/lib/x86_64-linux-gnu/libpng.so
src/libaruco.so.1.3.0: /usr/lib/x86_64-linux-gnu/libtiff.so
src/libaruco.so.1.3.0: /usr/lib/x86_64-linux-gnu/libjasper.so
src/libaruco.so.1.3.0: /usr/lib/x86_64-linux-gnu/libz.so
src/libaruco.so.1.3.0: /usr/lib/x86_64-linux-gnu/libImath.so
src/libaruco.so.1.3.0: /usr/lib/x86_64-linux-gnu/libIlmImf.so
src/libaruco.so.1.3.0: /usr/lib/x86_64-linux-gnu/libIex.so
src/libaruco.so.1.3.0: /usr/lib/x86_64-linux-gnu/libHalf.so
src/libaruco.so.1.3.0: /usr/lib/x86_64-linux-gnu/libIlmThread.so
src/libaruco.so.1.3.0: /usr/lib/x86_64-linux-gnu/libQtOpenGL.so
src/libaruco.so.1.3.0: /usr/lib/x86_64-linux-gnu/libQtGui.so
src/libaruco.so.1.3.0: /usr/lib/x86_64-linux-gnu/libQtTest.so
src/libaruco.so.1.3.0: /usr/lib/x86_64-linux-gnu/libQtCore.so
src/libaruco.so.1.3.0: /usr/lib/x86_64-linux-gnu/libGLU.so
src/libaruco.so.1.3.0: /usr/lib/x86_64-linux-gnu/libGL.so
src/libaruco.so.1.3.0: /usr/lib/x86_64-linux-gnu/libSM.so
src/libaruco.so.1.3.0: /usr/lib/x86_64-linux-gnu/libICE.so
src/libaruco.so.1.3.0: /usr/lib/x86_64-linux-gnu/libX11.so
src/libaruco.so.1.3.0: /usr/lib/x86_64-linux-gnu/libXext.so
src/libaruco.so.1.3.0: src/CMakeFiles/aruco.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library libaruco.so"
	cd /home/pengju/15-463/final_proj/external/aruco-1.3.0/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/aruco.dir/link.txt --verbose=$(VERBOSE)
	cd /home/pengju/15-463/final_proj/external/aruco-1.3.0/build/src && $(CMAKE_COMMAND) -E cmake_symlink_library libaruco.so.1.3.0 libaruco.so.1.3 libaruco.so

src/libaruco.so.1.3: src/libaruco.so.1.3.0

src/libaruco.so: src/libaruco.so.1.3.0

# Rule to build all files generated by this target.
src/CMakeFiles/aruco.dir/build: src/libaruco.so
.PHONY : src/CMakeFiles/aruco.dir/build

src/CMakeFiles/aruco.dir/requires: src/CMakeFiles/aruco.dir/highlyreliablemarkers.cpp.o.requires
src/CMakeFiles/aruco.dir/requires: src/CMakeFiles/aruco.dir/marker.cpp.o.requires
src/CMakeFiles/aruco.dir/requires: src/CMakeFiles/aruco.dir/boarddetector.cpp.o.requires
src/CMakeFiles/aruco.dir/requires: src/CMakeFiles/aruco.dir/markerdetector.cpp.o.requires
src/CMakeFiles/aruco.dir/requires: src/CMakeFiles/aruco.dir/ar_omp.cpp.o.requires
src/CMakeFiles/aruco.dir/requires: src/CMakeFiles/aruco.dir/subpixelcorner.cpp.o.requires
src/CMakeFiles/aruco.dir/requires: src/CMakeFiles/aruco.dir/cameraparameters.cpp.o.requires
src/CMakeFiles/aruco.dir/requires: src/CMakeFiles/aruco.dir/chromaticmask.cpp.o.requires
src/CMakeFiles/aruco.dir/requires: src/CMakeFiles/aruco.dir/board.cpp.o.requires
src/CMakeFiles/aruco.dir/requires: src/CMakeFiles/aruco.dir/cvdrawingutils.cpp.o.requires
src/CMakeFiles/aruco.dir/requires: src/CMakeFiles/aruco.dir/arucofidmarkers.cpp.o.requires
.PHONY : src/CMakeFiles/aruco.dir/requires

src/CMakeFiles/aruco.dir/clean:
	cd /home/pengju/15-463/final_proj/external/aruco-1.3.0/build/src && $(CMAKE_COMMAND) -P CMakeFiles/aruco.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/aruco.dir/clean

src/CMakeFiles/aruco.dir/depend:
	cd /home/pengju/15-463/final_proj/external/aruco-1.3.0/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pengju/15-463/final_proj/external/aruco-1.3.0 /home/pengju/15-463/final_proj/external/aruco-1.3.0/src /home/pengju/15-463/final_proj/external/aruco-1.3.0/build /home/pengju/15-463/final_proj/external/aruco-1.3.0/build/src /home/pengju/15-463/final_proj/external/aruco-1.3.0/build/src/CMakeFiles/aruco.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/aruco.dir/depend

