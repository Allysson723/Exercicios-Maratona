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
include CMakeFiles/wifi.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/wifi.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/wifi.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/wifi.dir/flags.make

CMakeFiles/wifi.dir/Semana2/wifi.cpp.obj: CMakeFiles/wifi.dir/flags.make
CMakeFiles/wifi.dir/Semana2/wifi.cpp.obj: C:/Users/0063398/Documents/Projects/Exercicios-Maratona/Semana2/wifi.cpp
CMakeFiles/wifi.dir/Semana2/wifi.cpp.obj: CMakeFiles/wifi.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\0063398\Documents\Projects\Exercicios-Maratona\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/wifi.dir/Semana2/wifi.cpp.obj"
	C:\Users\0063398\AppData\Local\JETBRA~1\CLION2~1.4\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/wifi.dir/Semana2/wifi.cpp.obj -MF CMakeFiles\wifi.dir\Semana2\wifi.cpp.obj.d -o CMakeFiles\wifi.dir\Semana2\wifi.cpp.obj -c C:\Users\0063398\Documents\Projects\Exercicios-Maratona\Semana2\wifi.cpp

CMakeFiles/wifi.dir/Semana2/wifi.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/wifi.dir/Semana2/wifi.cpp.i"
	C:\Users\0063398\AppData\Local\JETBRA~1\CLION2~1.4\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\0063398\Documents\Projects\Exercicios-Maratona\Semana2\wifi.cpp > CMakeFiles\wifi.dir\Semana2\wifi.cpp.i

CMakeFiles/wifi.dir/Semana2/wifi.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/wifi.dir/Semana2/wifi.cpp.s"
	C:\Users\0063398\AppData\Local\JETBRA~1\CLION2~1.4\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\0063398\Documents\Projects\Exercicios-Maratona\Semana2\wifi.cpp -o CMakeFiles\wifi.dir\Semana2\wifi.cpp.s

# Object files for target wifi
wifi_OBJECTS = \
"CMakeFiles/wifi.dir/Semana2/wifi.cpp.obj"

# External object files for target wifi
wifi_EXTERNAL_OBJECTS =

wifi.exe: CMakeFiles/wifi.dir/Semana2/wifi.cpp.obj
wifi.exe: CMakeFiles/wifi.dir/build.make
wifi.exe: CMakeFiles/wifi.dir/linkLibs.rsp
wifi.exe: CMakeFiles/wifi.dir/objects1.rsp
wifi.exe: CMakeFiles/wifi.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:\Users\0063398\Documents\Projects\Exercicios-Maratona\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable wifi.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\wifi.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/wifi.dir/build: wifi.exe
.PHONY : CMakeFiles/wifi.dir/build

CMakeFiles/wifi.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\wifi.dir\cmake_clean.cmake
.PHONY : CMakeFiles/wifi.dir/clean

CMakeFiles/wifi.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\0063398\Documents\Projects\Exercicios-Maratona C:\Users\0063398\Documents\Projects\Exercicios-Maratona C:\Users\0063398\Documents\Projects\Exercicios-Maratona\cmake-build-debug C:\Users\0063398\Documents\Projects\Exercicios-Maratona\cmake-build-debug C:\Users\0063398\Documents\Projects\Exercicios-Maratona\cmake-build-debug\CMakeFiles\wifi.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/wifi.dir/depend

