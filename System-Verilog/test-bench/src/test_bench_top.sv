//####################################################################
//  Author: Austin | @SV-Engineer
//    Date: 28OCT2023
// Purpose: This module is the top level of the test bench heirarchy.
//####################################################################

`include "../../frame-work/inc/frame_work.svh"

module test_bench_top;

  logic test_clk;

  test_if tif(.tb_clk(test_clk));
  dut_if  dif();

  // test_bench_hook_up test_bench
  // (
  //   .test_if(tif),
  //   .dut_if(dif)
  // );

  dut_hook_up dut
  (
    .tif(tif),
    .dif(dif)
  );

  unit_test ut
  (
    .tif(tif),
    .dif(dif)
  );

endmodule : test_bench_top
