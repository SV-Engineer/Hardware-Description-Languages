//####################################################################
//  Author: Austin | @SV-Engineer
//    Date: 28OCT2023
// Purpose: This interface is for hooking up the dut to the test bench.
//          It will be instantiated in the tb wrapper and passed to any
//          module that requires control of the dut or information from
//          the dut.
//####################################################################

`include "../inc/frame_work.svh"

interface test_if
(
  output tb_clk
);

  // Reset control
  logic      nReset;
  // Clocking control
  clk_ctrl_t test_clk_ctrl;
  logic      dut_clk;
  // Continuous assignment for clocking mechanism
  assign dut_clk = test_clk_ctrl.manual ? (test_clk_ctrl.clk & ~test_clk_ctrl.nEnable) : (tb_clk & ~test_clk_ctrl.nEnable);
  assign tb_clk  = dut_clk;

endinterface : test_if
