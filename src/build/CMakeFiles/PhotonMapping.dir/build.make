# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/siyu/graphics/mine/src3

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/siyu/graphics/mine/src3/build

# Include any dependencies generated for this target.
include CMakeFiles/PhotonMapping.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/PhotonMapping.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/PhotonMapping.dir/flags.make

CMakeFiles/PhotonMapping.dir/Camera.cpp.o: CMakeFiles/PhotonMapping.dir/flags.make
CMakeFiles/PhotonMapping.dir/Camera.cpp.o: ../Camera.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/siyu/graphics/mine/src3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/PhotonMapping.dir/Camera.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/PhotonMapping.dir/Camera.cpp.o -c /home/siyu/graphics/mine/src3/Camera.cpp

CMakeFiles/PhotonMapping.dir/Camera.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PhotonMapping.dir/Camera.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/siyu/graphics/mine/src3/Camera.cpp > CMakeFiles/PhotonMapping.dir/Camera.cpp.i

CMakeFiles/PhotonMapping.dir/Camera.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PhotonMapping.dir/Camera.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/siyu/graphics/mine/src3/Camera.cpp -o CMakeFiles/PhotonMapping.dir/Camera.cpp.s

CMakeFiles/PhotonMapping.dir/Camera.cpp.o.requires:

.PHONY : CMakeFiles/PhotonMapping.dir/Camera.cpp.o.requires

CMakeFiles/PhotonMapping.dir/Camera.cpp.o.provides: CMakeFiles/PhotonMapping.dir/Camera.cpp.o.requires
	$(MAKE) -f CMakeFiles/PhotonMapping.dir/build.make CMakeFiles/PhotonMapping.dir/Camera.cpp.o.provides.build
.PHONY : CMakeFiles/PhotonMapping.dir/Camera.cpp.o.provides

CMakeFiles/PhotonMapping.dir/Camera.cpp.o.provides.build: CMakeFiles/PhotonMapping.dir/Camera.cpp.o


CMakeFiles/PhotonMapping.dir/NormalSphere.cpp.o: CMakeFiles/PhotonMapping.dir/flags.make
CMakeFiles/PhotonMapping.dir/NormalSphere.cpp.o: ../NormalSphere.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/siyu/graphics/mine/src3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/PhotonMapping.dir/NormalSphere.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/PhotonMapping.dir/NormalSphere.cpp.o -c /home/siyu/graphics/mine/src3/NormalSphere.cpp

CMakeFiles/PhotonMapping.dir/NormalSphere.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PhotonMapping.dir/NormalSphere.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/siyu/graphics/mine/src3/NormalSphere.cpp > CMakeFiles/PhotonMapping.dir/NormalSphere.cpp.i

CMakeFiles/PhotonMapping.dir/NormalSphere.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PhotonMapping.dir/NormalSphere.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/siyu/graphics/mine/src3/NormalSphere.cpp -o CMakeFiles/PhotonMapping.dir/NormalSphere.cpp.s

CMakeFiles/PhotonMapping.dir/NormalSphere.cpp.o.requires:

.PHONY : CMakeFiles/PhotonMapping.dir/NormalSphere.cpp.o.requires

CMakeFiles/PhotonMapping.dir/NormalSphere.cpp.o.provides: CMakeFiles/PhotonMapping.dir/NormalSphere.cpp.o.requires
	$(MAKE) -f CMakeFiles/PhotonMapping.dir/build.make CMakeFiles/PhotonMapping.dir/NormalSphere.cpp.o.provides.build
.PHONY : CMakeFiles/PhotonMapping.dir/NormalSphere.cpp.o.provides

CMakeFiles/PhotonMapping.dir/NormalSphere.cpp.o.provides.build: CMakeFiles/PhotonMapping.dir/NormalSphere.cpp.o


CMakeFiles/PhotonMapping.dir/Renderer.cpp.o: CMakeFiles/PhotonMapping.dir/flags.make
CMakeFiles/PhotonMapping.dir/Renderer.cpp.o: ../Renderer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/siyu/graphics/mine/src3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/PhotonMapping.dir/Renderer.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/PhotonMapping.dir/Renderer.cpp.o -c /home/siyu/graphics/mine/src3/Renderer.cpp

CMakeFiles/PhotonMapping.dir/Renderer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PhotonMapping.dir/Renderer.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/siyu/graphics/mine/src3/Renderer.cpp > CMakeFiles/PhotonMapping.dir/Renderer.cpp.i

CMakeFiles/PhotonMapping.dir/Renderer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PhotonMapping.dir/Renderer.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/siyu/graphics/mine/src3/Renderer.cpp -o CMakeFiles/PhotonMapping.dir/Renderer.cpp.s

CMakeFiles/PhotonMapping.dir/Renderer.cpp.o.requires:

.PHONY : CMakeFiles/PhotonMapping.dir/Renderer.cpp.o.requires

CMakeFiles/PhotonMapping.dir/Renderer.cpp.o.provides: CMakeFiles/PhotonMapping.dir/Renderer.cpp.o.requires
	$(MAKE) -f CMakeFiles/PhotonMapping.dir/build.make CMakeFiles/PhotonMapping.dir/Renderer.cpp.o.provides.build
.PHONY : CMakeFiles/PhotonMapping.dir/Renderer.cpp.o.provides

CMakeFiles/PhotonMapping.dir/Renderer.cpp.o.provides.build: CMakeFiles/PhotonMapping.dir/Renderer.cpp.o


CMakeFiles/PhotonMapping.dir/Plane.cpp.o: CMakeFiles/PhotonMapping.dir/flags.make
CMakeFiles/PhotonMapping.dir/Plane.cpp.o: ../Plane.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/siyu/graphics/mine/src3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/PhotonMapping.dir/Plane.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/PhotonMapping.dir/Plane.cpp.o -c /home/siyu/graphics/mine/src3/Plane.cpp

CMakeFiles/PhotonMapping.dir/Plane.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PhotonMapping.dir/Plane.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/siyu/graphics/mine/src3/Plane.cpp > CMakeFiles/PhotonMapping.dir/Plane.cpp.i

CMakeFiles/PhotonMapping.dir/Plane.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PhotonMapping.dir/Plane.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/siyu/graphics/mine/src3/Plane.cpp -o CMakeFiles/PhotonMapping.dir/Plane.cpp.s

CMakeFiles/PhotonMapping.dir/Plane.cpp.o.requires:

.PHONY : CMakeFiles/PhotonMapping.dir/Plane.cpp.o.requires

CMakeFiles/PhotonMapping.dir/Plane.cpp.o.provides: CMakeFiles/PhotonMapping.dir/Plane.cpp.o.requires
	$(MAKE) -f CMakeFiles/PhotonMapping.dir/build.make CMakeFiles/PhotonMapping.dir/Plane.cpp.o.provides.build
.PHONY : CMakeFiles/PhotonMapping.dir/Plane.cpp.o.provides

CMakeFiles/PhotonMapping.dir/Plane.cpp.o.provides.build: CMakeFiles/PhotonMapping.dir/Plane.cpp.o


CMakeFiles/PhotonMapping.dir/Sphere.cpp.o: CMakeFiles/PhotonMapping.dir/flags.make
CMakeFiles/PhotonMapping.dir/Sphere.cpp.o: ../Sphere.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/siyu/graphics/mine/src3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/PhotonMapping.dir/Sphere.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/PhotonMapping.dir/Sphere.cpp.o -c /home/siyu/graphics/mine/src3/Sphere.cpp

CMakeFiles/PhotonMapping.dir/Sphere.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PhotonMapping.dir/Sphere.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/siyu/graphics/mine/src3/Sphere.cpp > CMakeFiles/PhotonMapping.dir/Sphere.cpp.i

CMakeFiles/PhotonMapping.dir/Sphere.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PhotonMapping.dir/Sphere.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/siyu/graphics/mine/src3/Sphere.cpp -o CMakeFiles/PhotonMapping.dir/Sphere.cpp.s

CMakeFiles/PhotonMapping.dir/Sphere.cpp.o.requires:

.PHONY : CMakeFiles/PhotonMapping.dir/Sphere.cpp.o.requires

CMakeFiles/PhotonMapping.dir/Sphere.cpp.o.provides: CMakeFiles/PhotonMapping.dir/Sphere.cpp.o.requires
	$(MAKE) -f CMakeFiles/PhotonMapping.dir/build.make CMakeFiles/PhotonMapping.dir/Sphere.cpp.o.provides.build
.PHONY : CMakeFiles/PhotonMapping.dir/Sphere.cpp.o.provides

CMakeFiles/PhotonMapping.dir/Sphere.cpp.o.provides.build: CMakeFiles/PhotonMapping.dir/Sphere.cpp.o


CMakeFiles/PhotonMapping.dir/Vec3.cpp.o: CMakeFiles/PhotonMapping.dir/flags.make
CMakeFiles/PhotonMapping.dir/Vec3.cpp.o: ../Vec3.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/siyu/graphics/mine/src3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/PhotonMapping.dir/Vec3.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/PhotonMapping.dir/Vec3.cpp.o -c /home/siyu/graphics/mine/src3/Vec3.cpp

CMakeFiles/PhotonMapping.dir/Vec3.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PhotonMapping.dir/Vec3.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/siyu/graphics/mine/src3/Vec3.cpp > CMakeFiles/PhotonMapping.dir/Vec3.cpp.i

CMakeFiles/PhotonMapping.dir/Vec3.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PhotonMapping.dir/Vec3.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/siyu/graphics/mine/src3/Vec3.cpp -o CMakeFiles/PhotonMapping.dir/Vec3.cpp.s

CMakeFiles/PhotonMapping.dir/Vec3.cpp.o.requires:

.PHONY : CMakeFiles/PhotonMapping.dir/Vec3.cpp.o.requires

CMakeFiles/PhotonMapping.dir/Vec3.cpp.o.provides: CMakeFiles/PhotonMapping.dir/Vec3.cpp.o.requires
	$(MAKE) -f CMakeFiles/PhotonMapping.dir/build.make CMakeFiles/PhotonMapping.dir/Vec3.cpp.o.provides.build
.PHONY : CMakeFiles/PhotonMapping.dir/Vec3.cpp.o.provides

CMakeFiles/PhotonMapping.dir/Vec3.cpp.o.provides.build: CMakeFiles/PhotonMapping.dir/Vec3.cpp.o


CMakeFiles/PhotonMapping.dir/main.cpp.o: CMakeFiles/PhotonMapping.dir/flags.make
CMakeFiles/PhotonMapping.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/siyu/graphics/mine/src3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/PhotonMapping.dir/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/PhotonMapping.dir/main.cpp.o -c /home/siyu/graphics/mine/src3/main.cpp

CMakeFiles/PhotonMapping.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PhotonMapping.dir/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/siyu/graphics/mine/src3/main.cpp > CMakeFiles/PhotonMapping.dir/main.cpp.i

CMakeFiles/PhotonMapping.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PhotonMapping.dir/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/siyu/graphics/mine/src3/main.cpp -o CMakeFiles/PhotonMapping.dir/main.cpp.s

CMakeFiles/PhotonMapping.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/PhotonMapping.dir/main.cpp.o.requires

CMakeFiles/PhotonMapping.dir/main.cpp.o.provides: CMakeFiles/PhotonMapping.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/PhotonMapping.dir/build.make CMakeFiles/PhotonMapping.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/PhotonMapping.dir/main.cpp.o.provides

CMakeFiles/PhotonMapping.dir/main.cpp.o.provides.build: CMakeFiles/PhotonMapping.dir/main.cpp.o


CMakeFiles/PhotonMapping.dir/Double3Bezier.cpp.o: CMakeFiles/PhotonMapping.dir/flags.make
CMakeFiles/PhotonMapping.dir/Double3Bezier.cpp.o: ../Double3Bezier.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/siyu/graphics/mine/src3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/PhotonMapping.dir/Double3Bezier.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/PhotonMapping.dir/Double3Bezier.cpp.o -c /home/siyu/graphics/mine/src3/Double3Bezier.cpp

CMakeFiles/PhotonMapping.dir/Double3Bezier.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PhotonMapping.dir/Double3Bezier.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/siyu/graphics/mine/src3/Double3Bezier.cpp > CMakeFiles/PhotonMapping.dir/Double3Bezier.cpp.i

CMakeFiles/PhotonMapping.dir/Double3Bezier.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PhotonMapping.dir/Double3Bezier.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/siyu/graphics/mine/src3/Double3Bezier.cpp -o CMakeFiles/PhotonMapping.dir/Double3Bezier.cpp.s

CMakeFiles/PhotonMapping.dir/Double3Bezier.cpp.o.requires:

.PHONY : CMakeFiles/PhotonMapping.dir/Double3Bezier.cpp.o.requires

CMakeFiles/PhotonMapping.dir/Double3Bezier.cpp.o.provides: CMakeFiles/PhotonMapping.dir/Double3Bezier.cpp.o.requires
	$(MAKE) -f CMakeFiles/PhotonMapping.dir/build.make CMakeFiles/PhotonMapping.dir/Double3Bezier.cpp.o.provides.build
.PHONY : CMakeFiles/PhotonMapping.dir/Double3Bezier.cpp.o.provides

CMakeFiles/PhotonMapping.dir/Double3Bezier.cpp.o.provides.build: CMakeFiles/PhotonMapping.dir/Double3Bezier.cpp.o


CMakeFiles/PhotonMapping.dir/Object.cpp.o: CMakeFiles/PhotonMapping.dir/flags.make
CMakeFiles/PhotonMapping.dir/Object.cpp.o: ../Object.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/siyu/graphics/mine/src3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/PhotonMapping.dir/Object.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/PhotonMapping.dir/Object.cpp.o -c /home/siyu/graphics/mine/src3/Object.cpp

CMakeFiles/PhotonMapping.dir/Object.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PhotonMapping.dir/Object.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/siyu/graphics/mine/src3/Object.cpp > CMakeFiles/PhotonMapping.dir/Object.cpp.i

CMakeFiles/PhotonMapping.dir/Object.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PhotonMapping.dir/Object.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/siyu/graphics/mine/src3/Object.cpp -o CMakeFiles/PhotonMapping.dir/Object.cpp.s

CMakeFiles/PhotonMapping.dir/Object.cpp.o.requires:

.PHONY : CMakeFiles/PhotonMapping.dir/Object.cpp.o.requires

CMakeFiles/PhotonMapping.dir/Object.cpp.o.provides: CMakeFiles/PhotonMapping.dir/Object.cpp.o.requires
	$(MAKE) -f CMakeFiles/PhotonMapping.dir/build.make CMakeFiles/PhotonMapping.dir/Object.cpp.o.provides.build
.PHONY : CMakeFiles/PhotonMapping.dir/Object.cpp.o.provides

CMakeFiles/PhotonMapping.dir/Object.cpp.o.provides.build: CMakeFiles/PhotonMapping.dir/Object.cpp.o


CMakeFiles/PhotonMapping.dir/Light.cpp.o: CMakeFiles/PhotonMapping.dir/flags.make
CMakeFiles/PhotonMapping.dir/Light.cpp.o: ../Light.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/siyu/graphics/mine/src3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/PhotonMapping.dir/Light.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/PhotonMapping.dir/Light.cpp.o -c /home/siyu/graphics/mine/src3/Light.cpp

CMakeFiles/PhotonMapping.dir/Light.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PhotonMapping.dir/Light.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/siyu/graphics/mine/src3/Light.cpp > CMakeFiles/PhotonMapping.dir/Light.cpp.i

CMakeFiles/PhotonMapping.dir/Light.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PhotonMapping.dir/Light.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/siyu/graphics/mine/src3/Light.cpp -o CMakeFiles/PhotonMapping.dir/Light.cpp.s

CMakeFiles/PhotonMapping.dir/Light.cpp.o.requires:

.PHONY : CMakeFiles/PhotonMapping.dir/Light.cpp.o.requires

CMakeFiles/PhotonMapping.dir/Light.cpp.o.provides: CMakeFiles/PhotonMapping.dir/Light.cpp.o.requires
	$(MAKE) -f CMakeFiles/PhotonMapping.dir/build.make CMakeFiles/PhotonMapping.dir/Light.cpp.o.provides.build
.PHONY : CMakeFiles/PhotonMapping.dir/Light.cpp.o.provides

CMakeFiles/PhotonMapping.dir/Light.cpp.o.provides.build: CMakeFiles/PhotonMapping.dir/Light.cpp.o


CMakeFiles/PhotonMapping.dir/World.cpp.o: CMakeFiles/PhotonMapping.dir/flags.make
CMakeFiles/PhotonMapping.dir/World.cpp.o: ../World.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/siyu/graphics/mine/src3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/PhotonMapping.dir/World.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/PhotonMapping.dir/World.cpp.o -c /home/siyu/graphics/mine/src3/World.cpp

CMakeFiles/PhotonMapping.dir/World.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PhotonMapping.dir/World.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/siyu/graphics/mine/src3/World.cpp > CMakeFiles/PhotonMapping.dir/World.cpp.i

CMakeFiles/PhotonMapping.dir/World.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PhotonMapping.dir/World.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/siyu/graphics/mine/src3/World.cpp -o CMakeFiles/PhotonMapping.dir/World.cpp.s

CMakeFiles/PhotonMapping.dir/World.cpp.o.requires:

.PHONY : CMakeFiles/PhotonMapping.dir/World.cpp.o.requires

CMakeFiles/PhotonMapping.dir/World.cpp.o.provides: CMakeFiles/PhotonMapping.dir/World.cpp.o.requires
	$(MAKE) -f CMakeFiles/PhotonMapping.dir/build.make CMakeFiles/PhotonMapping.dir/World.cpp.o.provides.build
.PHONY : CMakeFiles/PhotonMapping.dir/World.cpp.o.provides

CMakeFiles/PhotonMapping.dir/World.cpp.o.provides.build: CMakeFiles/PhotonMapping.dir/World.cpp.o


CMakeFiles/PhotonMapping.dir/utils.cpp.o: CMakeFiles/PhotonMapping.dir/flags.make
CMakeFiles/PhotonMapping.dir/utils.cpp.o: ../utils.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/siyu/graphics/mine/src3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/PhotonMapping.dir/utils.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/PhotonMapping.dir/utils.cpp.o -c /home/siyu/graphics/mine/src3/utils.cpp

CMakeFiles/PhotonMapping.dir/utils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PhotonMapping.dir/utils.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/siyu/graphics/mine/src3/utils.cpp > CMakeFiles/PhotonMapping.dir/utils.cpp.i

CMakeFiles/PhotonMapping.dir/utils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PhotonMapping.dir/utils.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/siyu/graphics/mine/src3/utils.cpp -o CMakeFiles/PhotonMapping.dir/utils.cpp.s

CMakeFiles/PhotonMapping.dir/utils.cpp.o.requires:

.PHONY : CMakeFiles/PhotonMapping.dir/utils.cpp.o.requires

CMakeFiles/PhotonMapping.dir/utils.cpp.o.provides: CMakeFiles/PhotonMapping.dir/utils.cpp.o.requires
	$(MAKE) -f CMakeFiles/PhotonMapping.dir/build.make CMakeFiles/PhotonMapping.dir/utils.cpp.o.provides.build
.PHONY : CMakeFiles/PhotonMapping.dir/utils.cpp.o.provides

CMakeFiles/PhotonMapping.dir/utils.cpp.o.provides.build: CMakeFiles/PhotonMapping.dir/utils.cpp.o


# Object files for target PhotonMapping
PhotonMapping_OBJECTS = \
"CMakeFiles/PhotonMapping.dir/Camera.cpp.o" \
"CMakeFiles/PhotonMapping.dir/NormalSphere.cpp.o" \
"CMakeFiles/PhotonMapping.dir/Renderer.cpp.o" \
"CMakeFiles/PhotonMapping.dir/Plane.cpp.o" \
"CMakeFiles/PhotonMapping.dir/Sphere.cpp.o" \
"CMakeFiles/PhotonMapping.dir/Vec3.cpp.o" \
"CMakeFiles/PhotonMapping.dir/main.cpp.o" \
"CMakeFiles/PhotonMapping.dir/Double3Bezier.cpp.o" \
"CMakeFiles/PhotonMapping.dir/Object.cpp.o" \
"CMakeFiles/PhotonMapping.dir/Light.cpp.o" \
"CMakeFiles/PhotonMapping.dir/World.cpp.o" \
"CMakeFiles/PhotonMapping.dir/utils.cpp.o"

# External object files for target PhotonMapping
PhotonMapping_EXTERNAL_OBJECTS =

PhotonMapping: CMakeFiles/PhotonMapping.dir/Camera.cpp.o
PhotonMapping: CMakeFiles/PhotonMapping.dir/NormalSphere.cpp.o
PhotonMapping: CMakeFiles/PhotonMapping.dir/Renderer.cpp.o
PhotonMapping: CMakeFiles/PhotonMapping.dir/Plane.cpp.o
PhotonMapping: CMakeFiles/PhotonMapping.dir/Sphere.cpp.o
PhotonMapping: CMakeFiles/PhotonMapping.dir/Vec3.cpp.o
PhotonMapping: CMakeFiles/PhotonMapping.dir/main.cpp.o
PhotonMapping: CMakeFiles/PhotonMapping.dir/Double3Bezier.cpp.o
PhotonMapping: CMakeFiles/PhotonMapping.dir/Object.cpp.o
PhotonMapping: CMakeFiles/PhotonMapping.dir/Light.cpp.o
PhotonMapping: CMakeFiles/PhotonMapping.dir/World.cpp.o
PhotonMapping: CMakeFiles/PhotonMapping.dir/utils.cpp.o
PhotonMapping: CMakeFiles/PhotonMapping.dir/build.make
PhotonMapping: /home/siyu/opencv2/lib/libopencv_superres.so.4.0.0
PhotonMapping: /home/siyu/opencv2/lib/libopencv_objdetect.so.4.0.0
PhotonMapping: /home/siyu/opencv2/lib/libopencv_ml.so.4.0.0
PhotonMapping: /home/siyu/opencv2/lib/libopencv_dnn.so.4.0.0
PhotonMapping: /home/siyu/opencv2/lib/libopencv_shape.so.4.0.0
PhotonMapping: /home/siyu/opencv2/lib/libopencv_stitching.so.4.0.0
PhotonMapping: /home/siyu/opencv2/lib/libopencv_videostab.so.4.0.0
PhotonMapping: /home/siyu/opencv2/lib/libopencv_calib3d.so.4.0.0
PhotonMapping: /home/siyu/opencv2/lib/libopencv_photo.so.4.0.0
PhotonMapping: /home/siyu/opencv2/lib/libopencv_video.so.4.0.0
PhotonMapping: /home/siyu/opencv2/lib/libopencv_features2d.so.4.0.0
PhotonMapping: /home/siyu/opencv2/lib/libopencv_flann.so.4.0.0
PhotonMapping: /home/siyu/opencv2/lib/libopencv_highgui.so.4.0.0
PhotonMapping: /home/siyu/opencv2/lib/libopencv_videoio.so.4.0.0
PhotonMapping: /home/siyu/opencv2/lib/libopencv_imgcodecs.so.4.0.0
PhotonMapping: /home/siyu/opencv2/lib/libopencv_imgproc.so.4.0.0
PhotonMapping: /home/siyu/opencv2/lib/libopencv_core.so.4.0.0
PhotonMapping: CMakeFiles/PhotonMapping.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/siyu/graphics/mine/src3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Linking CXX executable PhotonMapping"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/PhotonMapping.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/PhotonMapping.dir/build: PhotonMapping

.PHONY : CMakeFiles/PhotonMapping.dir/build

CMakeFiles/PhotonMapping.dir/requires: CMakeFiles/PhotonMapping.dir/Camera.cpp.o.requires
CMakeFiles/PhotonMapping.dir/requires: CMakeFiles/PhotonMapping.dir/NormalSphere.cpp.o.requires
CMakeFiles/PhotonMapping.dir/requires: CMakeFiles/PhotonMapping.dir/Renderer.cpp.o.requires
CMakeFiles/PhotonMapping.dir/requires: CMakeFiles/PhotonMapping.dir/Plane.cpp.o.requires
CMakeFiles/PhotonMapping.dir/requires: CMakeFiles/PhotonMapping.dir/Sphere.cpp.o.requires
CMakeFiles/PhotonMapping.dir/requires: CMakeFiles/PhotonMapping.dir/Vec3.cpp.o.requires
CMakeFiles/PhotonMapping.dir/requires: CMakeFiles/PhotonMapping.dir/main.cpp.o.requires
CMakeFiles/PhotonMapping.dir/requires: CMakeFiles/PhotonMapping.dir/Double3Bezier.cpp.o.requires
CMakeFiles/PhotonMapping.dir/requires: CMakeFiles/PhotonMapping.dir/Object.cpp.o.requires
CMakeFiles/PhotonMapping.dir/requires: CMakeFiles/PhotonMapping.dir/Light.cpp.o.requires
CMakeFiles/PhotonMapping.dir/requires: CMakeFiles/PhotonMapping.dir/World.cpp.o.requires
CMakeFiles/PhotonMapping.dir/requires: CMakeFiles/PhotonMapping.dir/utils.cpp.o.requires

.PHONY : CMakeFiles/PhotonMapping.dir/requires

CMakeFiles/PhotonMapping.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/PhotonMapping.dir/cmake_clean.cmake
.PHONY : CMakeFiles/PhotonMapping.dir/clean

CMakeFiles/PhotonMapping.dir/depend:
	cd /home/siyu/graphics/mine/src3/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/siyu/graphics/mine/src3 /home/siyu/graphics/mine/src3 /home/siyu/graphics/mine/src3/build /home/siyu/graphics/mine/src3/build /home/siyu/graphics/mine/src3/build/CMakeFiles/PhotonMapping.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/PhotonMapping.dir/depend

