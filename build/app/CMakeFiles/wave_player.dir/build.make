# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/home/felix/cmpt433/work/Assignment 3/Beatbox"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/felix/cmpt433/work/Assignment 3/build"

# Include any dependencies generated for this target.
include app/CMakeFiles/wave_player.dir/depend.make

# Include the progress variables for this target.
include app/CMakeFiles/wave_player.dir/progress.make

# Include the compile flags for this target's objects.
include app/CMakeFiles/wave_player.dir/flags.make

app/CMakeFiles/wave_player.dir/src/main.c.o: app/CMakeFiles/wave_player.dir/flags.make
app/CMakeFiles/wave_player.dir/src/main.c.o: /home/felix/cmpt433/work/Assignment\ 3/Beatbox/app/src/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/felix/cmpt433/work/Assignment 3/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object app/CMakeFiles/wave_player.dir/src/main.c.o"
	cd "/home/felix/cmpt433/work/Assignment 3/build/app" && /usr/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/wave_player.dir/src/main.c.o -c "/home/felix/cmpt433/work/Assignment 3/Beatbox/app/src/main.c"

app/CMakeFiles/wave_player.dir/src/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/wave_player.dir/src/main.c.i"
	cd "/home/felix/cmpt433/work/Assignment 3/build/app" && /usr/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/home/felix/cmpt433/work/Assignment 3/Beatbox/app/src/main.c" > CMakeFiles/wave_player.dir/src/main.c.i

app/CMakeFiles/wave_player.dir/src/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/wave_player.dir/src/main.c.s"
	cd "/home/felix/cmpt433/work/Assignment 3/build/app" && /usr/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/home/felix/cmpt433/work/Assignment 3/Beatbox/app/src/main.c" -o CMakeFiles/wave_player.dir/src/main.c.s

app/CMakeFiles/wave_player.dir/src/period_timer.c.o: app/CMakeFiles/wave_player.dir/flags.make
app/CMakeFiles/wave_player.dir/src/period_timer.c.o: /home/felix/cmpt433/work/Assignment\ 3/Beatbox/app/src/period_timer.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/felix/cmpt433/work/Assignment 3/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building C object app/CMakeFiles/wave_player.dir/src/period_timer.c.o"
	cd "/home/felix/cmpt433/work/Assignment 3/build/app" && /usr/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/wave_player.dir/src/period_timer.c.o -c "/home/felix/cmpt433/work/Assignment 3/Beatbox/app/src/period_timer.c"

app/CMakeFiles/wave_player.dir/src/period_timer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/wave_player.dir/src/period_timer.c.i"
	cd "/home/felix/cmpt433/work/Assignment 3/build/app" && /usr/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/home/felix/cmpt433/work/Assignment 3/Beatbox/app/src/period_timer.c" > CMakeFiles/wave_player.dir/src/period_timer.c.i

app/CMakeFiles/wave_player.dir/src/period_timer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/wave_player.dir/src/period_timer.c.s"
	cd "/home/felix/cmpt433/work/Assignment 3/build/app" && /usr/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/home/felix/cmpt433/work/Assignment 3/Beatbox/app/src/period_timer.c" -o CMakeFiles/wave_player.dir/src/period_timer.c.s

app/CMakeFiles/wave_player.dir/src/print_result.c.o: app/CMakeFiles/wave_player.dir/flags.make
app/CMakeFiles/wave_player.dir/src/print_result.c.o: /home/felix/cmpt433/work/Assignment\ 3/Beatbox/app/src/print_result.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/felix/cmpt433/work/Assignment 3/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building C object app/CMakeFiles/wave_player.dir/src/print_result.c.o"
	cd "/home/felix/cmpt433/work/Assignment 3/build/app" && /usr/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/wave_player.dir/src/print_result.c.o -c "/home/felix/cmpt433/work/Assignment 3/Beatbox/app/src/print_result.c"

app/CMakeFiles/wave_player.dir/src/print_result.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/wave_player.dir/src/print_result.c.i"
	cd "/home/felix/cmpt433/work/Assignment 3/build/app" && /usr/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/home/felix/cmpt433/work/Assignment 3/Beatbox/app/src/print_result.c" > CMakeFiles/wave_player.dir/src/print_result.c.i

app/CMakeFiles/wave_player.dir/src/print_result.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/wave_player.dir/src/print_result.c.s"
	cd "/home/felix/cmpt433/work/Assignment 3/build/app" && /usr/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/home/felix/cmpt433/work/Assignment 3/Beatbox/app/src/print_result.c" -o CMakeFiles/wave_player.dir/src/print_result.c.s

app/CMakeFiles/wave_player.dir/src/shutdown.c.o: app/CMakeFiles/wave_player.dir/flags.make
app/CMakeFiles/wave_player.dir/src/shutdown.c.o: /home/felix/cmpt433/work/Assignment\ 3/Beatbox/app/src/shutdown.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/felix/cmpt433/work/Assignment 3/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building C object app/CMakeFiles/wave_player.dir/src/shutdown.c.o"
	cd "/home/felix/cmpt433/work/Assignment 3/build/app" && /usr/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/wave_player.dir/src/shutdown.c.o -c "/home/felix/cmpt433/work/Assignment 3/Beatbox/app/src/shutdown.c"

app/CMakeFiles/wave_player.dir/src/shutdown.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/wave_player.dir/src/shutdown.c.i"
	cd "/home/felix/cmpt433/work/Assignment 3/build/app" && /usr/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/home/felix/cmpt433/work/Assignment 3/Beatbox/app/src/shutdown.c" > CMakeFiles/wave_player.dir/src/shutdown.c.i

app/CMakeFiles/wave_player.dir/src/shutdown.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/wave_player.dir/src/shutdown.c.s"
	cd "/home/felix/cmpt433/work/Assignment 3/build/app" && /usr/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/home/felix/cmpt433/work/Assignment 3/Beatbox/app/src/shutdown.c" -o CMakeFiles/wave_player.dir/src/shutdown.c.s

app/CMakeFiles/wave_player.dir/src/udp.c.o: app/CMakeFiles/wave_player.dir/flags.make
app/CMakeFiles/wave_player.dir/src/udp.c.o: /home/felix/cmpt433/work/Assignment\ 3/Beatbox/app/src/udp.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/felix/cmpt433/work/Assignment 3/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Building C object app/CMakeFiles/wave_player.dir/src/udp.c.o"
	cd "/home/felix/cmpt433/work/Assignment 3/build/app" && /usr/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/wave_player.dir/src/udp.c.o -c "/home/felix/cmpt433/work/Assignment 3/Beatbox/app/src/udp.c"

app/CMakeFiles/wave_player.dir/src/udp.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/wave_player.dir/src/udp.c.i"
	cd "/home/felix/cmpt433/work/Assignment 3/build/app" && /usr/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/home/felix/cmpt433/work/Assignment 3/Beatbox/app/src/udp.c" > CMakeFiles/wave_player.dir/src/udp.c.i

app/CMakeFiles/wave_player.dir/src/udp.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/wave_player.dir/src/udp.c.s"
	cd "/home/felix/cmpt433/work/Assignment 3/build/app" && /usr/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/home/felix/cmpt433/work/Assignment 3/Beatbox/app/src/udp.c" -o CMakeFiles/wave_player.dir/src/udp.c.s

# Object files for target wave_player
wave_player_OBJECTS = \
"CMakeFiles/wave_player.dir/src/main.c.o" \
"CMakeFiles/wave_player.dir/src/period_timer.c.o" \
"CMakeFiles/wave_player.dir/src/print_result.c.o" \
"CMakeFiles/wave_player.dir/src/shutdown.c.o" \
"CMakeFiles/wave_player.dir/src/udp.c.o"

# External object files for target wave_player
wave_player_EXTERNAL_OBJECTS =

app/wave_player: app/CMakeFiles/wave_player.dir/src/main.c.o
app/wave_player: app/CMakeFiles/wave_player.dir/src/period_timer.c.o
app/wave_player: app/CMakeFiles/wave_player.dir/src/print_result.c.o
app/wave_player: app/CMakeFiles/wave_player.dir/src/shutdown.c.o
app/wave_player: app/CMakeFiles/wave_player.dir/src/udp.c.o
app/wave_player: app/CMakeFiles/wave_player.dir/build.make
app/wave_player: hal/libhal.a
app/wave_player: app/CMakeFiles/wave_player.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/felix/cmpt433/work/Assignment 3/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_6) "Linking C executable wave_player"
	cd "/home/felix/cmpt433/work/Assignment 3/build/app" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/wave_player.dir/link.txt --verbose=$(VERBOSE)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Copying ARM executable to public NFS directory"
	cd "/home/felix/cmpt433/work/Assignment 3/build/app" && /usr/bin/cmake -E copy /home/felix/cmpt433/work/Assignment\ 3/build/app/wave_player ~/cmpt433/public/Assignment\ 3/wave_player
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Copying WAVE files to public NFS directory"
	cd "/home/felix/cmpt433/work/Assignment 3/build/app" && /usr/bin/cmake -E copy_directory /home/felix/cmpt433/work/Assignment\ 3/Beatbox/wave-files ~/cmpt433/public/Assignment\ 3/wave-files

# Rule to build all files generated by this target.
app/CMakeFiles/wave_player.dir/build: app/wave_player

.PHONY : app/CMakeFiles/wave_player.dir/build

app/CMakeFiles/wave_player.dir/clean:
	cd "/home/felix/cmpt433/work/Assignment 3/build/app" && $(CMAKE_COMMAND) -P CMakeFiles/wave_player.dir/cmake_clean.cmake
.PHONY : app/CMakeFiles/wave_player.dir/clean

app/CMakeFiles/wave_player.dir/depend:
	cd "/home/felix/cmpt433/work/Assignment 3/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/felix/cmpt433/work/Assignment 3/Beatbox" "/home/felix/cmpt433/work/Assignment 3/Beatbox/app" "/home/felix/cmpt433/work/Assignment 3/build" "/home/felix/cmpt433/work/Assignment 3/build/app" "/home/felix/cmpt433/work/Assignment 3/build/app/CMakeFiles/wave_player.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : app/CMakeFiles/wave_player.dir/depend

