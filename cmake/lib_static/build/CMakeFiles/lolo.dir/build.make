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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/stocks/develop/liblolo/cmake/static

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/stocks/develop/liblolo/cmake/static/build

# Include any dependencies generated for this target.
include CMakeFiles/lolo.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/lolo.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/lolo.dir/flags.make

CMakeFiles/lolo.dir/home/stocks/develop/liblolo/lolo.c.o: CMakeFiles/lolo.dir/flags.make
CMakeFiles/lolo.dir/home/stocks/develop/liblolo/lolo.c.o: /home/stocks/develop/liblolo/lolo.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/stocks/develop/liblolo/cmake/static/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/lolo.dir/home/stocks/develop/liblolo/lolo.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lolo.dir/home/stocks/develop/liblolo/lolo.c.o   -c /home/stocks/develop/liblolo/lolo.c

CMakeFiles/lolo.dir/home/stocks/develop/liblolo/lolo.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lolo.dir/home/stocks/develop/liblolo/lolo.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/stocks/develop/liblolo/lolo.c > CMakeFiles/lolo.dir/home/stocks/develop/liblolo/lolo.c.i

CMakeFiles/lolo.dir/home/stocks/develop/liblolo/lolo.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lolo.dir/home/stocks/develop/liblolo/lolo.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/stocks/develop/liblolo/lolo.c -o CMakeFiles/lolo.dir/home/stocks/develop/liblolo/lolo.c.s

# Object files for target lolo
lolo_OBJECTS = \
"CMakeFiles/lolo.dir/home/stocks/develop/liblolo/lolo.c.o"

# External object files for target lolo
lolo_EXTERNAL_OBJECTS =

lib/liblolo.a: CMakeFiles/lolo.dir/home/stocks/develop/liblolo/lolo.c.o
lib/liblolo.a: CMakeFiles/lolo.dir/build.make
lib/liblolo.a: CMakeFiles/lolo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/stocks/develop/liblolo/cmake/static/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library lib/liblolo.a"
	$(CMAKE_COMMAND) -P CMakeFiles/lolo.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lolo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/lolo.dir/build: lib/liblolo.a

.PHONY : CMakeFiles/lolo.dir/build

CMakeFiles/lolo.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/lolo.dir/cmake_clean.cmake
.PHONY : CMakeFiles/lolo.dir/clean

CMakeFiles/lolo.dir/depend:
	cd /home/stocks/develop/liblolo/cmake/static/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/stocks/develop/liblolo/cmake/static /home/stocks/develop/liblolo/cmake/static /home/stocks/develop/liblolo/cmake/static/build /home/stocks/develop/liblolo/cmake/static/build /home/stocks/develop/liblolo/cmake/static/build/CMakeFiles/lolo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/lolo.dir/depend
