# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /opt2/ohpc/pub/utils/cmake/3.15.4/bin/cmake

# The command to remove a file.
RM = /opt2/ohpc/pub/utils/cmake/3.15.4/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/mgisonni/group_project/MPI_only

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mgisonni/group_project/MPI_only/build

# Include any dependencies generated for this target.
include CMakeFiles/mdlib-util.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/mdlib-util.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/mdlib-util.dir/flags.make

CMakeFiles/mdlib-util.dir/src/utilities.c.o: CMakeFiles/mdlib-util.dir/flags.make
CMakeFiles/mdlib-util.dir/src/utilities.c.o: ../src/utilities.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mgisonni/group_project/MPI_only/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/mdlib-util.dir/src/utilities.c.o"
	/opt/rh/devtoolset-6/root/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mdlib-util.dir/src/utilities.c.o   -c /home/mgisonni/group_project/MPI_only/src/utilities.c

CMakeFiles/mdlib-util.dir/src/utilities.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mdlib-util.dir/src/utilities.c.i"
	/opt/rh/devtoolset-6/root/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/mgisonni/group_project/MPI_only/src/utilities.c > CMakeFiles/mdlib-util.dir/src/utilities.c.i

CMakeFiles/mdlib-util.dir/src/utilities.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mdlib-util.dir/src/utilities.c.s"
	/opt/rh/devtoolset-6/root/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/mgisonni/group_project/MPI_only/src/utilities.c -o CMakeFiles/mdlib-util.dir/src/utilities.c.s

CMakeFiles/mdlib-util.dir/src/verlet_ti.c.o: CMakeFiles/mdlib-util.dir/flags.make
CMakeFiles/mdlib-util.dir/src/verlet_ti.c.o: ../src/verlet_ti.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mgisonni/group_project/MPI_only/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/mdlib-util.dir/src/verlet_ti.c.o"
	/opt/rh/devtoolset-6/root/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mdlib-util.dir/src/verlet_ti.c.o   -c /home/mgisonni/group_project/MPI_only/src/verlet_ti.c

CMakeFiles/mdlib-util.dir/src/verlet_ti.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mdlib-util.dir/src/verlet_ti.c.i"
	/opt/rh/devtoolset-6/root/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/mgisonni/group_project/MPI_only/src/verlet_ti.c > CMakeFiles/mdlib-util.dir/src/verlet_ti.c.i

CMakeFiles/mdlib-util.dir/src/verlet_ti.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mdlib-util.dir/src/verlet_ti.c.s"
	/opt/rh/devtoolset-6/root/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/mgisonni/group_project/MPI_only/src/verlet_ti.c -o CMakeFiles/mdlib-util.dir/src/verlet_ti.c.s

CMakeFiles/mdlib-util.dir/src/energies.c.o: CMakeFiles/mdlib-util.dir/flags.make
CMakeFiles/mdlib-util.dir/src/energies.c.o: ../src/energies.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mgisonni/group_project/MPI_only/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/mdlib-util.dir/src/energies.c.o"
	/opt/rh/devtoolset-6/root/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mdlib-util.dir/src/energies.c.o   -c /home/mgisonni/group_project/MPI_only/src/energies.c

CMakeFiles/mdlib-util.dir/src/energies.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mdlib-util.dir/src/energies.c.i"
	/opt/rh/devtoolset-6/root/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/mgisonni/group_project/MPI_only/src/energies.c > CMakeFiles/mdlib-util.dir/src/energies.c.i

CMakeFiles/mdlib-util.dir/src/energies.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mdlib-util.dir/src/energies.c.s"
	/opt/rh/devtoolset-6/root/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/mgisonni/group_project/MPI_only/src/energies.c -o CMakeFiles/mdlib-util.dir/src/energies.c.s

CMakeFiles/mdlib-util.dir/src/input.c.o: CMakeFiles/mdlib-util.dir/flags.make
CMakeFiles/mdlib-util.dir/src/input.c.o: ../src/input.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mgisonni/group_project/MPI_only/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/mdlib-util.dir/src/input.c.o"
	/opt/rh/devtoolset-6/root/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mdlib-util.dir/src/input.c.o   -c /home/mgisonni/group_project/MPI_only/src/input.c

CMakeFiles/mdlib-util.dir/src/input.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mdlib-util.dir/src/input.c.i"
	/opt/rh/devtoolset-6/root/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/mgisonni/group_project/MPI_only/src/input.c > CMakeFiles/mdlib-util.dir/src/input.c.i

CMakeFiles/mdlib-util.dir/src/input.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mdlib-util.dir/src/input.c.s"
	/opt/rh/devtoolset-6/root/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/mgisonni/group_project/MPI_only/src/input.c -o CMakeFiles/mdlib-util.dir/src/input.c.s

CMakeFiles/mdlib-util.dir/src/output.c.o: CMakeFiles/mdlib-util.dir/flags.make
CMakeFiles/mdlib-util.dir/src/output.c.o: ../src/output.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mgisonni/group_project/MPI_only/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/mdlib-util.dir/src/output.c.o"
	/opt/rh/devtoolset-6/root/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mdlib-util.dir/src/output.c.o   -c /home/mgisonni/group_project/MPI_only/src/output.c

CMakeFiles/mdlib-util.dir/src/output.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mdlib-util.dir/src/output.c.i"
	/opt/rh/devtoolset-6/root/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/mgisonni/group_project/MPI_only/src/output.c > CMakeFiles/mdlib-util.dir/src/output.c.i

CMakeFiles/mdlib-util.dir/src/output.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mdlib-util.dir/src/output.c.s"
	/opt/rh/devtoolset-6/root/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/mgisonni/group_project/MPI_only/src/output.c -o CMakeFiles/mdlib-util.dir/src/output.c.s

CMakeFiles/mdlib-util.dir/src/reading.c.o: CMakeFiles/mdlib-util.dir/flags.make
CMakeFiles/mdlib-util.dir/src/reading.c.o: ../src/reading.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mgisonni/group_project/MPI_only/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/mdlib-util.dir/src/reading.c.o"
	/opt/rh/devtoolset-6/root/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mdlib-util.dir/src/reading.c.o   -c /home/mgisonni/group_project/MPI_only/src/reading.c

CMakeFiles/mdlib-util.dir/src/reading.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mdlib-util.dir/src/reading.c.i"
	/opt/rh/devtoolset-6/root/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/mgisonni/group_project/MPI_only/src/reading.c > CMakeFiles/mdlib-util.dir/src/reading.c.i

CMakeFiles/mdlib-util.dir/src/reading.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mdlib-util.dir/src/reading.c.s"
	/opt/rh/devtoolset-6/root/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/mgisonni/group_project/MPI_only/src/reading.c -o CMakeFiles/mdlib-util.dir/src/reading.c.s

# Object files for target mdlib-util
mdlib__util_OBJECTS = \
"CMakeFiles/mdlib-util.dir/src/utilities.c.o" \
"CMakeFiles/mdlib-util.dir/src/verlet_ti.c.o" \
"CMakeFiles/mdlib-util.dir/src/energies.c.o" \
"CMakeFiles/mdlib-util.dir/src/input.c.o" \
"CMakeFiles/mdlib-util.dir/src/output.c.o" \
"CMakeFiles/mdlib-util.dir/src/reading.c.o"

# External object files for target mdlib-util
mdlib__util_EXTERNAL_OBJECTS =

libmdlib-util.a: CMakeFiles/mdlib-util.dir/src/utilities.c.o
libmdlib-util.a: CMakeFiles/mdlib-util.dir/src/verlet_ti.c.o
libmdlib-util.a: CMakeFiles/mdlib-util.dir/src/energies.c.o
libmdlib-util.a: CMakeFiles/mdlib-util.dir/src/input.c.o
libmdlib-util.a: CMakeFiles/mdlib-util.dir/src/output.c.o
libmdlib-util.a: CMakeFiles/mdlib-util.dir/src/reading.c.o
libmdlib-util.a: CMakeFiles/mdlib-util.dir/build.make
libmdlib-util.a: CMakeFiles/mdlib-util.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mgisonni/group_project/MPI_only/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking C static library libmdlib-util.a"
	$(CMAKE_COMMAND) -P CMakeFiles/mdlib-util.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mdlib-util.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/mdlib-util.dir/build: libmdlib-util.a

.PHONY : CMakeFiles/mdlib-util.dir/build

CMakeFiles/mdlib-util.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/mdlib-util.dir/cmake_clean.cmake
.PHONY : CMakeFiles/mdlib-util.dir/clean

CMakeFiles/mdlib-util.dir/depend:
	cd /home/mgisonni/group_project/MPI_only/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mgisonni/group_project/MPI_only /home/mgisonni/group_project/MPI_only /home/mgisonni/group_project/MPI_only/build /home/mgisonni/group_project/MPI_only/build /home/mgisonni/group_project/MPI_only/build/CMakeFiles/mdlib-util.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/mdlib-util.dir/depend

