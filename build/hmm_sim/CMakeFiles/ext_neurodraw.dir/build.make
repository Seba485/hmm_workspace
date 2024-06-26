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
CMAKE_SOURCE_DIR = /home/sebastiano/hmm_workspace/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sebastiano/hmm_workspace/build

# Utility rule file for ext_neurodraw.

# Include the progress variables for this target.
include hmm_sim/CMakeFiles/ext_neurodraw.dir/progress.make

hmm_sim/CMakeFiles/ext_neurodraw: hmm_sim/CMakeFiles/ext_neurodraw-complete


hmm_sim/CMakeFiles/ext_neurodraw-complete: hmm_sim/neurodraw/src/ext_neurodraw-stamp/ext_neurodraw-install
hmm_sim/CMakeFiles/ext_neurodraw-complete: hmm_sim/neurodraw/src/ext_neurodraw-stamp/ext_neurodraw-mkdir
hmm_sim/CMakeFiles/ext_neurodraw-complete: hmm_sim/neurodraw/src/ext_neurodraw-stamp/ext_neurodraw-download
hmm_sim/CMakeFiles/ext_neurodraw-complete: hmm_sim/neurodraw/src/ext_neurodraw-stamp/ext_neurodraw-update
hmm_sim/CMakeFiles/ext_neurodraw-complete: hmm_sim/neurodraw/src/ext_neurodraw-stamp/ext_neurodraw-patch
hmm_sim/CMakeFiles/ext_neurodraw-complete: hmm_sim/neurodraw/src/ext_neurodraw-stamp/ext_neurodraw-configure
hmm_sim/CMakeFiles/ext_neurodraw-complete: hmm_sim/neurodraw/src/ext_neurodraw-stamp/ext_neurodraw-build
hmm_sim/CMakeFiles/ext_neurodraw-complete: hmm_sim/neurodraw/src/ext_neurodraw-stamp/ext_neurodraw-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/sebastiano/hmm_workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'ext_neurodraw'"
	cd /home/sebastiano/hmm_workspace/build/hmm_sim && /usr/bin/cmake -E make_directory /home/sebastiano/hmm_workspace/build/hmm_sim/CMakeFiles
	cd /home/sebastiano/hmm_workspace/build/hmm_sim && /usr/bin/cmake -E touch /home/sebastiano/hmm_workspace/build/hmm_sim/CMakeFiles/ext_neurodraw-complete
	cd /home/sebastiano/hmm_workspace/build/hmm_sim && /usr/bin/cmake -E touch /home/sebastiano/hmm_workspace/build/hmm_sim/neurodraw/src/ext_neurodraw-stamp/ext_neurodraw-done

hmm_sim/neurodraw/src/ext_neurodraw-stamp/ext_neurodraw-install: hmm_sim/neurodraw/src/ext_neurodraw-stamp/ext_neurodraw-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/sebastiano/hmm_workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Performing install step for 'ext_neurodraw'"
	cd /home/sebastiano/hmm_workspace/build/hmm_sim/neurodraw/src/ext_neurodraw-build && $(MAKE) install
	cd /home/sebastiano/hmm_workspace/build/hmm_sim/neurodraw/src/ext_neurodraw-build && /usr/bin/cmake -E touch /home/sebastiano/hmm_workspace/build/hmm_sim/neurodraw/src/ext_neurodraw-stamp/ext_neurodraw-install

hmm_sim/neurodraw/src/ext_neurodraw-stamp/ext_neurodraw-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/sebastiano/hmm_workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Creating directories for 'ext_neurodraw'"
	cd /home/sebastiano/hmm_workspace/build/hmm_sim && /usr/bin/cmake -E make_directory /home/sebastiano/hmm_workspace/build/hmm_sim/neurodraw/src/ext_neurodraw
	cd /home/sebastiano/hmm_workspace/build/hmm_sim && /usr/bin/cmake -E make_directory /home/sebastiano/hmm_workspace/build/hmm_sim/neurodraw/src/ext_neurodraw-build
	cd /home/sebastiano/hmm_workspace/build/hmm_sim && /usr/bin/cmake -E make_directory /home/sebastiano/hmm_workspace/build/hmm_sim/neurodraw
	cd /home/sebastiano/hmm_workspace/build/hmm_sim && /usr/bin/cmake -E make_directory /home/sebastiano/hmm_workspace/build/hmm_sim/neurodraw/tmp
	cd /home/sebastiano/hmm_workspace/build/hmm_sim && /usr/bin/cmake -E make_directory /home/sebastiano/hmm_workspace/build/hmm_sim/neurodraw/src/ext_neurodraw-stamp
	cd /home/sebastiano/hmm_workspace/build/hmm_sim && /usr/bin/cmake -E make_directory /home/sebastiano/hmm_workspace/build/hmm_sim/neurodraw/src
	cd /home/sebastiano/hmm_workspace/build/hmm_sim && /usr/bin/cmake -E make_directory /home/sebastiano/hmm_workspace/build/hmm_sim/neurodraw/src/ext_neurodraw-stamp
	cd /home/sebastiano/hmm_workspace/build/hmm_sim && /usr/bin/cmake -E touch /home/sebastiano/hmm_workspace/build/hmm_sim/neurodraw/src/ext_neurodraw-stamp/ext_neurodraw-mkdir

hmm_sim/neurodraw/src/ext_neurodraw-stamp/ext_neurodraw-download: hmm_sim/neurodraw/src/ext_neurodraw-stamp/ext_neurodraw-gitinfo.txt
hmm_sim/neurodraw/src/ext_neurodraw-stamp/ext_neurodraw-download: hmm_sim/neurodraw/src/ext_neurodraw-stamp/ext_neurodraw-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/sebastiano/hmm_workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Performing download step (git clone) for 'ext_neurodraw'"
	cd /home/sebastiano/hmm_workspace/build/hmm_sim/neurodraw/src && /usr/bin/cmake -P /home/sebastiano/hmm_workspace/build/hmm_sim/neurodraw/tmp/ext_neurodraw-gitclone.cmake
	cd /home/sebastiano/hmm_workspace/build/hmm_sim/neurodraw/src && /usr/bin/cmake -E touch /home/sebastiano/hmm_workspace/build/hmm_sim/neurodraw/src/ext_neurodraw-stamp/ext_neurodraw-download

hmm_sim/neurodraw/src/ext_neurodraw-stamp/ext_neurodraw-update: hmm_sim/neurodraw/src/ext_neurodraw-stamp/ext_neurodraw-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/sebastiano/hmm_workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Performing update step for 'ext_neurodraw'"
	cd /home/sebastiano/hmm_workspace/build/hmm_sim/neurodraw/src/ext_neurodraw && /usr/bin/cmake -P /home/sebastiano/hmm_workspace/build/hmm_sim/neurodraw/tmp/ext_neurodraw-gitupdate.cmake

hmm_sim/neurodraw/src/ext_neurodraw-stamp/ext_neurodraw-patch: hmm_sim/neurodraw/src/ext_neurodraw-stamp/ext_neurodraw-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/sebastiano/hmm_workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "No patch step for 'ext_neurodraw'"
	cd /home/sebastiano/hmm_workspace/build/hmm_sim && /usr/bin/cmake -E echo_append
	cd /home/sebastiano/hmm_workspace/build/hmm_sim && /usr/bin/cmake -E touch /home/sebastiano/hmm_workspace/build/hmm_sim/neurodraw/src/ext_neurodraw-stamp/ext_neurodraw-patch

hmm_sim/neurodraw/src/ext_neurodraw-stamp/ext_neurodraw-configure: hmm_sim/neurodraw/tmp/ext_neurodraw-cfgcmd.txt
hmm_sim/neurodraw/src/ext_neurodraw-stamp/ext_neurodraw-configure: hmm_sim/neurodraw/src/ext_neurodraw-stamp/ext_neurodraw-update
hmm_sim/neurodraw/src/ext_neurodraw-stamp/ext_neurodraw-configure: hmm_sim/neurodraw/src/ext_neurodraw-stamp/ext_neurodraw-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/sebastiano/hmm_workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Performing configure step for 'ext_neurodraw'"
	cd /home/sebastiano/hmm_workspace/build/hmm_sim/neurodraw/src/ext_neurodraw-build && /usr/bin/cmake -DCMAKE_INSTALL_PREFIX=/home/sebastiano/hmm_workspace/build/neurodraw "-GUnix Makefiles" /home/sebastiano/hmm_workspace/build/hmm_sim/neurodraw/src/ext_neurodraw
	cd /home/sebastiano/hmm_workspace/build/hmm_sim/neurodraw/src/ext_neurodraw-build && /usr/bin/cmake -E touch /home/sebastiano/hmm_workspace/build/hmm_sim/neurodraw/src/ext_neurodraw-stamp/ext_neurodraw-configure

hmm_sim/neurodraw/src/ext_neurodraw-stamp/ext_neurodraw-build: hmm_sim/neurodraw/src/ext_neurodraw-stamp/ext_neurodraw-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/sebastiano/hmm_workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Performing build step for 'ext_neurodraw'"
	cd /home/sebastiano/hmm_workspace/build/hmm_sim/neurodraw/src/ext_neurodraw-build && $(MAKE)
	cd /home/sebastiano/hmm_workspace/build/hmm_sim/neurodraw/src/ext_neurodraw-build && /usr/bin/cmake -E touch /home/sebastiano/hmm_workspace/build/hmm_sim/neurodraw/src/ext_neurodraw-stamp/ext_neurodraw-build

ext_neurodraw: hmm_sim/CMakeFiles/ext_neurodraw
ext_neurodraw: hmm_sim/CMakeFiles/ext_neurodraw-complete
ext_neurodraw: hmm_sim/neurodraw/src/ext_neurodraw-stamp/ext_neurodraw-install
ext_neurodraw: hmm_sim/neurodraw/src/ext_neurodraw-stamp/ext_neurodraw-mkdir
ext_neurodraw: hmm_sim/neurodraw/src/ext_neurodraw-stamp/ext_neurodraw-download
ext_neurodraw: hmm_sim/neurodraw/src/ext_neurodraw-stamp/ext_neurodraw-update
ext_neurodraw: hmm_sim/neurodraw/src/ext_neurodraw-stamp/ext_neurodraw-patch
ext_neurodraw: hmm_sim/neurodraw/src/ext_neurodraw-stamp/ext_neurodraw-configure
ext_neurodraw: hmm_sim/neurodraw/src/ext_neurodraw-stamp/ext_neurodraw-build
ext_neurodraw: hmm_sim/CMakeFiles/ext_neurodraw.dir/build.make

.PHONY : ext_neurodraw

# Rule to build all files generated by this target.
hmm_sim/CMakeFiles/ext_neurodraw.dir/build: ext_neurodraw

.PHONY : hmm_sim/CMakeFiles/ext_neurodraw.dir/build

hmm_sim/CMakeFiles/ext_neurodraw.dir/clean:
	cd /home/sebastiano/hmm_workspace/build/hmm_sim && $(CMAKE_COMMAND) -P CMakeFiles/ext_neurodraw.dir/cmake_clean.cmake
.PHONY : hmm_sim/CMakeFiles/ext_neurodraw.dir/clean

hmm_sim/CMakeFiles/ext_neurodraw.dir/depend:
	cd /home/sebastiano/hmm_workspace/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sebastiano/hmm_workspace/src /home/sebastiano/hmm_workspace/src/hmm_sim /home/sebastiano/hmm_workspace/build /home/sebastiano/hmm_workspace/build/hmm_sim /home/sebastiano/hmm_workspace/build/hmm_sim/CMakeFiles/ext_neurodraw.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : hmm_sim/CMakeFiles/ext_neurodraw.dir/depend

