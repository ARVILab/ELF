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

# Utility rule file for NightlyConfigure.

# Include the progress variables for this target.
include third_party/json/CMakeFiles/NightlyConfigure.dir/progress.make

third_party/json/CMakeFiles/NightlyConfigure:
	cd /home/ubuntu/arvi_34/elf/arvi_elf/build/third_party/json && /usr/local/bin/ctest -D NightlyConfigure

NightlyConfigure: third_party/json/CMakeFiles/NightlyConfigure
NightlyConfigure: third_party/json/CMakeFiles/NightlyConfigure.dir/build.make

.PHONY : NightlyConfigure

# Rule to build all files generated by this target.
third_party/json/CMakeFiles/NightlyConfigure.dir/build: NightlyConfigure

.PHONY : third_party/json/CMakeFiles/NightlyConfigure.dir/build

third_party/json/CMakeFiles/NightlyConfigure.dir/clean:
	cd /home/ubuntu/arvi_34/elf/arvi_elf/build/third_party/json && $(CMAKE_COMMAND) -P CMakeFiles/NightlyConfigure.dir/cmake_clean.cmake
.PHONY : third_party/json/CMakeFiles/NightlyConfigure.dir/clean

third_party/json/CMakeFiles/NightlyConfigure.dir/depend:
	cd /home/ubuntu/arvi_34/elf/arvi_elf/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/arvi_34/elf/arvi_elf /home/ubuntu/arvi_34/elf/arvi_elf/third_party/json /home/ubuntu/arvi_34/elf/arvi_elf/build /home/ubuntu/arvi_34/elf/arvi_elf/build/third_party/json /home/ubuntu/arvi_34/elf/arvi_elf/build/third_party/json/CMakeFiles/NightlyConfigure.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : third_party/json/CMakeFiles/NightlyConfigure.dir/depend

