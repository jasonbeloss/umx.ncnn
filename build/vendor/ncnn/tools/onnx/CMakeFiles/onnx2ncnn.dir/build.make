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
include vendor/ncnn/tools/onnx/CMakeFiles/onnx2ncnn.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include vendor/ncnn/tools/onnx/CMakeFiles/onnx2ncnn.dir/compiler_depend.make

# Include the progress variables for this target.
include vendor/ncnn/tools/onnx/CMakeFiles/onnx2ncnn.dir/progress.make

# Include the compile flags for this target's objects.
include vendor/ncnn/tools/onnx/CMakeFiles/onnx2ncnn.dir/flags.make

vendor/ncnn/tools/onnx/onnx.pb.h: /Users/jiacheng.du/Documents/GitHub/umx.ncnn/vendor/ncnn/tools/onnx/onnx.proto
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/jiacheng.du/Documents/GitHub/umx.ncnn/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Running cpp protocol buffer compiler on onnx.proto"
	cd /Users/jiacheng.du/Documents/GitHub/umx.ncnn/build/vendor/ncnn/tools/onnx && /opt/homebrew/bin/protoc-29.3.0 --cpp_out :/Users/jiacheng.du/Documents/GitHub/umx.ncnn/build/vendor/ncnn/tools/onnx -I /Users/jiacheng.du/Documents/GitHub/umx.ncnn/vendor/ncnn/tools/onnx /Users/jiacheng.du/Documents/GitHub/umx.ncnn/vendor/ncnn/tools/onnx/onnx.proto

vendor/ncnn/tools/onnx/onnx.pb.cc: vendor/ncnn/tools/onnx/onnx.pb.h
	@$(CMAKE_COMMAND) -E touch_nocreate vendor/ncnn/tools/onnx/onnx.pb.cc

vendor/ncnn/tools/onnx/CMakeFiles/onnx2ncnn.dir/codegen:
.PHONY : vendor/ncnn/tools/onnx/CMakeFiles/onnx2ncnn.dir/codegen

vendor/ncnn/tools/onnx/CMakeFiles/onnx2ncnn.dir/onnx2ncnn.cpp.o: vendor/ncnn/tools/onnx/CMakeFiles/onnx2ncnn.dir/flags.make
vendor/ncnn/tools/onnx/CMakeFiles/onnx2ncnn.dir/onnx2ncnn.cpp.o: /Users/jiacheng.du/Documents/GitHub/umx.ncnn/vendor/ncnn/tools/onnx/onnx2ncnn.cpp
vendor/ncnn/tools/onnx/CMakeFiles/onnx2ncnn.dir/onnx2ncnn.cpp.o: vendor/ncnn/tools/onnx/CMakeFiles/onnx2ncnn.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/jiacheng.du/Documents/GitHub/umx.ncnn/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object vendor/ncnn/tools/onnx/CMakeFiles/onnx2ncnn.dir/onnx2ncnn.cpp.o"
	cd /Users/jiacheng.du/Documents/GitHub/umx.ncnn/build/vendor/ncnn/tools/onnx && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT vendor/ncnn/tools/onnx/CMakeFiles/onnx2ncnn.dir/onnx2ncnn.cpp.o -MF CMakeFiles/onnx2ncnn.dir/onnx2ncnn.cpp.o.d -o CMakeFiles/onnx2ncnn.dir/onnx2ncnn.cpp.o -c /Users/jiacheng.du/Documents/GitHub/umx.ncnn/vendor/ncnn/tools/onnx/onnx2ncnn.cpp

vendor/ncnn/tools/onnx/CMakeFiles/onnx2ncnn.dir/onnx2ncnn.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/onnx2ncnn.dir/onnx2ncnn.cpp.i"
	cd /Users/jiacheng.du/Documents/GitHub/umx.ncnn/build/vendor/ncnn/tools/onnx && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jiacheng.du/Documents/GitHub/umx.ncnn/vendor/ncnn/tools/onnx/onnx2ncnn.cpp > CMakeFiles/onnx2ncnn.dir/onnx2ncnn.cpp.i

vendor/ncnn/tools/onnx/CMakeFiles/onnx2ncnn.dir/onnx2ncnn.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/onnx2ncnn.dir/onnx2ncnn.cpp.s"
	cd /Users/jiacheng.du/Documents/GitHub/umx.ncnn/build/vendor/ncnn/tools/onnx && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jiacheng.du/Documents/GitHub/umx.ncnn/vendor/ncnn/tools/onnx/onnx2ncnn.cpp -o CMakeFiles/onnx2ncnn.dir/onnx2ncnn.cpp.s

vendor/ncnn/tools/onnx/CMakeFiles/onnx2ncnn.dir/onnx.pb.cc.o: vendor/ncnn/tools/onnx/CMakeFiles/onnx2ncnn.dir/flags.make
vendor/ncnn/tools/onnx/CMakeFiles/onnx2ncnn.dir/onnx.pb.cc.o: vendor/ncnn/tools/onnx/onnx.pb.cc
vendor/ncnn/tools/onnx/CMakeFiles/onnx2ncnn.dir/onnx.pb.cc.o: vendor/ncnn/tools/onnx/CMakeFiles/onnx2ncnn.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/jiacheng.du/Documents/GitHub/umx.ncnn/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object vendor/ncnn/tools/onnx/CMakeFiles/onnx2ncnn.dir/onnx.pb.cc.o"
	cd /Users/jiacheng.du/Documents/GitHub/umx.ncnn/build/vendor/ncnn/tools/onnx && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT vendor/ncnn/tools/onnx/CMakeFiles/onnx2ncnn.dir/onnx.pb.cc.o -MF CMakeFiles/onnx2ncnn.dir/onnx.pb.cc.o.d -o CMakeFiles/onnx2ncnn.dir/onnx.pb.cc.o -c /Users/jiacheng.du/Documents/GitHub/umx.ncnn/build/vendor/ncnn/tools/onnx/onnx.pb.cc

vendor/ncnn/tools/onnx/CMakeFiles/onnx2ncnn.dir/onnx.pb.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/onnx2ncnn.dir/onnx.pb.cc.i"
	cd /Users/jiacheng.du/Documents/GitHub/umx.ncnn/build/vendor/ncnn/tools/onnx && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jiacheng.du/Documents/GitHub/umx.ncnn/build/vendor/ncnn/tools/onnx/onnx.pb.cc > CMakeFiles/onnx2ncnn.dir/onnx.pb.cc.i

vendor/ncnn/tools/onnx/CMakeFiles/onnx2ncnn.dir/onnx.pb.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/onnx2ncnn.dir/onnx.pb.cc.s"
	cd /Users/jiacheng.du/Documents/GitHub/umx.ncnn/build/vendor/ncnn/tools/onnx && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jiacheng.du/Documents/GitHub/umx.ncnn/build/vendor/ncnn/tools/onnx/onnx.pb.cc -o CMakeFiles/onnx2ncnn.dir/onnx.pb.cc.s

# Object files for target onnx2ncnn
onnx2ncnn_OBJECTS = \
"CMakeFiles/onnx2ncnn.dir/onnx2ncnn.cpp.o" \
"CMakeFiles/onnx2ncnn.dir/onnx.pb.cc.o"

# External object files for target onnx2ncnn
onnx2ncnn_EXTERNAL_OBJECTS =

vendor/ncnn/tools/onnx/onnx2ncnn: vendor/ncnn/tools/onnx/CMakeFiles/onnx2ncnn.dir/onnx2ncnn.cpp.o
vendor/ncnn/tools/onnx/onnx2ncnn: vendor/ncnn/tools/onnx/CMakeFiles/onnx2ncnn.dir/onnx.pb.cc.o
vendor/ncnn/tools/onnx/onnx2ncnn: vendor/ncnn/tools/onnx/CMakeFiles/onnx2ncnn.dir/build.make
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libprotobuf.29.3.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_log_internal_check_op.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_leak_check.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_die_if_null.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_log_internal_conditions.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_log_internal_message.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_log_internal_nullguard.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_examine_stack.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_log_internal_format.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_log_internal_proto.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_log_internal_log_sink_set.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_log_sink.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_log_entry.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_flags_internal.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_flags_marshalling.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_flags_reflection.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_flags_config.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_flags_program_name.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_flags_private_handle_accessor.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_flags_commandlineflag.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_flags_commandlineflag_internal.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_log_initialize.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_log_internal_globals.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_log_globals.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_vlog_config_internal.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_log_internal_fnmatch.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_raw_hash_set.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_hash.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_city.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_low_level_hash.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_hashtablez_sampler.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_random_distributions.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_random_seed_sequences.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_random_internal_pool_urbg.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_random_internal_randen.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_random_internal_randen_hwaes.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_random_internal_randen_hwaes_impl.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_random_internal_randen_slow.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_random_internal_platform.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_random_internal_seed_material.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_random_seed_gen_exception.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_statusor.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_status.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_cord.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_cordz_info.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_cord_internal.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_cordz_functions.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_exponential_biased.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_cordz_handle.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_crc_cord_state.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_crc32c.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_crc_internal.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_crc_cpu_detect.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_bad_optional_access.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_strerror.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_str_format_internal.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_synchronization.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_stacktrace.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_symbolize.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_debugging_internal.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_demangle_internal.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_demangle_rust.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_decode_rust_punycode.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_utf8_for_code_point.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_graphcycles_internal.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_kernel_timeout_internal.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_malloc_internal.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_time.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_civil_time.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_time_zone.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_bad_variant_access.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_strings.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_int128.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_strings_internal.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_string_view.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_base.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_spinlock_wait.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_throw_delegate.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_raw_logging_internal.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: /opt/homebrew/lib/libabsl_log_severity.2407.0.0.dylib
vendor/ncnn/tools/onnx/onnx2ncnn: vendor/ncnn/tools/onnx/CMakeFiles/onnx2ncnn.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/jiacheng.du/Documents/GitHub/umx.ncnn/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable onnx2ncnn"
	cd /Users/jiacheng.du/Documents/GitHub/umx.ncnn/build/vendor/ncnn/tools/onnx && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/onnx2ncnn.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
vendor/ncnn/tools/onnx/CMakeFiles/onnx2ncnn.dir/build: vendor/ncnn/tools/onnx/onnx2ncnn
.PHONY : vendor/ncnn/tools/onnx/CMakeFiles/onnx2ncnn.dir/build

vendor/ncnn/tools/onnx/CMakeFiles/onnx2ncnn.dir/clean:
	cd /Users/jiacheng.du/Documents/GitHub/umx.ncnn/build/vendor/ncnn/tools/onnx && $(CMAKE_COMMAND) -P CMakeFiles/onnx2ncnn.dir/cmake_clean.cmake
.PHONY : vendor/ncnn/tools/onnx/CMakeFiles/onnx2ncnn.dir/clean

vendor/ncnn/tools/onnx/CMakeFiles/onnx2ncnn.dir/depend: vendor/ncnn/tools/onnx/onnx.pb.cc
vendor/ncnn/tools/onnx/CMakeFiles/onnx2ncnn.dir/depend: vendor/ncnn/tools/onnx/onnx.pb.h
	cd /Users/jiacheng.du/Documents/GitHub/umx.ncnn/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jiacheng.du/Documents/GitHub/umx.ncnn /Users/jiacheng.du/Documents/GitHub/umx.ncnn/vendor/ncnn/tools/onnx /Users/jiacheng.du/Documents/GitHub/umx.ncnn/build /Users/jiacheng.du/Documents/GitHub/umx.ncnn/build/vendor/ncnn/tools/onnx /Users/jiacheng.du/Documents/GitHub/umx.ncnn/build/vendor/ncnn/tools/onnx/CMakeFiles/onnx2ncnn.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : vendor/ncnn/tools/onnx/CMakeFiles/onnx2ncnn.dir/depend

