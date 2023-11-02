#!/usr/bin/bash

# This script is for compiling and running the simulation from the command line. It is intended 
# to be run from the /System-Verilog/i2c-slave/test-bench/sim/ directory. It relies upon relative 
# paths and will not work if run else-where.

# First compile the code.
vlog -f test_bench.f
