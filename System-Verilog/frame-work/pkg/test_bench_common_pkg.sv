//####################################################################
//  Author: Austin | @SV-Engineer
//    Date: 28OCT2023
// Purpose: This package is used for defining the common types of the
//          test bench.
//####################################################################

import primitives_pkg::*;

package test_bench_common_pkg;

  // Provide the following string for each level of speed:
  // freq_t'("MHz")
  // freq_t'("kHz")
  // freq_t'("Hz")
  // OR provide one of the following macros (tick define):
  // MEGA_HERTZ
  // KILO_HERTZ
  // HERTZ
  // Assume freq is the decimal value that precedes the range. i.e. for 10 MHz provide:
  // freq = 10.0
  // and
  // order_of_magnitude = "MHz"
  // OR
  // order_of_magnitude = MEGA_HERTZ
  typedef struct
  {
    string order_of_magnitude;
    real   freq;
  } frequency_t;

  // This object is intended to provide a way for the test bench to switch between
  // an "automatic" clock and a manually clock controlled by the unit test.
  typedef struct
  {
    logic       clk;
    logic       nEnable;
    logic       manual;
    frequency_t frequency;
  } clk_ctrl_t;

endpackage : test_bench_common_pkg
