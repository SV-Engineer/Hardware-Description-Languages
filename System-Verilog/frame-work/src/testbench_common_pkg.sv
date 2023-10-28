//####################################################################
//  Author: Austin | @SV-Engineer
//    Date: 28OCT2023
// Purpose: This package is used for defining the common types of the
//          test bench.
//####################################################################

import primitives_pkg::*;

package testbench_common_pkg;

  // This object is intended to provide a way for the test bench to switch between
  // and "automatic" clock and a manually clock controlled by the unit test.
  typedef struct packed
  {
    logic clk;
    logic nEnable;
    logic manual;
  } clk_ctrl_t;

endpackage : testbench_common_pkg