# Install script for directory: /Users/jiacheng.du/Documents/GitHub/umx.ncnn/vendor/ncnn/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/jiacheng.du/Documents/GitHub/umx.ncnn/build/vendor/ncnn/src/libncnn.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libncnn.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libncnn.a")
    execute_process(COMMAND "/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libncnn.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ncnn" TYPE FILE FILES
    "/Users/jiacheng.du/Documents/GitHub/umx.ncnn/vendor/ncnn/src/allocator.h"
    "/Users/jiacheng.du/Documents/GitHub/umx.ncnn/vendor/ncnn/src/benchmark.h"
    "/Users/jiacheng.du/Documents/GitHub/umx.ncnn/vendor/ncnn/src/blob.h"
    "/Users/jiacheng.du/Documents/GitHub/umx.ncnn/vendor/ncnn/src/c_api.h"
    "/Users/jiacheng.du/Documents/GitHub/umx.ncnn/vendor/ncnn/src/command.h"
    "/Users/jiacheng.du/Documents/GitHub/umx.ncnn/vendor/ncnn/src/cpu.h"
    "/Users/jiacheng.du/Documents/GitHub/umx.ncnn/vendor/ncnn/src/datareader.h"
    "/Users/jiacheng.du/Documents/GitHub/umx.ncnn/vendor/ncnn/src/expression.h"
    "/Users/jiacheng.du/Documents/GitHub/umx.ncnn/vendor/ncnn/src/gpu.h"
    "/Users/jiacheng.du/Documents/GitHub/umx.ncnn/vendor/ncnn/src/layer.h"
    "/Users/jiacheng.du/Documents/GitHub/umx.ncnn/vendor/ncnn/src/layer_shader_type.h"
    "/Users/jiacheng.du/Documents/GitHub/umx.ncnn/vendor/ncnn/src/layer_type.h"
    "/Users/jiacheng.du/Documents/GitHub/umx.ncnn/vendor/ncnn/src/mat.h"
    "/Users/jiacheng.du/Documents/GitHub/umx.ncnn/vendor/ncnn/src/modelbin.h"
    "/Users/jiacheng.du/Documents/GitHub/umx.ncnn/vendor/ncnn/src/net.h"
    "/Users/jiacheng.du/Documents/GitHub/umx.ncnn/vendor/ncnn/src/option.h"
    "/Users/jiacheng.du/Documents/GitHub/umx.ncnn/vendor/ncnn/src/paramdict.h"
    "/Users/jiacheng.du/Documents/GitHub/umx.ncnn/vendor/ncnn/src/pipeline.h"
    "/Users/jiacheng.du/Documents/GitHub/umx.ncnn/vendor/ncnn/src/pipelinecache.h"
    "/Users/jiacheng.du/Documents/GitHub/umx.ncnn/vendor/ncnn/src/simpleocv.h"
    "/Users/jiacheng.du/Documents/GitHub/umx.ncnn/vendor/ncnn/src/simpleomp.h"
    "/Users/jiacheng.du/Documents/GitHub/umx.ncnn/vendor/ncnn/src/simplestl.h"
    "/Users/jiacheng.du/Documents/GitHub/umx.ncnn/vendor/ncnn/src/simplemath.h"
    "/Users/jiacheng.du/Documents/GitHub/umx.ncnn/vendor/ncnn/src/simplevk.h"
    "/Users/jiacheng.du/Documents/GitHub/umx.ncnn/vendor/ncnn/src/vulkan_header_fix.h"
    "/Users/jiacheng.du/Documents/GitHub/umx.ncnn/build/vendor/ncnn/src/ncnn_export.h"
    "/Users/jiacheng.du/Documents/GitHub/umx.ncnn/build/vendor/ncnn/src/layer_shader_type_enum.h"
    "/Users/jiacheng.du/Documents/GitHub/umx.ncnn/build/vendor/ncnn/src/layer_type_enum.h"
    "/Users/jiacheng.du/Documents/GitHub/umx.ncnn/build/vendor/ncnn/src/platform.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/ncnn/ncnn.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/ncnn/ncnn.cmake"
         "/Users/jiacheng.du/Documents/GitHub/umx.ncnn/build/vendor/ncnn/src/CMakeFiles/Export/790e04ecad7490f293fc4a38f0c73eb1/ncnn.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/ncnn/ncnn-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/ncnn/ncnn.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/ncnn" TYPE FILE FILES "/Users/jiacheng.du/Documents/GitHub/umx.ncnn/build/vendor/ncnn/src/CMakeFiles/Export/790e04ecad7490f293fc4a38f0c73eb1/ncnn.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/ncnn" TYPE FILE FILES "/Users/jiacheng.du/Documents/GitHub/umx.ncnn/build/vendor/ncnn/src/CMakeFiles/Export/790e04ecad7490f293fc4a38f0c73eb1/ncnn-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/ncnn" TYPE FILE FILES
    "/Users/jiacheng.du/Documents/GitHub/umx.ncnn/build/vendor/ncnn/src/ncnnConfig.cmake"
    "/Users/jiacheng.du/Documents/GitHub/umx.ncnn/build/vendor/ncnn/src/ncnnConfigVersion.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/Users/jiacheng.du/Documents/GitHub/umx.ncnn/build/vendor/ncnn/src/ncnn.pc")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/Users/jiacheng.du/Documents/GitHub/umx.ncnn/build/vendor/ncnn/src/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
