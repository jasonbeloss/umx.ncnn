# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 4.0

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
CMAKE_COMMAND = /opt/homebrew/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/jiacheng.du/Documents/GitHub/umx.ncnn

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/jiacheng.du/Documents/GitHub/umx.ncnn/build

# Include any dependencies generated for this target.
include vendor/ncnn/benchmark/CMakeFiles/benchncnn.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include vendor/ncnn/benchmark/CMakeFiles/benchncnn.dir/compiler_depend.make

# Include the progress variables for this target.
include vendor/ncnn/benchmark/CMakeFiles/benchncnn.dir/progress.make

# Include the compile flags for this target's objects.
include vendor/ncnn/benchmark/CMakeFiles/benchncnn.dir/flags.make

vendor/ncnn/benchmark/CMakeFiles/benchncnn.dir/codegen:
.PHONY : vendor/ncnn/benchmark/CMakeFiles/benchncnn.dir/codegen

vendor/ncnn/benchmark/CMakeFiles/benchncnn.dir/benchncnn.cpp.o: vendor/ncnn/benchmark/CMakeFiles/benchncnn.dir/flags.make
vendor/ncnn/benchmark/CMakeFiles/benchncnn.dir/benchncnn.cpp.o: /Users/jiacheng.du/Documents/GitHub/umx.ncnn/vendor/ncnn/benchmark/benchncnn.cpp
vendor/ncnn/benchmark/CMakeFiles/benchncnn.dir/benchncnn.cpp.o: vendor/ncnn/benchmark/CMakeFiles/benchncnn.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/jiacheng.du/Documents/GitHub/umx.ncnn/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object vendor/ncnn/benchmark/CMakeFiles/benchncnn.dir/benchncnn.cpp.o"
	cd /Users/jiacheng.du/Documents/GitHub/umx.ncnn/build/vendor/ncnn/benchmark && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT vendor/ncnn/benchmark/CMakeFiles/benchncnn.dir/benchncnn.cpp.o -MF CMakeFiles/benchncnn.dir/benchncnn.cpp.o.d -o CMakeFiles/benchncnn.dir/benchncnn.cpp.o -c /Users/jiacheng.du/Documents/GitHub/umx.ncnn/vendor/ncnn/benchmark/benchncnn.cpp

vendor/ncnn/benchmark/CMakeFiles/benchncnn.dir/benchncnn.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/benchncnn.dir/benchncnn.cpp.i"
	cd /Users/jiacheng.du/Documents/GitHub/umx.ncnn/build/vendor/ncnn/benchmark && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jiacheng.du/Documents/GitHub/umx.ncnn/vendor/ncnn/benchmark/benchncnn.cpp > CMakeFiles/benchncnn.dir/benchncnn.cpp.i

vendor/ncnn/benchmark/CMakeFiles/benchncnn.dir/benchncnn.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/benchncnn.dir/benchncnn.cpp.s"
	cd /Users/jiacheng.du/Documents/GitHub/umx.ncnn/build/vendor/ncnn/benchmark && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jiacheng.du/Documents/GitHub/umx.ncnn/vendor/ncnn/benchmark/benchncnn.cpp -o CMakeFiles/benchncnn.dir/benchncnn.cpp.s

# Object files for target benchncnn
benchncnn_OBJECTS = \
"CMakeFiles/benchncnn.dir/benchncnn.cpp.o"

# External object files for target benchncnn
benchncnn_EXTERNAL_OBJECTS =

vendor/ncnn/benchmark/benchncnn: vendor/ncnn/benchmark/CMakeFiles/benchncnn.dir/benchncnn.cpp.o
vendor/ncnn/benchmark/benchncnn: vendor/ncnn/benchmark/CMakeFiles/benchncnn.dir/build.make
vendor/ncnn/benchmark/benchncnn: vendor/ncnn/src/libncnn.a
vendor/ncnn/benchmark/benchncnn: vendor/ncnn/benchmark/CMakeFiles/benchncnn.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/jiacheng.du/Documents/GitHub/umx.ncnn/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable benchncnn"
	cd /Users/jiacheng.du/Documents/GitHub/umx.ncnn/build/vendor/ncnn/benchmark && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/benchncnn.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
vendor/ncnn/benchmark/CMakeFiles/benchncnn.dir/build: vendor/ncnn/benchmark/benchncnn
.PHONY : vendor/ncnn/benchmark/CMakeFiles/benchncnn.dir/build

vendor/ncnn/benchmark/CMakeFiles/benchncnn.dir/clean:
	cd /Users/jiacheng.du/Documents/GitHub/umx.ncnn/build/vendor/ncnn/benchmark && $(CMAKE_COMMAND) -P CMakeFiles/benchncnn.dir/cmake_clean.cmake
.PHONY : vendor/ncnn/benchmark/CMakeFiles/benchncnn.dir/clean

vendor/ncnn/benchmark/CMakeFiles/benchncnn.dir/depend:
	cd /Users/jiacheng.du/Documents/GitHub/umx.ncnn/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jiacheng.du/Documents/GitHub/umx.ncnn /Users/jiacheng.du/Documents/GitHub/umx.ncnn/vendor/ncnn/benchmark /Users/jiacheng.du/Documents/GitHub/umx.ncnn/build /Users/jiacheng.du/Documents/GitHub/umx.ncnn/build/vendor/ncnn/benchmark /Users/jiacheng.du/Documents/GitHub/umx.ncnn/build/vendor/ncnn/benchmark/CMakeFiles/benchncnn.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : vendor/ncnn/benchmark/CMakeFiles/benchncnn.dir/depend

