#!/usr/bin/bash

# This script is for one time use to setup the environment for running the I2c Slave Unit Tests.

echo "Setting up user...\n"

cd ./test-bench/sim/

echo "Ensuring Modelsim commands are in path."

if ! command -v vlib &> /dev/null
then
  echo "Modelsim vlib not found in path."
  cd ../..
  exit -1
else
  echo "vlib found in path, proceeding."
fi

if ! command -v vmap &> /dev/null
then
  echo "Modelsim vmap not found in path. Terminating script."
  cd ../..
  exit -2
else
  echo "vmap found in path, proceeding."
fi
# Create the library.
vlib ./i2c-slave-lib

# Check that library was created successfully.
if [ $? -eq 0 ];
then
  echo "vlib created successfully"
else
  echo "vlib command failed to run, does the library already exist?"
  cd ../..
  exit -3
fi

# Map the working library to the created library.
vmap work ./i2c-slave-lib

# Check that library was successfully mapped.
if [ $? -eq 0 ];
then
  echo "vmap successfully mapped to working library."
else
  echo "vmap command failed to run, does the library already exist?"
  cd ../..
  exit -4
fi

cd ../..

echo "vlib and vmap commands run successfully"
exit 0
