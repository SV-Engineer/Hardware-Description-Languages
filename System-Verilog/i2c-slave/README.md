# About
The goal of this directory and its child directories is to create an I2c slave module in synthesizable RTL. It will be deployed on a DE10-Lite terasic FPGA utilizing Quartus and tested with Modelsim.

# Setup User Shell Script
This shell script file assumes you have installed Modelsim and added it to path. Furthermore it relies upon using git bash shell as opposed to the windows command prompt. Note that the location you have bash may be different from this project's assumption. You can use "which bash" in the bash prompt to see where yours is located.

# Version History.

## i2c_slave_v0.0.0
  1. Created directory tree for rtl.
  2. Created directory tree for test bench and a way to modularly connect the RTL, Test Bench, and Frame Work.
  3. Added base layer of support for unit tests via Modelsim command line through git bash shell.
