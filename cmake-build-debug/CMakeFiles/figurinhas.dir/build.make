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
include CMakeFiles/figurinhas.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/figurinhas.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/figurinhas.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/figurinhas.dir/flags.make

CMakeFiles/figurinhas.dir/Semana1/figurinhas.cpp.o: CMakeFiles/figurinhas.dir/flags.make
CMakeFiles/figurinhas.dir/Semana1/figurinhas.cpp.o: /home/anybody/Documents/Projects/Exercicios-Maratona/Semana1/figurinhas.cpp
CMakeFiles/figurinhas.dir/Semana1/figurinhas.cpp.o: CMakeFiles/figurinhas.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/anybody/Documents/Projects/Exercicios-Maratona/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/figurinhas.dir/Semana1/figurinhas.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/figurinhas.dir/Semana1/figurinhas.cpp.o -MF CMakeFiles/figurinhas.dir/Semana1/figurinhas.cpp.o.d -o CMakeFiles/figurinhas.dir/Semana1/figurinhas.cpp.o -c /home/anybody/Documents/Projects/Exercicios-Maratona/Semana1/figurinhas.cpp

CMakeFiles/figurinhas.dir/Semana1/figurinhas.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/figurinhas.dir/Semana1/figurinhas.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/anybody/Documents/Projects/Exercicios-Maratona/Semana1/figurinhas.cpp > CMakeFiles/figurinhas.dir/Semana1/figurinhas.cpp.i

CMakeFiles/figurinhas.dir/Semana1/figurinhas.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/figurinhas.dir/Semana1/figurinhas.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/anybody/Documents/Projects/Exercicios-Maratona/Semana1/figurinhas.cpp -o CMakeFiles/figurinhas.dir/Semana1/figurinhas.cpp.s

# Object files for target figurinhas
figurinhas_OBJECTS = \
"CMakeFiles/figurinhas.dir/Semana1/figurinhas.cpp.o"

# External object files for target figurinhas
figurinhas_EXTERNAL_OBJECTS =

figurinhas: CMakeFiles/figurinhas.dir/Semana1/figurinhas.cpp.o
figurinhas: CMakeFiles/figurinhas.dir/build.make
figurinhas: CMakeFiles/figurinhas.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/anybody/Documents/Projects/Exercicios-Maratona/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable figurinhas"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/figurinhas.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/figurinhas.dir/build: figurinhas
.PHONY : CMakeFiles/figurinhas.dir/build

CMakeFiles/figurinhas.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/figurinhas.dir/cmake_clean.cmake
.PHONY : CMakeFiles/figurinhas.dir/clean

CMakeFiles/figurinhas.dir/depend:
	cd /home/anybody/Documents/Projects/Exercicios-Maratona/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/anybody/Documents/Projects/Exercicios-Maratona /home/anybody/Documents/Projects/Exercicios-Maratona /home/anybody/Documents/Projects/Exercicios-Maratona/cmake-build-debug /home/anybody/Documents/Projects/Exercicios-Maratona/cmake-build-debug /home/anybody/Documents/Projects/Exercicios-Maratona/cmake-build-debug/CMakeFiles/figurinhas.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/figurinhas.dir/depend

