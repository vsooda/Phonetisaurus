cmake_minimum_required(VERSION 2.8)
project(Phonetisaurus)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR})
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

ADD_DEFINITIONS(-DGIT_REVISION="hello")

INCLUDE_DIRECTORIES(${PROJECT_SOURCE_DIR}/src/3rdparty
        ${PROJECT_SOURCE_DIR}/src/3rdparty/rnnlm
        ${PROJECT_SOURCE_DIR}/src
        ${PROJECT_SOURCE_DIR}/src/include
        ${PROJECT_SOURCE_DIR}/src/3rdparty/utfcpp
        ${PROJECT_SOURCE_DIR}/src/3rdparty/utfcpp/utf8
        ${PROJECT_SOURCE_DIR}/src/3rdparty/openfst/src/include
        )

#link_directories(${OPENFST_ROOT}/build/src/lib)
set(CMAKE_MACOSX_RPATH 1)

if(CMAKE_BUILD_TYPE STREQUAL "Debug")
    message("cppmary build: Debug")
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -O0 -g")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O0 -std=c++11 -pthread")
elseif(CMAKE_BUILD_TYPE STREQUAL "RelWithDebInfo")
    message("cppmary build: RelwithDebInfo")
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -O3 -g")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O3 -std=c++11 -pthread")
else()
    message("cppmary build: Release")
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -O3")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O3 -std=c++11 -pthread")
endif()

set(CMAKE_BUILD_TYPE Release)

ADD_SUBDIRECTORY(src)

