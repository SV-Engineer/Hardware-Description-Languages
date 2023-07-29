//####################################################################
//  Author: Austin | @SV-Engineer
//    Date: 29JUL2023
// Purpose: This package is used for some minor abstraction that
//          loosely mimics the C language. Note that this package
//          is not limited to hardware register sizes and availability
//          of access types as we are defining the hardware. In some
//          cases the oddly numbered types may be put into a packed
//          struct to form a register of 32-bits as one example.
//####################################################################
  // Section comment template
  // ========================
  // START - 
  // ========================

  // ========================
  // END - 
  // ========================

package c_types_pkg;
  // ========================
  // START - Macro Definitions
  // ========================
  // TODO: Consider the possibility of using a macro to make templated register types?
  // ========================
  // END - Macro Definitions
  // ========================

  // ========================
  // START - Type definitions
  // ========================
    // ------------------------
    // START - Boolean 
    // ------------------------
      // In hardware, this would technically take
      // up a whole byte in memory, but we don't
      // have that limitation here :).
      typedef        logic bool_t;
    // ------------------------
    // END - Boolean
    // ------------------------

    // ------------------------
    // START - Unsigned Types
    // ------------------------
      typedef        logic [ 1:0] uint2_t;
      typedef        logic [ 2:0] uint3_t;
      typedef        logic [ 3:0] uint4_t;
      typedef        logic [ 4:0] uint5_t;
      typedef        logic [ 5:0] uint6_t;
      typedef        logic [ 6:0] uint7_t;
      typedef        logic [ 7:0] uint8_t;
      typedef        logic [ 8:0] uint9_t;
      typedef        logic [ 9:0] uint10_t;
      typedef        logic [10:0] uint11_t;
      typedef        logic [11:0] uint12_t;
      typedef        logic [12:0] uint13_t;
      typedef        logic [13:0] uint14_t;
      typedef        logic [14:0] uint15_t;
      typedef        logic [15:0] uint16_t;
      typedef        logic [16:0] uint17_t;
      typedef        logic [17:0] uint18_t;
      typedef        logic [18:0] uint19_t;
      typedef        logic [19:0] uint20_t;
      typedef        logic [20:0] uint21_t;
      typedef        logic [21:0] uint22_t;
      typedef        logic [22:0] uint23_t;
      typedef        logic [23:0] uint24_t;
      typedef        logic [24:0] uint25_t;
      typedef        logic [25:0] uint26_t;
      typedef        logic [26:0] uint27_t;
      typedef        logic [27:0] uint28_t;
      typedef        logic [28:0] uint29_t;
      typedef        logic [29:0] uint30_t;
      typedef        logic [30:0] uint31_t;
      typedef        logic [31:0] uint32_t;
      typedef        logic [63:0] uint64_t;
    // ------------------------
    // END - Unsigned Types
    // ------------------------

    // ------------------------
    // START - Signed types
    // ------------------------
      typedef signed logic [ 1:0] int2_t;
      typedef signed logic [ 2:0] int3_t;
      typedef signed logic [ 3:0] int4_t;
      typedef signed logic [ 4:0] int5_t;
      typedef signed logic [ 5:0] int6_t;
      typedef signed logic [ 6:0] int7_t;
      typedef signed logic [ 7:0] int8_t;
      typedef signed logic [ 8:0] int9_t;
      typedef signed logic [ 9:0] int10_t;
      typedef signed logic [10:0] int11_t;
      typedef signed logic [11:0] int12_t;
      typedef signed logic [12:0] int13_t;
      typedef signed logic [13:0] int14_t;
      typedef signed logic [14:0] int15_t;
      typedef signed logic [15:0] int16_t;
      typedef signed logic [16:0] int17_t;
      typedef signed logic [17:0] int18_t;
      typedef signed logic [18:0] int19_t;
      typedef signed logic [19:0] int20_t;
      typedef signed logic [20:0] int21_t;
      typedef signed logic [21:0] int22_t;
      typedef signed logic [22:0] int23_t;
      typedef signed logic [23:0] int24_t;
      typedef signed logic [24:0] int25_t;
      typedef signed logic [25:0] int26_t;
      typedef signed logic [26:0] int27_t;
      typedef signed logic [27:0] int28_t;
      typedef signed logic [28:0] int29_t;
      typedef signed logic [29:0] int30_t;
      typedef signed logic [30:0] int31_t;
      typedef signed logic [31:0] int32_t;
      typedef signed logic [63:0] int64_t;
    // ------------------------
    // END - Signed types
    // ------------------------

    // ------------------------
    // START - Register types
    // ------------------------
      // This definition exists for syntactic consistency purposes.
      typedef uint8_t register8_t;

      // START - 16-bit register
      typedef union packed
      {
        // Full 16-bit word access with this member.
        uint16_t reg_data;

        // Half word access
        struct packed
        {
          uint8_t hw1;
          uint8_t hw0;
        } half_word_access;

        // Half word access via iteration
        uint8_t [1:0] reg_half_words;

        // Byte access available via struct member.
        struct packed
        {
          uint8_t b1;
          uint8_t b0;
        } byte_access;

        // Byte access available via iteration.
        uint8_t [1:0] reg_bytes;

      } register16_t;
      // END - 16-bit register

      // START - 32-bit register
      typedef union packed
      {
        // Full 32-bit word access with this member.
        uint32_t reg_data;

        // Half word access
        struct packed
        {
          uint16_t hw1;
          uint16_t hw0;
        } half_word_access;

        // Half word access via iteration
        uint16_t [1:0] reg_half_words;

        // Byte access available via struct member.
        struct packed
        {
          uint8_t b3;
          uint8_t b2;
          uint8_t b1;
          uint8_t b0;
        } byte_access;

        // Byte access available via iteration.
        uint8_t [3:0] reg_bytes;

      } register32_t;
      // END - 32-bit register

      // START - 64-bit register
      // Note: In the x86 architecture, the 16-bit subsystem
      //       has been deprecated and removed. Thus I also
      //       intend to save myself the effort of implementing
      //       it as it was likely removed for good reason. Also
      //       this union is mostly here for demonstrative purposes
      //       and I may never look at this again after I get it
      //       to compile.
      typedef union packed
      {
        // Full 64-bit word access with this member.
        uint64_t reg_data;

        // Half word access
        struct packed
        {
          uint32_t hw1;
          uint32_t hw0;
        } half_word_access;

        // Half word access via iteration
        uint32_t [1:0] reg_half_words;

        // Byte access available via struct member.
        struct packed
        {
          uint8_t b7;
          uint8_t b6;
          uint8_t b5;
          uint8_t b4;
          uint8_t b3;
          uint8_t b2;
          uint8_t b1;
          uint8_t b0;
        } byte_access;

        // Byte access available via iteration.
        uint8_t [7:0] reg_bytes;

      } register64_t;
      // END - 64-bit register
    // ------------------------
    // END - Register types
    // ------------------------

  // ========================
  // END - Type definitions
  // ========================

  // ========================
  // START - Class Definitions
  // ========================

  // ========================
  // END - Class Definitions
  // ========================

endpackage : c_types_pkg
