# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.20

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2021.2.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2021.2.2\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\sibir_labs\project-technopark

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\sibir_labs\project-technopark\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/project_technopark.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/project_technopark.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/project_technopark.dir/flags.make

CMakeFiles/project_technopark.dir/main.cpp.obj: CMakeFiles/project_technopark.dir/flags.make
CMakeFiles/project_technopark.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\sibir_labs\project-technopark\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/project_technopark.dir/main.cpp.obj"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-W\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\project_technopark.dir\main.cpp.obj -c C:\sibir_labs\project-technopark\main.cpp

CMakeFiles/project_technopark.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/project_technopark.dir/main.cpp.i"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-W\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\sibir_labs\project-technopark\main.cpp > CMakeFiles\project_technopark.dir\main.cpp.i

CMakeFiles/project_technopark.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/project_technopark.dir/main.cpp.s"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-W\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\sibir_labs\project-technopark\main.cpp -o CMakeFiles\project_technopark.dir\main.cpp.s

# Object files for target project_technopark
project_technopark_OBJECTS = \
"CMakeFiles/project_technopark.dir/main.cpp.obj"

# External object files for target project_technopark
project_technopark_EXTERNAL_OBJECTS =

project_technopark.exe: CMakeFiles/project_technopark.dir/main.cpp.obj
project_technopark.exe: CMakeFiles/project_technopark.dir/build.make
project_technopark.exe: CMakeFiles/project_technopark.dir/linklibs.rsp
project_technopark.exe: CMakeFiles/project_technopark.dir/objects1.rsp
project_technopark.exe: CMakeFiles/project_technopark.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\sibir_labs\project-technopark\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable project_technopark.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\project_technopark.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/project_technopark.dir/build: project_technopark.exe
.PHONY : CMakeFiles/project_technopark.dir/build

CMakeFiles/project_technopark.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\project_technopark.dir\cmake_clean.cmake
.PHONY : CMakeFiles/project_technopark.dir/clean

CMakeFiles/project_technopark.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\sibir_labs\project-technopark C:\sibir_labs\project-technopark C:\sibir_labs\project-technopark\cmake-build-debug C:\sibir_labs\project-technopark\cmake-build-debug C:\sibir_labs\project-technopark\cmake-build-debug\CMakeFiles\project_technopark.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/project_technopark.dir/depend
