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
include vendor/ncnn/tools/CMakeFiles/ncnn2mem.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include vendor/ncnn/tools/CMakeFiles/ncnn2mem.dir/compiler_depend.make

# Include the progress variables for this target.
include vendor/ncnn/tools/CMakeFiles/ncnn2mem.dir/progress.make

# Include the compile flags for this target's objects.
include vendor/ncnn/tools/CMakeFiles/ncnn2mem.dir/flags.make

vendor/ncnn/tools/CMakeFiles/ncnn2mem.dir/codegen:
.PHONY : vendor/ncnn/tools/CMakeFiles/ncnn2mem.dir/codegen

vendor/ncnn/tools/CMakeFiles/ncnn2mem.dir/ncnn2mem.cpp.o: vendor/ncnn/tools/CMakeFiles/ncnn2mem.dir/flags.make
vendor/ncnn/tools/CMakeFiles/ncnn2mem.dir/ncnn2mem.cpp.o: /Users/jiacheng.du/Documents/GitHub/umx.ncnn/vendor/ncnn/tools/ncnn2mem.cpp
vendor/ncnn/tools/CMakeFiles/ncnn2mem.dir/ncnn2mem.cpp.o: vendor/ncnn/tools/CMakeFiles/ncnn2mem.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/jiacheng.du/Documents/GitHub/umx.ncnn/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object vendor/ncnn/tools/CMakeFiles/ncnn2mem.dir/ncnn2mem.cpp.o"
	cd /Users/jiacheng.du/Documents/GitHub/umx.ncnn/build/vendor/ncnn/tools && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT vendor/ncnn/tools/CMakeFiles/ncnn2mem.dir/ncnn2mem.cpp.o -MF CMakeFiles/ncnn2mem.dir/ncnn2mem.cpp.o.d -o CMakeFiles/ncnn2mem.dir/ncnn2mem.cpp.o -c /Users/jiacheng.du/Documents/GitHub/umx.ncnn/vendor/ncnn/tools/ncnn2mem.cpp

vendor/ncnn/tools/CMakeFiles/ncnn2mem.dir/ncnn2mem.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ncnn2mem.dir/ncnn2mem.cpp.i"
	cd /Users/jiacheng.du/Documents/GitHub/umx.ncnn/build/vendor/ncnn/tools && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jiacheng.du/Documents/GitHub/umx.ncnn/vendor/ncnn/tools/ncnn2mem.cpp > CMakeFiles/ncnn2mem.dir/ncnn2mem.cpp.i

vendor/ncnn/tools/CMakeFiles/ncnn2mem.dir/ncnn2mem.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ncnn2mem.dir/ncnn2mem.cpp.s"
	cd /Users/jiacheng.du/Documents/GitHub/umx.ncnn/build/vendor/ncnn/tools && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jiacheng.du/Documents/GitHub/umx.ncnn/vendor/ncnn/tools/ncnn2mem.cpp -o CMakeFiles/ncnn2mem.dir/ncnn2mem.cpp.s

# Object files for target ncnn2mem
ncnn2mem_OBJECTS = \
"CMakeFiles/ncnn2mem.dir/ncnn2mem.cpp.o"

# External object files for target ncnn2mem
ncnn2mem_EXTERNAL_OBJECTS =

vendor/ncnn/tools/ncnn2mem: vendor/ncnn/tools/CMakeFiles/ncnn2mem.dir/ncnn2mem.cpp.o
vendor/ncnn/tools/ncnn2mem: vendor/ncnn/tools/CMakeFiles/ncnn2mem.dir/build.make
vendor/ncnn/tools/ncnn2mem: vendor/ncnn/src/libncnn.a
vendor/ncnn/tools/ncnn2mem: vendor/ncnn/tools/CMakeFiles/ncnn2mem.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/jiacheng.du/Documents/GitHub/umx.ncnn/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ncnn2mem"
	cd /Users/jiacheng.du/Documents/GitHub/umx.ncnn/build/vendor/ncnn/tools && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ncnn2mem.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
vendor/ncnn/tools/CMakeFiles/ncnn2mem.dir/build: vendor/ncnn/tools/ncnn2mem
.PHONY : vendor/ncnn/tools/CMakeFiles/ncnn2mem.dir/build

vendor/ncnn/tools/CMakeFiles/ncnn2mem.dir/clean:
	cd /Users/jiacheng.du/Documents/GitHub/umx.ncnn/build/vendor/ncnn/tools && $(CMAKE_COMMAND) -P CMakeFiles/ncnn2mem.dir/cmake_clean.cmake
.PHONY : vendor/ncnn/tools/CMakeFiles/ncnn2mem.dir/clean

vendor/ncnn/tools/CMakeFiles/ncnn2mem.dir/depend:
	cd /Users/jiacheng.du/Documents/GitHub/umx.ncnn/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jiacheng.du/Documents/GitHub/umx.ncnn /Users/jiacheng.du/Documents/GitHub/umx.ncnn/vendor/ncnn/tools /Users/jiacheng.du/Documents/GitHub/umx.ncnn/build /Users/jiacheng.du/Documents/GitHub/umx.ncnn/build/vendor/ncnn/tools /Users/jiacheng.du/Documents/GitHub/umx.ncnn/build/vendor/ncnn/tools/CMakeFiles/ncnn2mem.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : vendor/ncnn/tools/CMakeFiles/ncnn2mem.dir/depend

