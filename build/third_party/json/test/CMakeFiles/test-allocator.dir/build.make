# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_SOURCE_DIR = /home/ubuntu/arvi_34/elf/arvi_elf

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu/arvi_34/elf/arvi_elf/build

# Include any dependencies generated for this target.
include third_party/json/test/CMakeFiles/test-allocator.dir/depend.make

# Include the progress variables for this target.
include third_party/json/test/CMakeFiles/test-allocator.dir/progress.make

# Include the compile flags for this target's objects.
include third_party/json/test/CMakeFiles/test-allocator.dir/flags.make

third_party/json/test/CMakeFiles/test-allocator.dir/src/unit-allocator.cpp.o: third_party/json/test/CMakeFiles/test-allocator.dir/flags.make
third_party/json/test/CMakeFiles/test-allocator.dir/src/unit-allocator.cpp.o: ../third_party/json/test/src/unit-allocator.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/arvi_34/elf/arvi_elf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object third_party/json/test/CMakeFiles/test-allocator.dir/src/unit-allocator.cpp.o"
	cd /home/ubuntu/arvi_34/elf/arvi_elf/build/third_party/json/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test-allocator.dir/src/unit-allocator.cpp.o -c /home/ubuntu/arvi_34/elf/arvi_elf/third_party/json/test/src/unit-allocator.cpp

third_party/json/test/CMakeFiles/test-allocator.dir/src/unit-allocator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test-allocator.dir/src/unit-allocator.cpp.i"
	cd /home/ubuntu/arvi_34/elf/arvi_elf/build/third_party/json/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/arvi_34/elf/arvi_elf/third_party/json/test/src/unit-allocator.cpp > CMakeFiles/test-allocator.dir/src/unit-allocator.cpp.i

third_party/json/test/CMakeFiles/test-allocator.dir/src/unit-allocator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test-allocator.dir/src/unit-allocator.cpp.s"
	cd /home/ubuntu/arvi_34/elf/arvi_elf/build/third_party/json/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/arvi_34/elf/arvi_elf/third_party/json/test/src/unit-allocator.cpp -o CMakeFiles/test-allocator.dir/src/unit-allocator.cpp.s

# Object files for target test-allocator
test__allocator_OBJECTS = \
"CMakeFiles/test-allocator.dir/src/unit-allocator.cpp.o"

# External object files for target test-allocator
test__allocator_EXTERNAL_OBJECTS = \
"/home/ubuntu/arvi_34/elf/arvi_elf/build/third_party/json/test/CMakeFiles/doctest_main.dir/src/unit.cpp.o"

third_party/json/test/test-allocator: third_party/json/test/CMakeFiles/test-allocator.dir/src/unit-allocator.cpp.o
third_party/json/test/test-allocator: third_party/json/test/CMakeFiles/doctest_main.dir/src/unit.cpp.o
third_party/json/test/test-allocator: third_party/json/test/CMakeFiles/test-allocator.dir/build.make
third_party/json/test/test-allocator: third_party/json/test/CMakeFiles/test-allocator.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ubuntu/arvi_34/elf/arvi_elf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test-allocator"
	cd /home/ubuntu/arvi_34/elf/arvi_elf/build/third_party/json/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test-allocator.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
third_party/json/test/CMakeFiles/test-allocator.dir/build: third_party/json/test/test-allocator

.PHONY : third_party/json/test/CMakeFiles/test-allocator.dir/build

third_party/json/test/CMakeFiles/test-allocator.dir/clean:
	cd /home/ubuntu/arvi_34/elf/arvi_elf/build/third_party/json/test && $(CMAKE_COMMAND) -P CMakeFiles/test-allocator.dir/cmake_clean.cmake
.PHONY : third_party/json/test/CMakeFiles/test-allocator.dir/clean

third_party/json/test/CMakeFiles/test-allocator.dir/depend:
	cd /home/ubuntu/arvi_34/elf/arvi_elf/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/arvi_34/elf/arvi_elf /home/ubuntu/arvi_34/elf/arvi_elf/third_party/json/test /home/ubuntu/arvi_34/elf/arvi_elf/build /home/ubuntu/arvi_34/elf/arvi_elf/build/third_party/json/test /home/ubuntu/arvi_34/elf/arvi_elf/build/third_party/json/test/CMakeFiles/test-allocator.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : third_party/json/test/CMakeFiles/test-allocator.dir/depend

