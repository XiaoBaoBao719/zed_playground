# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/bao/workspaces/zed_playground

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/bao/workspaces/zed_playground/build

# Include any dependencies generated for this target.
include CMakeFiles/zed_playground.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/zed_playground.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/zed_playground.dir/flags.make

CMakeFiles/zed_playground.dir/src/SaveDepth.cpp.o: CMakeFiles/zed_playground.dir/flags.make
CMakeFiles/zed_playground.dir/src/SaveDepth.cpp.o: ../src/SaveDepth.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bao/workspaces/zed_playground/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/zed_playground.dir/src/SaveDepth.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/zed_playground.dir/src/SaveDepth.cpp.o -c /home/bao/workspaces/zed_playground/src/SaveDepth.cpp

CMakeFiles/zed_playground.dir/src/SaveDepth.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/zed_playground.dir/src/SaveDepth.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bao/workspaces/zed_playground/src/SaveDepth.cpp > CMakeFiles/zed_playground.dir/src/SaveDepth.cpp.i

CMakeFiles/zed_playground.dir/src/SaveDepth.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/zed_playground.dir/src/SaveDepth.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bao/workspaces/zed_playground/src/SaveDepth.cpp -o CMakeFiles/zed_playground.dir/src/SaveDepth.cpp.s

CMakeFiles/zed_playground.dir/src/SaveDepth.cpp.o.requires:

.PHONY : CMakeFiles/zed_playground.dir/src/SaveDepth.cpp.o.requires

CMakeFiles/zed_playground.dir/src/SaveDepth.cpp.o.provides: CMakeFiles/zed_playground.dir/src/SaveDepth.cpp.o.requires
	$(MAKE) -f CMakeFiles/zed_playground.dir/build.make CMakeFiles/zed_playground.dir/src/SaveDepth.cpp.o.provides.build
.PHONY : CMakeFiles/zed_playground.dir/src/SaveDepth.cpp.o.provides

CMakeFiles/zed_playground.dir/src/SaveDepth.cpp.o.provides.build: CMakeFiles/zed_playground.dir/src/SaveDepth.cpp.o


CMakeFiles/zed_playground.dir/src/img_capture.cpp.o: CMakeFiles/zed_playground.dir/flags.make
CMakeFiles/zed_playground.dir/src/img_capture.cpp.o: ../src/img_capture.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bao/workspaces/zed_playground/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/zed_playground.dir/src/img_capture.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/zed_playground.dir/src/img_capture.cpp.o -c /home/bao/workspaces/zed_playground/src/img_capture.cpp

CMakeFiles/zed_playground.dir/src/img_capture.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/zed_playground.dir/src/img_capture.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bao/workspaces/zed_playground/src/img_capture.cpp > CMakeFiles/zed_playground.dir/src/img_capture.cpp.i

CMakeFiles/zed_playground.dir/src/img_capture.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/zed_playground.dir/src/img_capture.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bao/workspaces/zed_playground/src/img_capture.cpp -o CMakeFiles/zed_playground.dir/src/img_capture.cpp.s

CMakeFiles/zed_playground.dir/src/img_capture.cpp.o.requires:

.PHONY : CMakeFiles/zed_playground.dir/src/img_capture.cpp.o.requires

CMakeFiles/zed_playground.dir/src/img_capture.cpp.o.provides: CMakeFiles/zed_playground.dir/src/img_capture.cpp.o.requires
	$(MAKE) -f CMakeFiles/zed_playground.dir/build.make CMakeFiles/zed_playground.dir/src/img_capture.cpp.o.provides.build
.PHONY : CMakeFiles/zed_playground.dir/src/img_capture.cpp.o.provides

CMakeFiles/zed_playground.dir/src/img_capture.cpp.o.provides.build: CMakeFiles/zed_playground.dir/src/img_capture.cpp.o


# Object files for target zed_playground
zed_playground_OBJECTS = \
"CMakeFiles/zed_playground.dir/src/SaveDepth.cpp.o" \
"CMakeFiles/zed_playground.dir/src/img_capture.cpp.o"

# External object files for target zed_playground
zed_playground_EXTERNAL_OBJECTS =

zed_playground: CMakeFiles/zed_playground.dir/src/SaveDepth.cpp.o
zed_playground: CMakeFiles/zed_playground.dir/src/img_capture.cpp.o
zed_playground: CMakeFiles/zed_playground.dir/build.make
zed_playground: /usr/local/zed/lib/libsl_zed.so
zed_playground: /usr/lib/aarch64-linux-gnu/libopenblas.so
zed_playground: /usr/lib/aarch64-linux-gnu/libusb-1.0.so
zed_playground: /usr/lib/aarch64-linux-gnu/libcuda.so
zed_playground: /usr/local/cuda/lib64/libcudart.so
zed_playground: /usr/lib/aarch64-linux-gnu/libopencv_dnn.so.4.1.1
zed_playground: /usr/lib/aarch64-linux-gnu/libopencv_gapi.so.4.1.1
zed_playground: /usr/lib/aarch64-linux-gnu/libopencv_highgui.so.4.1.1
zed_playground: /usr/lib/aarch64-linux-gnu/libopencv_ml.so.4.1.1
zed_playground: /usr/lib/aarch64-linux-gnu/libopencv_objdetect.so.4.1.1
zed_playground: /usr/lib/aarch64-linux-gnu/libopencv_photo.so.4.1.1
zed_playground: /usr/lib/aarch64-linux-gnu/libopencv_stitching.so.4.1.1
zed_playground: /usr/lib/aarch64-linux-gnu/libopencv_video.so.4.1.1
zed_playground: /usr/lib/aarch64-linux-gnu/libopencv_videoio.so.4.1.1
zed_playground: /usr/lib/aarch64-linux-gnu/libopencv_imgcodecs.so.4.1.1
zed_playground: /usr/lib/aarch64-linux-gnu/libopencv_calib3d.so.4.1.1
zed_playground: /usr/lib/aarch64-linux-gnu/libopencv_features2d.so.4.1.1
zed_playground: /usr/lib/aarch64-linux-gnu/libopencv_flann.so.4.1.1
zed_playground: /usr/lib/aarch64-linux-gnu/libopencv_imgproc.so.4.1.1
zed_playground: /usr/lib/aarch64-linux-gnu/libopencv_core.so.4.1.1
zed_playground: CMakeFiles/zed_playground.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/bao/workspaces/zed_playground/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable zed_playground"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/zed_playground.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/zed_playground.dir/build: zed_playground

.PHONY : CMakeFiles/zed_playground.dir/build

CMakeFiles/zed_playground.dir/requires: CMakeFiles/zed_playground.dir/src/SaveDepth.cpp.o.requires
CMakeFiles/zed_playground.dir/requires: CMakeFiles/zed_playground.dir/src/img_capture.cpp.o.requires

.PHONY : CMakeFiles/zed_playground.dir/requires

CMakeFiles/zed_playground.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/zed_playground.dir/cmake_clean.cmake
.PHONY : CMakeFiles/zed_playground.dir/clean

CMakeFiles/zed_playground.dir/depend:
	cd /home/bao/workspaces/zed_playground/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/bao/workspaces/zed_playground /home/bao/workspaces/zed_playground /home/bao/workspaces/zed_playground/build /home/bao/workspaces/zed_playground/build /home/bao/workspaces/zed_playground/build/CMakeFiles/zed_playground.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/zed_playground.dir/depend

