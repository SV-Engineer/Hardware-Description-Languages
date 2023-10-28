//####################################################################
//  Author: Austin | @SV-Engineer
//    Date: 28OCT2023
// Purpose: This interface is for hooking up the dut to the test bench.
//          It will be instantiated in the tb wrapper and passed to any
//          module that requires control of the dut or information from
//          the dut.
//####################################################################

`include "frame_work.svh"

interface test_if(input tb_clk);

  // Clocking control
  clk_ctrl_t test_clk = '{default: '0};
  logic dut_clk;

  // Continuous assignments
  assign dut_clk = test_clk.manual ? (test_clk.clk & test_clk.nEnable) : (tb_clk & test_clk.nEnable);

endinterface : test_if
