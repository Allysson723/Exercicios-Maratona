# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /app/extra/clion/bin/cmake/linux/x64/bin/cmake

# The command to remove a file.
RM = /app/extra/clion/bin/cmake/linux/x64/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/anybody/Documents/Projects/Exercicios-Maratona

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/anybody/Documents/Projects/Exercicios-Maratona/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/paciente.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/paciente.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/paciente.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/paciente.dir/flags.make

CMakeFiles/paciente.dir/Semana5/allysson/paciente.cpp.o: CMakeFiles/paciente.dir/flags.make
CMakeFiles/paciente.dir/Semana5/allysson/paciente.cpp.o: /home/anybody/Documents/Projects/Exercicios-Maratona/Semana5/allysson/paciente.cpp
CMakeFiles/paciente.dir/Semana5/allysson/paciente.cpp.o: CMakeFiles/paciente.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/anybody/Documents/Projects/Exercicios-Maratona/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/paciente.dir/Semana5/allysson/paciente.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/paciente.dir/Semana5/allysson/paciente.cpp.o -MF CMakeFiles/paciente.dir/Semana5/allysson/paciente.cpp.o.d -o CMakeFiles/paciente.dir/Semana5/allysson/paciente.cpp.o -c /home/anybody/Documents/Projects/Exercicios-Maratona/Semana5/allysson/paciente.cpp

CMakeFiles/paciente.dir/Semana5/allysson/paciente.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/paciente.dir/Semana5/allysson/paciente.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/anybody/Documents/Projects/Exercicios-Maratona/Semana5/allysson/paciente.cpp > CMakeFiles/paciente.dir/Semana5/allysson/paciente.cpp.i

CMakeFiles/paciente.dir/Semana5/allysson/paciente.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/paciente.dir/Semana5/allysson/paciente.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/anybody/Documents/Projects/Exercicios-Maratona/Semana5/allysson/paciente.cpp -o CMakeFiles/paciente.dir/Semana5/allysson/paciente.cpp.s

# Object files for target paciente
paciente_OBJECTS = \
"CMakeFiles/paciente.dir/Semana5/allysson/paciente.cpp.o"

# External object files for target paciente
paciente_EXTERNAL_OBJECTS =

paciente: CMakeFiles/paciente.dir/Semana5/allysson/paciente.cpp.o
paciente: CMakeFiles/paciente.dir/build.make
paciente: CMakeFiles/paciente.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/anybody/Documents/Projects/Exercicios-Maratona/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable paciente"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/paciente.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/paciente.dir/build: paciente
.PHONY : CMakeFiles/paciente.dir/build

CMakeFiles/paciente.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/paciente.dir/cmake_clean.cmake
.PHONY : CMakeFiles/paciente.dir/clean

CMakeFiles/paciente.dir/depend:
	cd /home/anybody/Documents/Projects/Exercicios-Maratona/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/anybody/Documents/Projects/Exercicios-Maratona /home/anybody/Documents/Projects/Exercicios-Maratona /home/anybody/Documents/Projects/Exercicios-Maratona/cmake-build-debug /home/anybody/Documents/Projects/Exercicios-Maratona/cmake-build-debug /home/anybody/Documents/Projects/Exercicios-Maratona/cmake-build-debug/CMakeFiles/paciente.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/paciente.dir/depend

