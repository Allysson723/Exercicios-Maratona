# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.27

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
CMAKE_COMMAND = "C:\Users\0063398\AppData\Local\JetBrains\CLion 2023.3.4\bin\cmake\win\x64\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Users\0063398\AppData\Local\JetBrains\CLion 2023.3.4\bin\cmake\win\x64\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\0063398\Documents\Projects\Exercicios-Maratona

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\0063398\Documents\Projects\Exercicios-Maratona\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/rodovia.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/rodovia.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/rodovia.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/rodovia.dir/flags.make

CMakeFiles/rodovia.dir/Semana6/allysson/rodovia.cpp.obj: CMakeFiles/rodovia.dir/flags.make
CMakeFiles/rodovia.dir/Semana6/allysson/rodovia.cpp.obj: C:/Users/0063398/Documents/Projects/Exercicios-Maratona/Semana6/allysson/rodovia.cpp
CMakeFiles/rodovia.dir/Semana6/allysson/rodovia.cpp.obj: CMakeFiles/rodovia.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\0063398\Documents\Projects\Exercicios-Maratona\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/rodovia.dir/Semana6/allysson/rodovia.cpp.obj"
	C:\Users\0063398\AppData\Local\JETBRA~1\CLION2~1.4\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/rodovia.dir/Semana6/allysson/rodovia.cpp.obj -MF CMakeFiles\rodovia.dir\Semana6\allysson\rodovia.cpp.obj.d -o CMakeFiles\rodovia.dir\Semana6\allysson\rodovia.cpp.obj -c C:\Users\0063398\Documents\Projects\Exercicios-Maratona\Semana6\allysson\rodovia.cpp

CMakeFiles/rodovia.dir/Semana6/allysson/rodovia.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/rodovia.dir/Semana6/allysson/rodovia.cpp.i"
	C:\Users\0063398\AppData\Local\JETBRA~1\CLION2~1.4\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\0063398\Documents\Projects\Exercicios-Maratona\Semana6\allysson\rodovia.cpp > CMakeFiles\rodovia.dir\Semana6\allysson\rodovia.cpp.i

CMakeFiles/rodovia.dir/Semana6/allysson/rodovia.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/rodovia.dir/Semana6/allysson/rodovia.cpp.s"
	C:\Users\0063398\AppData\Local\JETBRA~1\CLION2~1.4\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\0063398\Documents\Projects\Exercicios-Maratona\Semana6\allysson\rodovia.cpp -o CMakeFiles\rodovia.dir\Semana6\allysson\rodovia.cpp.s

# Object files for target rodovia
rodovia_OBJECTS = \
"CMakeFiles/rodovia.dir/Semana6/allysson/rodovia.cpp.obj"

# External object files for target rodovia
rodovia_EXTERNAL_OBJECTS =

rodovia.exe: CMakeFiles/rodovia.dir/Semana6/allysson/rodovia.cpp.obj
rodovia.exe: CMakeFiles/rodovia.dir/build.make
rodovia.exe: CMakeFiles/rodovia.dir/linkLibs.rsp
rodovia.exe: CMakeFiles/rodovia.dir/objects1.rsp
rodovia.exe: CMakeFiles/rodovia.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:\Users\0063398\Documents\Projects\Exercicios-Maratona\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable rodovia.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\rodovia.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/rodovia.dir/build: rodovia.exe
.PHONY : CMakeFiles/rodovia.dir/build

CMakeFiles/rodovia.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\rodovia.dir\cmake_clean.cmake
.PHONY : CMakeFiles/rodovia.dir/clean

CMakeFiles/rodovia.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\0063398\Documents\Projects\Exercicios-Maratona C:\Users\0063398\Documents\Projects\Exercicios-Maratona C:\Users\0063398\Documents\Projects\Exercicios-Maratona\cmake-build-debug C:\Users\0063398\Documents\Projects\Exercicios-Maratona\cmake-build-debug C:\Users\0063398\Documents\Projects\Exercicios-Maratona\cmake-build-debug\CMakeFiles\rodovia.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/rodovia.dir/depend

