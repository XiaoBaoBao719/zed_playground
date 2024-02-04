CMAKE_MINIMUM_REQUIRED(VERSION 3.5)
PROJECT(zed_playground)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

option(LINK_SHARED_ZED "Link with the ZED SDK shared executable" ON)

if (NOT LINK_SHARED_ZED AND MSVC)
    message(FATAL_ERROR "LINK_SHARED_ZED OFF : ZED SDK static libraries not available on Windows")
endif()

add_definitions(-std=c++14 -O3)

find_package(ZED 3 REQUIRED)
find_package(OpenCV 4 REQUIRED)
find_package(CUDA ${ZED_CUDA_VERSION} REQUIRED)

include_directories(${CUDA_INCLUDE_DIRS})
include_directories(${ZED_INCLUDE_DIRS})
include_directories(${OpenCV_INCLUDE_DIRS})
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include)

link_directories(${ZED_LIBRARY_DIR})
link_directories(${CUDA_LIBRARY_DIRS})
link_directories(${OpenCV_LIBRARY_DIRS})

FILE(GLOB_RECURSE SRC_FILES src/*.cpp)
FILE(GLOB_RECURSE HDR_FILES include/*.hpp)

ADD_EXECUTABLE(${PROJECT_NAME} ${HDR_FILES} ${SRC_FILES})

# collect executalbes
# FILE(GLOB_RECURSE SRC_FILES src/*.cpp)
# FILE(GLOB_RECURSE HEADER_FILES src/*.hpp)
# add_library(${PROJECT_NAME} ${SRC_FILES} ${HEADER_FILES})

# file(GLOB APP_SOURCES RELATIVE src/*.cxx)
# file( GLOB APP_SOURCES src/*.cpp )
# foreach(source_file ${APP_SOURCES})
#      # Cut off the file extension and directory path
#      get_filename_component(somename ${source_file} NAME_WE)
#      add_executable(${somename} ${source_file})
#      # link the executable
#      target_link_libraries(${somename} ${ZED_LIBS} ${OpenCV_LIBRARIES})
# endforeach(source_file ${APP_SOURCES})


if (LINK_SHARED_ZED)
    SET(ZED_LIBS ${ZED_LIBRARIES} ${CUDA_CUDA_LIBRARY} ${CUDA_CUDART_LIBRARY})
else()
    SET(ZED_LIBS ${ZED_STATIC_LIBRARIES} ${CUDA_CUDA_LIBRARY} ${CUDA_LIBRARY})
endif()

TARGET_LINK_LIBRARIES(${PROJECT_NAME} ${ZED_LIBS} ${OpenCV_LIBRARIES})