# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.4

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/HiTest

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/HiTest/build

# Include any dependencies generated for this target.
include Test/CMakeFiles/test.dir/depend.make

# Include the progress variables for this target.
include Test/CMakeFiles/test.dir/progress.make

# Include the compile flags for this target's objects.
include Test/CMakeFiles/test.dir/flags.make

Test/CMakeFiles/test.dir/Test.cpp.o: Test/CMakeFiles/test.dir/flags.make
Test/CMakeFiles/test.dir/Test.cpp.o: ../Test/Test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/HiTest/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Test/CMakeFiles/test.dir/Test.cpp.o"
	cd /home/HiTest/build/Test && /usr/local/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test.dir/Test.cpp.o -c /home/HiTest/Test/Test.cpp

Test/CMakeFiles/test.dir/Test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test.dir/Test.cpp.i"
	cd /home/HiTest/build/Test && /usr/local/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/HiTest/Test/Test.cpp > CMakeFiles/test.dir/Test.cpp.i

Test/CMakeFiles/test.dir/Test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test.dir/Test.cpp.s"
	cd /home/HiTest/build/Test && /usr/local/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/HiTest/Test/Test.cpp -o CMakeFiles/test.dir/Test.cpp.s

Test/CMakeFiles/test.dir/Test.cpp.o.requires:

.PHONY : Test/CMakeFiles/test.dir/Test.cpp.o.requires

Test/CMakeFiles/test.dir/Test.cpp.o.provides: Test/CMakeFiles/test.dir/Test.cpp.o.requires
	$(MAKE) -f Test/CMakeFiles/test.dir/build.make Test/CMakeFiles/test.dir/Test.cpp.o.provides.build
.PHONY : Test/CMakeFiles/test.dir/Test.cpp.o.provides

Test/CMakeFiles/test.dir/Test.cpp.o.provides.build: Test/CMakeFiles/test.dir/Test.cpp.o


# Object files for target test
test_OBJECTS = \
"CMakeFiles/test.dir/Test.cpp.o"

# External object files for target test
test_EXTERNAL_OBJECTS =

Test/test: Test/CMakeFiles/test.dir/Test.cpp.o
Test/test: Test/CMakeFiles/test.dir/build.make
Test/test: Test/CMakeFiles/test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/HiTest/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test"
	cd /home/HiTest/build/Test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Test/CMakeFiles/test.dir/build: Test/test

.PHONY : Test/CMakeFiles/test.dir/build

Test/CMakeFiles/test.dir/requires: Test/CMakeFiles/test.dir/Test.cpp.o.requires

.PHONY : Test/CMakeFiles/test.dir/requires

Test/CMakeFiles/test.dir/clean:
	cd /home/HiTest/build/Test && $(CMAKE_COMMAND) -P CMakeFiles/test.dir/cmake_clean.cmake
.PHONY : Test/CMakeFiles/test.dir/clean

Test/CMakeFiles/test.dir/depend:
	cd /home/HiTest/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/HiTest /home/HiTest/Test /home/HiTest/build /home/HiTest/build/Test /home/HiTest/build/Test/CMakeFiles/test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Test/CMakeFiles/test.dir/depend

