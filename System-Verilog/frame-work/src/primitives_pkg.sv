//####################################################################
//  Author: Austin | @SV-Engineer
//    Date: 28OCT2023
// Purpose: This package is used for defining the base primitives of
//          the frame work. Part of the benefit of these primitives is
//          that they reduce clutter while still maintaining readability;
//          the reader can easily understand that ulogic8_t is a an 8-bit
//          vector of type logic after observing the definition once.
//          Furthermore they add ease of casting, which typically is an
//          important habit people tend to overlook.
//####################################################################

  // Section comment template
  // ========================
  // START - 
  // ========================

  // ========================
  // END - 
  // ========================

package primitives_pkg;
  // ========================
  // START - Type definitions
  // ========================
    // ------------------------
    // START - Unsigned Types
    // ------------------------
      // Note that ulogic1_t would be redundant as the purpose of these primitives
      // is to avoid having to type the '[' & ']' characters everytime a variable is declared.
      typedef        logic [ 1:0] ulogic2_t;
      typedef        logic [ 2:0] ulogic3_t;
      typedef        logic [ 3:0] ulogic4_t;
      typedef        logic [ 4:0] ulogic5_t;
      typedef        logic [ 5:0] ulogic6_t;
      typedef        logic [ 6:0] ulogic7_t;
      typedef        logic [ 7:0] ulogic8_t;
      typedef        logic [ 8:0] ulogic9_t;
      typedef        logic [ 9:0] ulogic10_t;
      typedef        logic [10:0] ulogic11_t;
      typedef        logic [11:0] ulogic12_t;
      typedef        logic [12:0] ulogic13_t;
      typedef        logic [13:0] ulogic14_t;
      typedef        logic [14:0] ulogic15_t;
      typedef        logic [15:0] ulogic16_t;
      typedef        logic [16:0] ulogic17_t;
      typedef        logic [17:0] ulogic18_t;
      typedef        logic [18:0] ulogic19_t;
      typedef        logic [19:0] ulogic20_t;
      typedef        logic [20:0] ulogic21_t;
      typedef        logic [21:0] ulogic22_t;
      typedef        logic [22:0] ulogic23_t;
      typedef        logic [23:0] ulogic24_t;
      typedef        logic [24:0] ulogic25_t;
      typedef        logic [25:0] ulogic26_t;
      typedef        logic [26:0] ulogic27_t;
      typedef        logic [27:0] ulogic28_t;
      typedef        logic [28:0] ulogic29_t;
      typedef        logic [29:0] ulogic30_t;
      typedef        logic [30:0] ulogic31_t;
      typedef        logic [31:0] ulogic32_t;
      typedef        logic [63:0] ulogic64_t;
    // ------------------------
    // END - Unsigned Types
    // ------------------------

    // ------------------------
    // START - Signed types
    // ------------------------
      typedef signed logic [ 1:0] slogic2_t;
      typedef signed logic [ 2:0] slogic3_t;
      typedef signed logic [ 3:0] slogic4_t;
      typedef signed logic [ 4:0] slogic5_t;
      typedef signed logic [ 5:0] slogic6_t;
      typedef signed logic [ 6:0] slogic7_t;
      typedef signed logic [ 7:0] slogic8_t;
      typedef signed logic [ 8:0] slogic9_t;
      typedef signed logic [ 9:0] slogic10_t;
      typedef signed logic [10:0] slogic11_t;
      typedef signed logic [11:0] slogic12_t;
      typedef signed logic [12:0] slogic13_t;
      typedef signed logic [13:0] slogic14_t;
      typedef signed logic [14:0] slogic15_t;
      typedef signed logic [15:0] slogic16_t;
      typedef signed logic [16:0] slogic17_t;
      typedef signed logic [17:0] slogic18_t;
      typedef signed logic [18:0] slogic19_t;
      typedef signed logic [19:0] slogic20_t;
      typedef signed logic [20:0] slogic21_t;
      typedef signed logic [21:0] slogic22_t;
      typedef signed logic [22:0] slogic23_t;
      typedef signed logic [23:0] slogic24_t;
      typedef signed logic [24:0] slogic25_t;
      typedef signed logic [25:0] slogic26_t;
      typedef signed logic [26:0] slogic27_t;
      typedef signed logic [27:0] slogic28_t;
      typedef signed logic [28:0] slogic29_t;
      typedef signed logic [29:0] slogic30_t;
      typedef signed logic [30:0] slogic31_t;
      typedef signed logic [31:0] slogic32_t;
      typedef signed logic [63:0] slogic64_t;
    // ------------------------
    // END - Signed types
    // ------------------------

  // ========================
  // START - Constants
  // ========================
  const logic FALSE  = 1'b0;
  const logic TRUE   = 1'b1;
  const logic nFALSE = ~FALSE;
  const logic nTRUE  = ~TRUE;
  // ========================
  // END - Constants
  // ========================

endpackage : primitives_pkg
