# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_SOURCE_DIR = /home/hopson/Documents/programming/cpp/basic3

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hopson/Documents/programming/cpp/basic3/build/release

# Include any dependencies generated for this target.
include deps/nuklear/CMakeFiles/nuklear.dir/depend.make

# Include the progress variables for this target.
include deps/nuklear/CMakeFiles/nuklear.dir/progress.make

# Include the compile flags for this target's objects.
include deps/nuklear/CMakeFiles/nuklear.dir/flags.make

deps/nuklear/CMakeFiles/nuklear.dir/nuklear_sfml_gl3.cpp.o: deps/nuklear/CMakeFiles/nuklear.dir/flags.make
deps/nuklear/CMakeFiles/nuklear.dir/nuklear_sfml_gl3.cpp.o: ../../deps/nuklear/nuklear_sfml_gl3.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hopson/Documents/programming/cpp/basic3/build/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object deps/nuklear/CMakeFiles/nuklear.dir/nuklear_sfml_gl3.cpp.o"
	cd /home/hopson/Documents/programming/cpp/basic3/build/release/deps/nuklear && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/nuklear.dir/nuklear_sfml_gl3.cpp.o -c /home/hopson/Documents/programming/cpp/basic3/deps/nuklear/nuklear_sfml_gl3.cpp

deps/nuklear/CMakeFiles/nuklear.dir/nuklear_sfml_gl3.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/nuklear.dir/nuklear_sfml_gl3.cpp.i"
	cd /home/hopson/Documents/programming/cpp/basic3/build/release/deps/nuklear && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hopson/Documents/programming/cpp/basic3/deps/nuklear/nuklear_sfml_gl3.cpp > CMakeFiles/nuklear.dir/nuklear_sfml_gl3.cpp.i

deps/nuklear/CMakeFiles/nuklear.dir/nuklear_sfml_gl3.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/nuklear.dir/nuklear_sfml_gl3.cpp.s"
	cd /home/hopson/Documents/programming/cpp/basic3/build/release/deps/nuklear && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hopson/Documents/programming/cpp/basic3/deps/nuklear/nuklear_sfml_gl3.cpp -o CMakeFiles/nuklear.dir/nuklear_sfml_gl3.cpp.s

deps/nuklear/CMakeFiles/nuklear.dir/demos.cpp.o: deps/nuklear/CMakeFiles/nuklear.dir/flags.make
deps/nuklear/CMakeFiles/nuklear.dir/demos.cpp.o: ../../deps/nuklear/demos.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hopson/Documents/programming/cpp/basic3/build/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object deps/nuklear/CMakeFiles/nuklear.dir/demos.cpp.o"
	cd /home/hopson/Documents/programming/cpp/basic3/build/release/deps/nuklear && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/nuklear.dir/demos.cpp.o -c /home/hopson/Documents/programming/cpp/basic3/deps/nuklear/demos.cpp

deps/nuklear/CMakeFiles/nuklear.dir/demos.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/nuklear.dir/demos.cpp.i"
	cd /home/hopson/Documents/programming/cpp/basic3/build/release/deps/nuklear && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hopson/Documents/programming/cpp/basic3/deps/nuklear/demos.cpp > CMakeFiles/nuklear.dir/demos.cpp.i

deps/nuklear/CMakeFiles/nuklear.dir/demos.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/nuklear.dir/demos.cpp.s"
	cd /home/hopson/Documents/programming/cpp/basic3/build/release/deps/nuklear && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hopson/Documents/programming/cpp/basic3/deps/nuklear/demos.cpp -o CMakeFiles/nuklear.dir/demos.cpp.s

deps/nuklear/CMakeFiles/nuklear.dir/nuklear_impl.c.o: deps/nuklear/CMakeFiles/nuklear.dir/flags.make
deps/nuklear/CMakeFiles/nuklear.dir/nuklear_impl.c.o: ../../deps/nuklear/nuklear_impl.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hopson/Documents/programming/cpp/basic3/build/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object deps/nuklear/CMakeFiles/nuklear.dir/nuklear_impl.c.o"
	cd /home/hopson/Documents/programming/cpp/basic3/build/release/deps/nuklear && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/nuklear.dir/nuklear_impl.c.o   -c /home/hopson/Documents/programming/cpp/basic3/deps/nuklear/nuklear_impl.c

deps/nuklear/CMakeFiles/nuklear.dir/nuklear_impl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/nuklear.dir/nuklear_impl.c.i"
	cd /home/hopson/Documents/programming/cpp/basic3/build/release/deps/nuklear && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hopson/Documents/programming/cpp/basic3/deps/nuklear/nuklear_impl.c > CMakeFiles/nuklear.dir/nuklear_impl.c.i

deps/nuklear/CMakeFiles/nuklear.dir/nuklear_impl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/nuklear.dir/nuklear_impl.c.s"
	cd /home/hopson/Documents/programming/cpp/basic3/build/release/deps/nuklear && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hopson/Documents/programming/cpp/basic3/deps/nuklear/nuklear_impl.c -o CMakeFiles/nuklear.dir/nuklear_impl.c.s

# Object files for target nuklear
nuklear_OBJECTS = \
"CMakeFiles/nuklear.dir/nuklear_sfml_gl3.cpp.o" \
"CMakeFiles/nuklear.dir/demos.cpp.o" \
"CMakeFiles/nuklear.dir/nuklear_impl.c.o"

# External object files for target nuklear
nuklear_EXTERNAL_OBJECTS =

lib/libnuklear.a: deps/nuklear/CMakeFiles/nuklear.dir/nuklear_sfml_gl3.cpp.o
lib/libnuklear.a: deps/nuklear/CMakeFiles/nuklear.dir/demos.cpp.o
lib/libnuklear.a: deps/nuklear/CMakeFiles/nuklear.dir/nuklear_impl.c.o
lib/libnuklear.a: deps/nuklear/CMakeFiles/nuklear.dir/build.make
lib/libnuklear.a: deps/nuklear/CMakeFiles/nuklear.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hopson/Documents/programming/cpp/basic3/build/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX static library ../../lib/libnuklear.a"
	cd /home/hopson/Documents/programming/cpp/basic3/build/release/deps/nuklear && $(CMAKE_COMMAND) -P CMakeFiles/nuklear.dir/cmake_clean_target.cmake
	cd /home/hopson/Documents/programming/cpp/basic3/build/release/deps/nuklear && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/nuklear.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
deps/nuklear/CMakeFiles/nuklear.dir/build: lib/libnuklear.a

.PHONY : deps/nuklear/CMakeFiles/nuklear.dir/build

deps/nuklear/CMakeFiles/nuklear.dir/clean:
	cd /home/hopson/Documents/programming/cpp/basic3/build/release/deps/nuklear && $(CMAKE_COMMAND) -P CMakeFiles/nuklear.dir/cmake_clean.cmake
.PHONY : deps/nuklear/CMakeFiles/nuklear.dir/clean

deps/nuklear/CMakeFiles/nuklear.dir/depend:
	cd /home/hopson/Documents/programming/cpp/basic3/build/release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hopson/Documents/programming/cpp/basic3 /home/hopson/Documents/programming/cpp/basic3/deps/nuklear /home/hopson/Documents/programming/cpp/basic3/build/release /home/hopson/Documents/programming/cpp/basic3/build/release/deps/nuklear /home/hopson/Documents/programming/cpp/basic3/build/release/deps/nuklear/CMakeFiles/nuklear.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : deps/nuklear/CMakeFiles/nuklear.dir/depend

