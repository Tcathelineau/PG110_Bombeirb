# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

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
CMAKE_COMMAND = /home/julien/Téléchargements/clion-2017.3.3/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/julien/Téléchargements/clion-2017.3.3/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/julien/Bombeirb/pg110-2017-gb-t2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/julien/Bombeirb/pg110-2017-gb-t2/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/pg110_2017_gb_t2.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/pg110_2017_gb_t2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/pg110_2017_gb_t2.dir/flags.make

CMakeFiles/pg110_2017_gb_t2.dir/sources/src/game.c.o: CMakeFiles/pg110_2017_gb_t2.dir/flags.make
CMakeFiles/pg110_2017_gb_t2.dir/sources/src/game.c.o: ../sources/src/game.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/julien/Bombeirb/pg110-2017-gb-t2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/pg110_2017_gb_t2.dir/sources/src/game.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/pg110_2017_gb_t2.dir/sources/src/game.c.o   -c /home/julien/Bombeirb/pg110-2017-gb-t2/sources/src/game.c

CMakeFiles/pg110_2017_gb_t2.dir/sources/src/game.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/pg110_2017_gb_t2.dir/sources/src/game.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/julien/Bombeirb/pg110-2017-gb-t2/sources/src/game.c > CMakeFiles/pg110_2017_gb_t2.dir/sources/src/game.c.i

CMakeFiles/pg110_2017_gb_t2.dir/sources/src/game.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/pg110_2017_gb_t2.dir/sources/src/game.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/julien/Bombeirb/pg110-2017-gb-t2/sources/src/game.c -o CMakeFiles/pg110_2017_gb_t2.dir/sources/src/game.c.s

CMakeFiles/pg110_2017_gb_t2.dir/sources/src/game.c.o.requires:

.PHONY : CMakeFiles/pg110_2017_gb_t2.dir/sources/src/game.c.o.requires

CMakeFiles/pg110_2017_gb_t2.dir/sources/src/game.c.o.provides: CMakeFiles/pg110_2017_gb_t2.dir/sources/src/game.c.o.requires
	$(MAKE) -f CMakeFiles/pg110_2017_gb_t2.dir/build.make CMakeFiles/pg110_2017_gb_t2.dir/sources/src/game.c.o.provides.build
.PHONY : CMakeFiles/pg110_2017_gb_t2.dir/sources/src/game.c.o.provides

CMakeFiles/pg110_2017_gb_t2.dir/sources/src/game.c.o.provides.build: CMakeFiles/pg110_2017_gb_t2.dir/sources/src/game.c.o


CMakeFiles/pg110_2017_gb_t2.dir/sources/src/main.c.o: CMakeFiles/pg110_2017_gb_t2.dir/flags.make
CMakeFiles/pg110_2017_gb_t2.dir/sources/src/main.c.o: ../sources/src/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/julien/Bombeirb/pg110-2017-gb-t2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/pg110_2017_gb_t2.dir/sources/src/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/pg110_2017_gb_t2.dir/sources/src/main.c.o   -c /home/julien/Bombeirb/pg110-2017-gb-t2/sources/src/main.c

CMakeFiles/pg110_2017_gb_t2.dir/sources/src/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/pg110_2017_gb_t2.dir/sources/src/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/julien/Bombeirb/pg110-2017-gb-t2/sources/src/main.c > CMakeFiles/pg110_2017_gb_t2.dir/sources/src/main.c.i

CMakeFiles/pg110_2017_gb_t2.dir/sources/src/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/pg110_2017_gb_t2.dir/sources/src/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/julien/Bombeirb/pg110-2017-gb-t2/sources/src/main.c -o CMakeFiles/pg110_2017_gb_t2.dir/sources/src/main.c.s

CMakeFiles/pg110_2017_gb_t2.dir/sources/src/main.c.o.requires:

.PHONY : CMakeFiles/pg110_2017_gb_t2.dir/sources/src/main.c.o.requires

CMakeFiles/pg110_2017_gb_t2.dir/sources/src/main.c.o.provides: CMakeFiles/pg110_2017_gb_t2.dir/sources/src/main.c.o.requires
	$(MAKE) -f CMakeFiles/pg110_2017_gb_t2.dir/build.make CMakeFiles/pg110_2017_gb_t2.dir/sources/src/main.c.o.provides.build
.PHONY : CMakeFiles/pg110_2017_gb_t2.dir/sources/src/main.c.o.provides

CMakeFiles/pg110_2017_gb_t2.dir/sources/src/main.c.o.provides.build: CMakeFiles/pg110_2017_gb_t2.dir/sources/src/main.c.o


CMakeFiles/pg110_2017_gb_t2.dir/sources/src/map.c.o: CMakeFiles/pg110_2017_gb_t2.dir/flags.make
CMakeFiles/pg110_2017_gb_t2.dir/sources/src/map.c.o: ../sources/src/map.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/julien/Bombeirb/pg110-2017-gb-t2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/pg110_2017_gb_t2.dir/sources/src/map.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/pg110_2017_gb_t2.dir/sources/src/map.c.o   -c /home/julien/Bombeirb/pg110-2017-gb-t2/sources/src/map.c

CMakeFiles/pg110_2017_gb_t2.dir/sources/src/map.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/pg110_2017_gb_t2.dir/sources/src/map.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/julien/Bombeirb/pg110-2017-gb-t2/sources/src/map.c > CMakeFiles/pg110_2017_gb_t2.dir/sources/src/map.c.i

CMakeFiles/pg110_2017_gb_t2.dir/sources/src/map.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/pg110_2017_gb_t2.dir/sources/src/map.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/julien/Bombeirb/pg110-2017-gb-t2/sources/src/map.c -o CMakeFiles/pg110_2017_gb_t2.dir/sources/src/map.c.s

CMakeFiles/pg110_2017_gb_t2.dir/sources/src/map.c.o.requires:

.PHONY : CMakeFiles/pg110_2017_gb_t2.dir/sources/src/map.c.o.requires

CMakeFiles/pg110_2017_gb_t2.dir/sources/src/map.c.o.provides: CMakeFiles/pg110_2017_gb_t2.dir/sources/src/map.c.o.requires
	$(MAKE) -f CMakeFiles/pg110_2017_gb_t2.dir/build.make CMakeFiles/pg110_2017_gb_t2.dir/sources/src/map.c.o.provides.build
.PHONY : CMakeFiles/pg110_2017_gb_t2.dir/sources/src/map.c.o.provides

CMakeFiles/pg110_2017_gb_t2.dir/sources/src/map.c.o.provides.build: CMakeFiles/pg110_2017_gb_t2.dir/sources/src/map.c.o


CMakeFiles/pg110_2017_gb_t2.dir/sources/src/misc.c.o: CMakeFiles/pg110_2017_gb_t2.dir/flags.make
CMakeFiles/pg110_2017_gb_t2.dir/sources/src/misc.c.o: ../sources/src/misc.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/julien/Bombeirb/pg110-2017-gb-t2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/pg110_2017_gb_t2.dir/sources/src/misc.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/pg110_2017_gb_t2.dir/sources/src/misc.c.o   -c /home/julien/Bombeirb/pg110-2017-gb-t2/sources/src/misc.c

CMakeFiles/pg110_2017_gb_t2.dir/sources/src/misc.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/pg110_2017_gb_t2.dir/sources/src/misc.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/julien/Bombeirb/pg110-2017-gb-t2/sources/src/misc.c > CMakeFiles/pg110_2017_gb_t2.dir/sources/src/misc.c.i

CMakeFiles/pg110_2017_gb_t2.dir/sources/src/misc.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/pg110_2017_gb_t2.dir/sources/src/misc.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/julien/Bombeirb/pg110-2017-gb-t2/sources/src/misc.c -o CMakeFiles/pg110_2017_gb_t2.dir/sources/src/misc.c.s

CMakeFiles/pg110_2017_gb_t2.dir/sources/src/misc.c.o.requires:

.PHONY : CMakeFiles/pg110_2017_gb_t2.dir/sources/src/misc.c.o.requires

CMakeFiles/pg110_2017_gb_t2.dir/sources/src/misc.c.o.provides: CMakeFiles/pg110_2017_gb_t2.dir/sources/src/misc.c.o.requires
	$(MAKE) -f CMakeFiles/pg110_2017_gb_t2.dir/build.make CMakeFiles/pg110_2017_gb_t2.dir/sources/src/misc.c.o.provides.build
.PHONY : CMakeFiles/pg110_2017_gb_t2.dir/sources/src/misc.c.o.provides

CMakeFiles/pg110_2017_gb_t2.dir/sources/src/misc.c.o.provides.build: CMakeFiles/pg110_2017_gb_t2.dir/sources/src/misc.c.o


CMakeFiles/pg110_2017_gb_t2.dir/sources/src/player.c.o: CMakeFiles/pg110_2017_gb_t2.dir/flags.make
CMakeFiles/pg110_2017_gb_t2.dir/sources/src/player.c.o: ../sources/src/player.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/julien/Bombeirb/pg110-2017-gb-t2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/pg110_2017_gb_t2.dir/sources/src/player.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/pg110_2017_gb_t2.dir/sources/src/player.c.o   -c /home/julien/Bombeirb/pg110-2017-gb-t2/sources/src/player.c

CMakeFiles/pg110_2017_gb_t2.dir/sources/src/player.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/pg110_2017_gb_t2.dir/sources/src/player.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/julien/Bombeirb/pg110-2017-gb-t2/sources/src/player.c > CMakeFiles/pg110_2017_gb_t2.dir/sources/src/player.c.i

CMakeFiles/pg110_2017_gb_t2.dir/sources/src/player.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/pg110_2017_gb_t2.dir/sources/src/player.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/julien/Bombeirb/pg110-2017-gb-t2/sources/src/player.c -o CMakeFiles/pg110_2017_gb_t2.dir/sources/src/player.c.s

CMakeFiles/pg110_2017_gb_t2.dir/sources/src/player.c.o.requires:

.PHONY : CMakeFiles/pg110_2017_gb_t2.dir/sources/src/player.c.o.requires

CMakeFiles/pg110_2017_gb_t2.dir/sources/src/player.c.o.provides: CMakeFiles/pg110_2017_gb_t2.dir/sources/src/player.c.o.requires
	$(MAKE) -f CMakeFiles/pg110_2017_gb_t2.dir/build.make CMakeFiles/pg110_2017_gb_t2.dir/sources/src/player.c.o.provides.build
.PHONY : CMakeFiles/pg110_2017_gb_t2.dir/sources/src/player.c.o.provides

CMakeFiles/pg110_2017_gb_t2.dir/sources/src/player.c.o.provides.build: CMakeFiles/pg110_2017_gb_t2.dir/sources/src/player.c.o


CMakeFiles/pg110_2017_gb_t2.dir/sources/src/sprite.c.o: CMakeFiles/pg110_2017_gb_t2.dir/flags.make
CMakeFiles/pg110_2017_gb_t2.dir/sources/src/sprite.c.o: ../sources/src/sprite.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/julien/Bombeirb/pg110-2017-gb-t2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/pg110_2017_gb_t2.dir/sources/src/sprite.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/pg110_2017_gb_t2.dir/sources/src/sprite.c.o   -c /home/julien/Bombeirb/pg110-2017-gb-t2/sources/src/sprite.c

CMakeFiles/pg110_2017_gb_t2.dir/sources/src/sprite.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/pg110_2017_gb_t2.dir/sources/src/sprite.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/julien/Bombeirb/pg110-2017-gb-t2/sources/src/sprite.c > CMakeFiles/pg110_2017_gb_t2.dir/sources/src/sprite.c.i

CMakeFiles/pg110_2017_gb_t2.dir/sources/src/sprite.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/pg110_2017_gb_t2.dir/sources/src/sprite.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/julien/Bombeirb/pg110-2017-gb-t2/sources/src/sprite.c -o CMakeFiles/pg110_2017_gb_t2.dir/sources/src/sprite.c.s

CMakeFiles/pg110_2017_gb_t2.dir/sources/src/sprite.c.o.requires:

.PHONY : CMakeFiles/pg110_2017_gb_t2.dir/sources/src/sprite.c.o.requires

CMakeFiles/pg110_2017_gb_t2.dir/sources/src/sprite.c.o.provides: CMakeFiles/pg110_2017_gb_t2.dir/sources/src/sprite.c.o.requires
	$(MAKE) -f CMakeFiles/pg110_2017_gb_t2.dir/build.make CMakeFiles/pg110_2017_gb_t2.dir/sources/src/sprite.c.o.provides.build
.PHONY : CMakeFiles/pg110_2017_gb_t2.dir/sources/src/sprite.c.o.provides

CMakeFiles/pg110_2017_gb_t2.dir/sources/src/sprite.c.o.provides.build: CMakeFiles/pg110_2017_gb_t2.dir/sources/src/sprite.c.o


CMakeFiles/pg110_2017_gb_t2.dir/sources/src/window.c.o: CMakeFiles/pg110_2017_gb_t2.dir/flags.make
CMakeFiles/pg110_2017_gb_t2.dir/sources/src/window.c.o: ../sources/src/window.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/julien/Bombeirb/pg110-2017-gb-t2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/pg110_2017_gb_t2.dir/sources/src/window.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/pg110_2017_gb_t2.dir/sources/src/window.c.o   -c /home/julien/Bombeirb/pg110-2017-gb-t2/sources/src/window.c

CMakeFiles/pg110_2017_gb_t2.dir/sources/src/window.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/pg110_2017_gb_t2.dir/sources/src/window.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/julien/Bombeirb/pg110-2017-gb-t2/sources/src/window.c > CMakeFiles/pg110_2017_gb_t2.dir/sources/src/window.c.i

CMakeFiles/pg110_2017_gb_t2.dir/sources/src/window.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/pg110_2017_gb_t2.dir/sources/src/window.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/julien/Bombeirb/pg110-2017-gb-t2/sources/src/window.c -o CMakeFiles/pg110_2017_gb_t2.dir/sources/src/window.c.s

CMakeFiles/pg110_2017_gb_t2.dir/sources/src/window.c.o.requires:

.PHONY : CMakeFiles/pg110_2017_gb_t2.dir/sources/src/window.c.o.requires

CMakeFiles/pg110_2017_gb_t2.dir/sources/src/window.c.o.provides: CMakeFiles/pg110_2017_gb_t2.dir/sources/src/window.c.o.requires
	$(MAKE) -f CMakeFiles/pg110_2017_gb_t2.dir/build.make CMakeFiles/pg110_2017_gb_t2.dir/sources/src/window.c.o.provides.build
.PHONY : CMakeFiles/pg110_2017_gb_t2.dir/sources/src/window.c.o.provides

CMakeFiles/pg110_2017_gb_t2.dir/sources/src/window.c.o.provides.build: CMakeFiles/pg110_2017_gb_t2.dir/sources/src/window.c.o


# Object files for target pg110_2017_gb_t2
pg110_2017_gb_t2_OBJECTS = \
"CMakeFiles/pg110_2017_gb_t2.dir/sources/src/game.c.o" \
"CMakeFiles/pg110_2017_gb_t2.dir/sources/src/main.c.o" \
"CMakeFiles/pg110_2017_gb_t2.dir/sources/src/map.c.o" \
"CMakeFiles/pg110_2017_gb_t2.dir/sources/src/misc.c.o" \
"CMakeFiles/pg110_2017_gb_t2.dir/sources/src/player.c.o" \
"CMakeFiles/pg110_2017_gb_t2.dir/sources/src/sprite.c.o" \
"CMakeFiles/pg110_2017_gb_t2.dir/sources/src/window.c.o"

# External object files for target pg110_2017_gb_t2
pg110_2017_gb_t2_EXTERNAL_OBJECTS =

pg110_2017_gb_t2: CMakeFiles/pg110_2017_gb_t2.dir/sources/src/game.c.o
pg110_2017_gb_t2: CMakeFiles/pg110_2017_gb_t2.dir/sources/src/main.c.o
pg110_2017_gb_t2: CMakeFiles/pg110_2017_gb_t2.dir/sources/src/map.c.o
pg110_2017_gb_t2: CMakeFiles/pg110_2017_gb_t2.dir/sources/src/misc.c.o
pg110_2017_gb_t2: CMakeFiles/pg110_2017_gb_t2.dir/sources/src/player.c.o
pg110_2017_gb_t2: CMakeFiles/pg110_2017_gb_t2.dir/sources/src/sprite.c.o
pg110_2017_gb_t2: CMakeFiles/pg110_2017_gb_t2.dir/sources/src/window.c.o
pg110_2017_gb_t2: CMakeFiles/pg110_2017_gb_t2.dir/build.make
pg110_2017_gb_t2: CMakeFiles/pg110_2017_gb_t2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/julien/Bombeirb/pg110-2017-gb-t2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking C executable pg110_2017_gb_t2"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pg110_2017_gb_t2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/pg110_2017_gb_t2.dir/build: pg110_2017_gb_t2

.PHONY : CMakeFiles/pg110_2017_gb_t2.dir/build

CMakeFiles/pg110_2017_gb_t2.dir/requires: CMakeFiles/pg110_2017_gb_t2.dir/sources/src/game.c.o.requires
CMakeFiles/pg110_2017_gb_t2.dir/requires: CMakeFiles/pg110_2017_gb_t2.dir/sources/src/main.c.o.requires
CMakeFiles/pg110_2017_gb_t2.dir/requires: CMakeFiles/pg110_2017_gb_t2.dir/sources/src/map.c.o.requires
CMakeFiles/pg110_2017_gb_t2.dir/requires: CMakeFiles/pg110_2017_gb_t2.dir/sources/src/misc.c.o.requires
CMakeFiles/pg110_2017_gb_t2.dir/requires: CMakeFiles/pg110_2017_gb_t2.dir/sources/src/player.c.o.requires
CMakeFiles/pg110_2017_gb_t2.dir/requires: CMakeFiles/pg110_2017_gb_t2.dir/sources/src/sprite.c.o.requires
CMakeFiles/pg110_2017_gb_t2.dir/requires: CMakeFiles/pg110_2017_gb_t2.dir/sources/src/window.c.o.requires

.PHONY : CMakeFiles/pg110_2017_gb_t2.dir/requires

CMakeFiles/pg110_2017_gb_t2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/pg110_2017_gb_t2.dir/cmake_clean.cmake
.PHONY : CMakeFiles/pg110_2017_gb_t2.dir/clean

CMakeFiles/pg110_2017_gb_t2.dir/depend:
	cd /home/julien/Bombeirb/pg110-2017-gb-t2/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/julien/Bombeirb/pg110-2017-gb-t2 /home/julien/Bombeirb/pg110-2017-gb-t2 /home/julien/Bombeirb/pg110-2017-gb-t2/cmake-build-debug /home/julien/Bombeirb/pg110-2017-gb-t2/cmake-build-debug /home/julien/Bombeirb/pg110-2017-gb-t2/cmake-build-debug/CMakeFiles/pg110_2017_gb_t2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/pg110_2017_gb_t2.dir/depend
