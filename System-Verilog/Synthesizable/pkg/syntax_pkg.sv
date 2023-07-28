//####################################################################
//  Author: Austin | @SV-Engineer
//    Date: 28JUL2023
// Purpose: This file is for demonstrating the syntax for a package.
//####################################################################

package demonstration_pkg;

  logic someBit;
  logic [1:0] someBitField;

  const struct packed
  {
    logic [15:0] a;
    logic [15:0] b;
  } genericConstStruct;

  typedef union packed
  {
    logic [31:0] data;

    struct packed
    {
      logic [7:0] byte3;
      logic [7:0] byte2;
      logic [7:0] byte1;
      logic [7:0] byte0;
    } bytes;

  } genericUnion_t;

endpackage : demonstration_pkg


