//####################################################################
//  Author: Austin | @SV-Engineer
//    Date: 28OCT2023
// Purpose: This interface is for hooking up the dut to the test bench.
//          It will be instantiated in the tb wrapper and passed to any
//          module that requires control of the dut or information from
//          the dut.
//####################################################################

`include "../../frame-work/inc/frame_work.svh"
`include "../inc/i2c_include.svh"

interface dut_if(input tb_clk);

endinterface : dut_if
