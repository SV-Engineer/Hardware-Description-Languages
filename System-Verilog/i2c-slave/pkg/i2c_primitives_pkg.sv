//####################################################################
//  Author: Austin | @SV-Engineer
//    Date: 28OCT2023
// Purpose: This package is for defining some of the primitives
//          related to the i2c rtl.
//####################################################################

  // Section comment template
  // ========================
  // START - 
  // ========================

  // ========================
  // END - 
  // ========================

package i2c_primitives_pkg;

  typedef struct
  {
    logic scl;
    logic sda;
  } i2c_port_t;

endpackage : i2c_primitives_pkg