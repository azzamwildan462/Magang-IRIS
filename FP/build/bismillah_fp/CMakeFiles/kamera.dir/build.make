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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/home/wildan/projek/bismillah magang IRIS 2021/FP/src"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/wildan/projek/bismillah magang IRIS 2021/FP/build"

# Include any dependencies generated for this target.
include bismillah_fp/CMakeFiles/kamera.dir/depend.make

# Include the progress variables for this target.
include bismillah_fp/CMakeFiles/kamera.dir/progress.make

# Include the compile flags for this target's objects.
include bismillah_fp/CMakeFiles/kamera.dir/flags.make

bismillah_fp/CMakeFiles/kamera.dir/src/kamera.cpp.o: bismillah_fp/CMakeFiles/kamera.dir/flags.make
bismillah_fp/CMakeFiles/kamera.dir/src/kamera.cpp.o: /home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/src/bismillah_fp/src/kamera.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/wildan/projek/bismillah magang IRIS 2021/FP/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object bismillah_fp/CMakeFiles/kamera.dir/src/kamera.cpp.o"
	cd "/home/wildan/projek/bismillah magang IRIS 2021/FP/build/bismillah_fp" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/kamera.dir/src/kamera.cpp.o -c "/home/wildan/projek/bismillah magang IRIS 2021/FP/src/bismillah_fp/src/kamera.cpp"

bismillah_fp/CMakeFiles/kamera.dir/src/kamera.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kamera.dir/src/kamera.cpp.i"
	cd "/home/wildan/projek/bismillah magang IRIS 2021/FP/build/bismillah_fp" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/wildan/projek/bismillah magang IRIS 2021/FP/src/bismillah_fp/src/kamera.cpp" > CMakeFiles/kamera.dir/src/kamera.cpp.i

bismillah_fp/CMakeFiles/kamera.dir/src/kamera.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kamera.dir/src/kamera.cpp.s"
	cd "/home/wildan/projek/bismillah magang IRIS 2021/FP/build/bismillah_fp" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/wildan/projek/bismillah magang IRIS 2021/FP/src/bismillah_fp/src/kamera.cpp" -o CMakeFiles/kamera.dir/src/kamera.cpp.s

# Object files for target kamera
kamera_OBJECTS = \
"CMakeFiles/kamera.dir/src/kamera.cpp.o"

# External object files for target kamera
kamera_EXTERNAL_OBJECTS =

/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: bismillah_fp/CMakeFiles/kamera.dir/src/kamera.cpp.o
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: bismillah_fp/CMakeFiles/kamera.dir/build.make
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /opt/ros/noetic/lib/libroscpp.so
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.71.0
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /opt/ros/noetic/lib/libxmlrpcpp.so
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /opt/ros/noetic/lib/libcv_bridge.so
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.4.2.0
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /usr/lib/x86_64-linux-gnu/libopencv_dnn.so.4.2.0
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.4.2.0
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.4.2.0
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.4.2.0
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.4.2.0
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.4.2.0
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.4.2.0
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.4.2.0
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /usr/lib/x86_64-linux-gnu/libopencv_video.so.4.2.0
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /usr/lib/x86_64-linux-gnu/libopencv_videoio.so.4.2.0
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /usr/lib/x86_64-linux-gnu/libopencv_aruco.so.4.2.0
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /usr/lib/x86_64-linux-gnu/libopencv_bgsegm.so.4.2.0
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /usr/lib/x86_64-linux-gnu/libopencv_bioinspired.so.4.2.0
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /usr/lib/x86_64-linux-gnu/libopencv_ccalib.so.4.2.0
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /usr/lib/x86_64-linux-gnu/libopencv_datasets.so.4.2.0
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /usr/lib/x86_64-linux-gnu/libopencv_dnn_objdetect.so.4.2.0
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /usr/lib/x86_64-linux-gnu/libopencv_dnn_superres.so.4.2.0
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /usr/lib/x86_64-linux-gnu/libopencv_dpm.so.4.2.0
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /usr/lib/x86_64-linux-gnu/libopencv_face.so.4.2.0
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /usr/lib/x86_64-linux-gnu/libopencv_freetype.so.4.2.0
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /usr/lib/x86_64-linux-gnu/libopencv_fuzzy.so.4.2.0
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /usr/lib/x86_64-linux-gnu/libopencv_hdf.so.4.2.0
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /usr/lib/x86_64-linux-gnu/libopencv_hfs.so.4.2.0
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /usr/lib/x86_64-linux-gnu/libopencv_img_hash.so.4.2.0
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /usr/lib/x86_64-linux-gnu/libopencv_line_descriptor.so.4.2.0
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /usr/lib/x86_64-linux-gnu/libopencv_optflow.so.4.2.0
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /usr/lib/x86_64-linux-gnu/libopencv_phase_unwrapping.so.4.2.0
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /usr/lib/x86_64-linux-gnu/libopencv_plot.so.4.2.0
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /usr/lib/x86_64-linux-gnu/libopencv_quality.so.4.2.0
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /usr/lib/x86_64-linux-gnu/libopencv_reg.so.4.2.0
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /usr/lib/x86_64-linux-gnu/libopencv_rgbd.so.4.2.0
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /usr/lib/x86_64-linux-gnu/libopencv_saliency.so.4.2.0
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /usr/lib/x86_64-linux-gnu/libopencv_shape.so.4.2.0
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /usr/lib/x86_64-linux-gnu/libopencv_stereo.so.4.2.0
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /usr/lib/x86_64-linux-gnu/libopencv_structured_light.so.4.2.0
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.4.2.0
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /usr/lib/x86_64-linux-gnu/libopencv_surface_matching.so.4.2.0
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /usr/lib/x86_64-linux-gnu/libopencv_text.so.4.2.0
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /usr/lib/x86_64-linux-gnu/libopencv_tracking.so.4.2.0
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.4.2.0
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /usr/lib/x86_64-linux-gnu/libopencv_viz.so.4.2.0
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /usr/lib/x86_64-linux-gnu/libopencv_ximgproc.so.4.2.0
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /usr/lib/x86_64-linux-gnu/libopencv_xobjdetect.so.4.2.0
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /usr/lib/x86_64-linux-gnu/libopencv_xphoto.so.4.2.0
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /usr/lib/x86_64-linux-gnu/libopencv_core.so.4.2.0
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.4.2.0
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /usr/lib/x86_64-linux-gnu/libopencv_imgcodecs.so.4.2.0
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /opt/ros/noetic/lib/librosconsole.so
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /opt/ros/noetic/lib/librosconsole_log4cxx.so
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /opt/ros/noetic/lib/librosconsole_backend_interface.so
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.71.0
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /opt/ros/noetic/lib/libroscpp_serialization.so
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /opt/ros/noetic/lib/librostime.so
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /opt/ros/noetic/lib/libcpp_common.so
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera: bismillah_fp/CMakeFiles/kamera.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/wildan/projek/bismillah magang IRIS 2021/FP/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable \"/home/wildan/projek/bismillah magang IRIS 2021/FP/devel/lib/bismillah_fp/kamera\""
	cd "/home/wildan/projek/bismillah magang IRIS 2021/FP/build/bismillah_fp" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/kamera.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
bismillah_fp/CMakeFiles/kamera.dir/build: /home/wildan/projek/bismillah\ magang\ IRIS\ 2021/FP/devel/lib/bismillah_fp/kamera

.PHONY : bismillah_fp/CMakeFiles/kamera.dir/build

bismillah_fp/CMakeFiles/kamera.dir/clean:
	cd "/home/wildan/projek/bismillah magang IRIS 2021/FP/build/bismillah_fp" && $(CMAKE_COMMAND) -P CMakeFiles/kamera.dir/cmake_clean.cmake
.PHONY : bismillah_fp/CMakeFiles/kamera.dir/clean

bismillah_fp/CMakeFiles/kamera.dir/depend:
	cd "/home/wildan/projek/bismillah magang IRIS 2021/FP/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/wildan/projek/bismillah magang IRIS 2021/FP/src" "/home/wildan/projek/bismillah magang IRIS 2021/FP/src/bismillah_fp" "/home/wildan/projek/bismillah magang IRIS 2021/FP/build" "/home/wildan/projek/bismillah magang IRIS 2021/FP/build/bismillah_fp" "/home/wildan/projek/bismillah magang IRIS 2021/FP/build/bismillah_fp/CMakeFiles/kamera.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : bismillah_fp/CMakeFiles/kamera.dir/depend

