# cmake file to compile src/
# link against included submodules libnyquist

cmake_minimum_required(VERSION 3.5)

if(NOT CMAKE_BUILD_TYPE)
  set(CMAKE_BUILD_TYPE Release)
endif()

set(CMAKE_CXX_FLAGS "-Wall -Wextra -frtti")
set(CMAKE_CXX_FLAGS_DEBUG "-g")

set(CMAKE_CXX_FLAGS_RELEASE "-O3 -ffast-math -fno-signed-zeros -fno-trapping-math -fassociative-math -freciprocal-math -fno-math-errno -fno-rounding-math -fno-signaling-nans -fno-unsafe-math-optimizations -fno-trapping-math -fno-math-errno")

# define a macro NDEBUG for Eigen3 release builds
set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -DNDEBUG")

# set EIGEN_USE_BLAS to 1 and link to OpenBLAS
set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} ")

project(umx.cpp)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_POSITION_INDEPENDENT_CODE ON)


set(LIBNYQUIST_BUILD_EXAMPLE OFF CACHE BOOL "Disable libnyquist example")
add_subdirectory(vendor/libnyquist)
add_subdirectory(vendor/ncnn)

include_directories(vendor/eigen)
include_directories(vendor/libnyquist/include)
include_directories(vendor/ncnn/src)

# include src/ as include directory
include_directories(src)

# include src/*.cpp and src/*.c as source files
file(GLOB SOURCES "src/*.cpp")

file(GLOB SOURCES_TO_LINT "src/*.cpp" "src/*.hpp" "umx.cpp")

# add target to run standard lints and formatters
add_custom_target(lint
    COMMAND clang-format -i ${SOURCES_TO_LINT} --style=file
    # add clang-tidy command
    # add include dirs to clang-tidy
    COMMAND cppcheck --enable=all --suppress=missingIncludeSystem ${SOURCES_TO_LINT} --std=c++17
    COMMAND scan-build -o ${CMAKE_BINARY_DIR}/scan-build-report make -C ${CMAKE_BINARY_DIR}
    WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
)

add_executable(umx.cpp.main umx.cpp ${SOURCES})
target_link_libraries(umx.cpp.main libnyquist ncnn)
