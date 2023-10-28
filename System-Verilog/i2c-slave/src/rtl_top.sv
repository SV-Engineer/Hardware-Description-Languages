//####################################################################
//  Author: Austin | @SV-Engineer
//    Date: 28OCT2023
// Purpose: This module is the top level of the RTL heirarchy. All
//          submodules are instantiated here and down. Anything above
//          this should be considered a test bench feature.
//####################################################################

`include "../../../frame-work/inc/frame_work.svh"

module rtl_top
(
  input wire nRst,
  input wire clk,
  input wire scl,
  inout wire sda
);

endmodule : rtl_top
