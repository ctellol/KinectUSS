# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/gabriel/Proyects/libfreenect2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/gabriel/Proyects/libfreenect2/build

# Include any dependencies generated for this target.
include examples/CMakeFiles/Protonect.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include examples/CMakeFiles/Protonect.dir/compiler_depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/Protonect.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/Protonect.dir/flags.make

examples/CMakeFiles/Protonect.dir/Protonect.cpp.o: examples/CMakeFiles/Protonect.dir/flags.make
examples/CMakeFiles/Protonect.dir/Protonect.cpp.o: /home/gabriel/Proyects/libfreenect2/examples/Protonect.cpp
examples/CMakeFiles/Protonect.dir/Protonect.cpp.o: examples/CMakeFiles/Protonect.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/gabriel/Proyects/libfreenect2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/CMakeFiles/Protonect.dir/Protonect.cpp.o"
	cd /home/gabriel/Proyects/libfreenect2/build/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT examples/CMakeFiles/Protonect.dir/Protonect.cpp.o -MF CMakeFiles/Protonect.dir/Protonect.cpp.o.d -o CMakeFiles/Protonect.dir/Protonect.cpp.o -c /home/gabriel/Proyects/libfreenect2/examples/Protonect.cpp

examples/CMakeFiles/Protonect.dir/Protonect.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Protonect.dir/Protonect.cpp.i"
	cd /home/gabriel/Proyects/libfreenect2/build/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gabriel/Proyects/libfreenect2/examples/Protonect.cpp > CMakeFiles/Protonect.dir/Protonect.cpp.i

examples/CMakeFiles/Protonect.dir/Protonect.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Protonect.dir/Protonect.cpp.s"
	cd /home/gabriel/Proyects/libfreenect2/build/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gabriel/Proyects/libfreenect2/examples/Protonect.cpp -o CMakeFiles/Protonect.dir/Protonect.cpp.s

examples/CMakeFiles/Protonect.dir/viewer.cpp.o: examples/CMakeFiles/Protonect.dir/flags.make
examples/CMakeFiles/Protonect.dir/viewer.cpp.o: /home/gabriel/Proyects/libfreenect2/examples/viewer.cpp
examples/CMakeFiles/Protonect.dir/viewer.cpp.o: examples/CMakeFiles/Protonect.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/gabriel/Proyects/libfreenect2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object examples/CMakeFiles/Protonect.dir/viewer.cpp.o"
	cd /home/gabriel/Proyects/libfreenect2/build/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT examples/CMakeFiles/Protonect.dir/viewer.cpp.o -MF CMakeFiles/Protonect.dir/viewer.cpp.o.d -o CMakeFiles/Protonect.dir/viewer.cpp.o -c /home/gabriel/Proyects/libfreenect2/examples/viewer.cpp

examples/CMakeFiles/Protonect.dir/viewer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Protonect.dir/viewer.cpp.i"
	cd /home/gabriel/Proyects/libfreenect2/build/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gabriel/Proyects/libfreenect2/examples/viewer.cpp > CMakeFiles/Protonect.dir/viewer.cpp.i

examples/CMakeFiles/Protonect.dir/viewer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Protonect.dir/viewer.cpp.s"
	cd /home/gabriel/Proyects/libfreenect2/build/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gabriel/Proyects/libfreenect2/examples/viewer.cpp -o CMakeFiles/Protonect.dir/viewer.cpp.s

examples/CMakeFiles/Protonect.dir/__/src/flextGL.cpp.o: examples/CMakeFiles/Protonect.dir/flags.make
examples/CMakeFiles/Protonect.dir/__/src/flextGL.cpp.o: /home/gabriel/Proyects/libfreenect2/src/flextGL.cpp
examples/CMakeFiles/Protonect.dir/__/src/flextGL.cpp.o: examples/CMakeFiles/Protonect.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/gabriel/Proyects/libfreenect2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object examples/CMakeFiles/Protonect.dir/__/src/flextGL.cpp.o"
	cd /home/gabriel/Proyects/libfreenect2/build/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT examples/CMakeFiles/Protonect.dir/__/src/flextGL.cpp.o -MF CMakeFiles/Protonect.dir/__/src/flextGL.cpp.o.d -o CMakeFiles/Protonect.dir/__/src/flextGL.cpp.o -c /home/gabriel/Proyects/libfreenect2/src/flextGL.cpp

examples/CMakeFiles/Protonect.dir/__/src/flextGL.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Protonect.dir/__/src/flextGL.cpp.i"
	cd /home/gabriel/Proyects/libfreenect2/build/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gabriel/Proyects/libfreenect2/src/flextGL.cpp > CMakeFiles/Protonect.dir/__/src/flextGL.cpp.i

examples/CMakeFiles/Protonect.dir/__/src/flextGL.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Protonect.dir/__/src/flextGL.cpp.s"
	cd /home/gabriel/Proyects/libfreenect2/build/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gabriel/Proyects/libfreenect2/src/flextGL.cpp -o CMakeFiles/Protonect.dir/__/src/flextGL.cpp.s

# Object files for target Protonect
Protonect_OBJECTS = \
"CMakeFiles/Protonect.dir/Protonect.cpp.o" \
"CMakeFiles/Protonect.dir/viewer.cpp.o" \
"CMakeFiles/Protonect.dir/__/src/flextGL.cpp.o"

# External object files for target Protonect
Protonect_EXTERNAL_OBJECTS =

bin/Protonect: examples/CMakeFiles/Protonect.dir/Protonect.cpp.o
bin/Protonect: examples/CMakeFiles/Protonect.dir/viewer.cpp.o
bin/Protonect: examples/CMakeFiles/Protonect.dir/__/src/flextGL.cpp.o
bin/Protonect: examples/CMakeFiles/Protonect.dir/build.make
bin/Protonect: lib/libfreenect2.so.0.2.0
bin/Protonect: /usr/lib/libglfw.so
bin/Protonect: /usr/lib/libGL.so
bin/Protonect: /usr/lib/libusb-1.0.so
bin/Protonect: /usr/lib/libjpeg.so
bin/Protonect: /usr/lib/libturbojpeg.so.0
bin/Protonect: /usr/lib/libglfw.so
bin/Protonect: /usr/lib/libGL.so
bin/Protonect: examples/CMakeFiles/Protonect.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/gabriel/Proyects/libfreenect2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable ../bin/Protonect"
	cd /home/gabriel/Proyects/libfreenect2/build/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Protonect.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/Protonect.dir/build: bin/Protonect
.PHONY : examples/CMakeFiles/Protonect.dir/build

examples/CMakeFiles/Protonect.dir/clean:
	cd /home/gabriel/Proyects/libfreenect2/build/examples && $(CMAKE_COMMAND) -P CMakeFiles/Protonect.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/Protonect.dir/clean

examples/CMakeFiles/Protonect.dir/depend:
	cd /home/gabriel/Proyects/libfreenect2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gabriel/Proyects/libfreenect2 /home/gabriel/Proyects/libfreenect2/examples /home/gabriel/Proyects/libfreenect2/build /home/gabriel/Proyects/libfreenect2/build/examples /home/gabriel/Proyects/libfreenect2/build/examples/CMakeFiles/Protonect.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : examples/CMakeFiles/Protonect.dir/depend

