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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/nbboy/projects/cpp/rethinkc/snowflake

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/nbboy/projects/cpp/rethinkc/snowflake/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/snowflake.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/snowflake.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/snowflake.dir/flags.make

CMakeFiles/snowflake.dir/main.c.o: CMakeFiles/snowflake.dir/flags.make
CMakeFiles/snowflake.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/nbboy/projects/cpp/rethinkc/snowflake/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/snowflake.dir/main.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/snowflake.dir/main.c.o   -c /Users/nbboy/projects/cpp/rethinkc/snowflake/main.c

CMakeFiles/snowflake.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/snowflake.dir/main.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/nbboy/projects/cpp/rethinkc/snowflake/main.c > CMakeFiles/snowflake.dir/main.c.i

CMakeFiles/snowflake.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/snowflake.dir/main.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/nbboy/projects/cpp/rethinkc/snowflake/main.c -o CMakeFiles/snowflake.dir/main.c.s

CMakeFiles/snowflake.dir/snowflake.c.o: CMakeFiles/snowflake.dir/flags.make
CMakeFiles/snowflake.dir/snowflake.c.o: ../snowflake.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/nbboy/projects/cpp/rethinkc/snowflake/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/snowflake.dir/snowflake.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/snowflake.dir/snowflake.c.o   -c /Users/nbboy/projects/cpp/rethinkc/snowflake/snowflake.c

CMakeFiles/snowflake.dir/snowflake.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/snowflake.dir/snowflake.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/nbboy/projects/cpp/rethinkc/snowflake/snowflake.c > CMakeFiles/snowflake.dir/snowflake.c.i

CMakeFiles/snowflake.dir/snowflake.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/snowflake.dir/snowflake.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/nbboy/projects/cpp/rethinkc/snowflake/snowflake.c -o CMakeFiles/snowflake.dir/snowflake.c.s

# Object files for target snowflake
snowflake_OBJECTS = \
"CMakeFiles/snowflake.dir/main.c.o" \
"CMakeFiles/snowflake.dir/snowflake.c.o"

# External object files for target snowflake
snowflake_EXTERNAL_OBJECTS =

snowflake: CMakeFiles/snowflake.dir/main.c.o
snowflake: CMakeFiles/snowflake.dir/snowflake.c.o
snowflake: CMakeFiles/snowflake.dir/build.make
snowflake: CMakeFiles/snowflake.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/nbboy/projects/cpp/rethinkc/snowflake/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable snowflake"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/snowflake.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/snowflake.dir/build: snowflake

.PHONY : CMakeFiles/snowflake.dir/build

CMakeFiles/snowflake.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/snowflake.dir/cmake_clean.cmake
.PHONY : CMakeFiles/snowflake.dir/clean

CMakeFiles/snowflake.dir/depend:
	cd /Users/nbboy/projects/cpp/rethinkc/snowflake/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/nbboy/projects/cpp/rethinkc/snowflake /Users/nbboy/projects/cpp/rethinkc/snowflake /Users/nbboy/projects/cpp/rethinkc/snowflake/cmake-build-debug /Users/nbboy/projects/cpp/rethinkc/snowflake/cmake-build-debug /Users/nbboy/projects/cpp/rethinkc/snowflake/cmake-build-debug/CMakeFiles/snowflake.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/snowflake.dir/depend

