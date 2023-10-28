//####################################################################
//  Author: Austin | @SV-Engineer
//    Date: 28OCT2023
// Purpose: This module is the top level of the test bench heirarchy.
//####################################################################

`include "../../frame-work/inc/frame_work.svh"
import i2c_primitives_pkg::*;

module test_bench_top;

  wire test_clk;

  test_if tif(.tb_clk(test_clk));
  dut_if  dif(.tb_clk(test_clk));

  test_bench_hook_up test_bench
  (
    .test_if(tif),
    .dut_if(dif)
  );

  dut_hook_up dut
  (
    .test_if(tif),
    .dut_if(dif)
  );

endmodule : test_bench_top
