//####################################################################
//  Author: Austin | @SV-Engineer
//    Date: 28OCT2023
// Purpose: This module is the hook up for the test bench. It passes
//          the test interface to the dut in a meaningful way.
//####################################################################

`include "../../frame-work/inc/frame_work.svh"

module dut_hook_up(test_if tif, dut_if dif);

  rtl_top dut
  (
    .nRst(tif.nReset),
    .clk(tif.dut_clk),
    .scl(dif.scl),
    .sda(dif.sda)
  );

endmodule : dut_hook_up
