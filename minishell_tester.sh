#! /bin/bash

export WHT="\033[0;37m"
export BLK="\033[0;30m"
export RED="\033[0;31m"
export YEL="\033[0;33m"
export BLU="\033[0;34m"
export GRN="\033[0;32m"

export prog_pathname="../minishell"
export tests_path="tests"

gcc tests_programs/infinite_loop.c -o tests_programs/infinite_loop
gcc tests_programs/prog_name_printer.c -o tests_programs/prog_name_printer
gcc tests_programs/segfault_prog.c -o tests_programs/segfault_prog

. tester_loop.sh
