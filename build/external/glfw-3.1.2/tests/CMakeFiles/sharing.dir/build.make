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
include external/glfw-3.1.2/tests/CMakeFiles/sharing.dir/depend.make

# Include the progress variables for this target.
include external/glfw-3.1.2/tests/CMakeFiles/sharing.dir/progress.make

# Include the compile flags for this target's objects.
include external/glfw-3.1.2/tests/CMakeFiles/sharing.dir/flags.make

external/glfw-3.1.2/tests/CMakeFiles/sharing.dir/sharing.c.o: external/glfw-3.1.2/tests/CMakeFiles/sharing.dir/flags.make
external/glfw-3.1.2/tests/CMakeFiles/sharing.dir/sharing.c.o: ../external/glfw-3.1.2/tests/sharing.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pengju/15-463/final_proj/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object external/glfw-3.1.2/tests/CMakeFiles/sharing.dir/sharing.c.o"
	cd /home/pengju/15-463/final_proj/build/external/glfw-3.1.2/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/sharing.dir/sharing.c.o   -c /home/pengju/15-463/final_proj/external/glfw-3.1.2/tests/sharing.c

external/glfw-3.1.2/tests/CMakeFiles/sharing.dir/sharing.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sharing.dir/sharing.c.i"
	cd /home/pengju/15-463/final_proj/build/external/glfw-3.1.2/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/pengju/15-463/final_proj/external/glfw-3.1.2/tests/sharing.c > CMakeFiles/sharing.dir/sharing.c.i

external/glfw-3.1.2/tests/CMakeFiles/sharing.dir/sharing.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sharing.dir/sharing.c.s"
	cd /home/pengju/15-463/final_proj/build/external/glfw-3.1.2/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/pengju/15-463/final_proj/external/glfw-3.1.2/tests/sharing.c -o CMakeFiles/sharing.dir/sharing.c.s

external/glfw-3.1.2/tests/CMakeFiles/sharing.dir/sharing.c.o.requires:
.PHONY : external/glfw-3.1.2/tests/CMakeFiles/sharing.dir/sharing.c.o.requires

external/glfw-3.1.2/tests/CMakeFiles/sharing.dir/sharing.c.o.provides: external/glfw-3.1.2/tests/CMakeFiles/sharing.dir/sharing.c.o.requires
	$(MAKE) -f external/glfw-3.1.2/tests/CMakeFiles/sharing.dir/build.make external/glfw-3.1.2/tests/CMakeFiles/sharing.dir/sharing.c.o.provides.build
.PHONY : external/glfw-3.1.2/tests/CMakeFiles/sharing.dir/sharing.c.o.provides

external/glfw-3.1.2/tests/CMakeFiles/sharing.dir/sharing.c.o.provides.build: external/glfw-3.1.2/tests/CMakeFiles/sharing.dir/sharing.c.o

# Object files for target sharing
sharing_OBJECTS = \
"CMakeFiles/sharing.dir/sharing.c.o"

# External object files for target sharing
sharing_EXTERNAL_OBJECTS =

bin/sharing: external/glfw-3.1.2/tests/CMakeFiles/sharing.dir/sharing.c.o
bin/sharing: external/glfw-3.1.2/tests/CMakeFiles/sharing.dir/build.make
bin/sharing: external/glfw-3.1.2/src/libglfw3.a
bin/sharing: /usr/lib/x86_64-linux-gnu/librt.so
bin/sharing: /usr/lib/x86_64-linux-gnu/libm.so
bin/sharing: /usr/lib/x86_64-linux-gnu/libX11.so
bin/sharing: /usr/lib/x86_64-linux-gnu/libXrandr.so
bin/sharing: /usr/lib/x86_64-linux-gnu/libXinerama.so
bin/sharing: /usr/lib/x86_64-linux-gnu/libXi.so
bin/sharing: /usr/lib/x86_64-linux-gnu/libXxf86vm.so
bin/sharing: /usr/lib/x86_64-linux-gnu/libXcursor.so
bin/sharing: /usr/lib/x86_64-linux-gnu/libGL.so
bin/sharing: external/glfw-3.1.2/tests/CMakeFiles/sharing.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable ../../../bin/sharing"
	cd /home/pengju/15-463/final_proj/build/external/glfw-3.1.2/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sharing.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
external/glfw-3.1.2/tests/CMakeFiles/sharing.dir/build: bin/sharing
.PHONY : external/glfw-3.1.2/tests/CMakeFiles/sharing.dir/build

external/glfw-3.1.2/tests/CMakeFiles/sharing.dir/requires: external/glfw-3.1.2/tests/CMakeFiles/sharing.dir/sharing.c.o.requires
.PHONY : external/glfw-3.1.2/tests/CMakeFiles/sharing.dir/requires

external/glfw-3.1.2/tests/CMakeFiles/sharing.dir/clean:
	cd /home/pengju/15-463/final_proj/build/external/glfw-3.1.2/tests && $(CMAKE_COMMAND) -P CMakeFiles/sharing.dir/cmake_clean.cmake
.PHONY : external/glfw-3.1.2/tests/CMakeFiles/sharing.dir/clean

external/glfw-3.1.2/tests/CMakeFiles/sharing.dir/depend:
	cd /home/pengju/15-463/final_proj/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pengju/15-463/final_proj /home/pengju/15-463/final_proj/external/glfw-3.1.2/tests /home/pengju/15-463/final_proj/build /home/pengju/15-463/final_proj/build/external/glfw-3.1.2/tests /home/pengju/15-463/final_proj/build/external/glfw-3.1.2/tests/CMakeFiles/sharing.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : external/glfw-3.1.2/tests/CMakeFiles/sharing.dir/depend

