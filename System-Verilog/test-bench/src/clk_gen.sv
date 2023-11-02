//####################################################################
//  Author: Austin | @SV-Engineer
//    Date: 28OCT2023
// Purpose: This module is the top level test bench clock generator.
//####################################################################

`include "../../frame-work/inc/frame_work.svh"

module clk_gen(test_if tif);

  realtime clocking_delay = 0.0;

  initial
    begin
    tif.test_clk_ctrl.clk = 1'b1;

    forever
      begin
      case (tif.test_clk_ctrl.frequency.order_of_magnitude)
        MEGA_HERTZ:
          begin
          clocking_delay  = realtime'(1.0 / (tif.test_clk_ctrl.frequency.freq * real'(1e-6)));
          end
        KILO_HERTZ:
          begin
          clocking_delay  = realtime'(1.0 / (tif.test_clk_ctrl.frequency.freq * real'(1e-3)));
          end
        HERTZ:
          begin
          clocking_delay  = realtime'(1.0 / (tif.test_clk_ctrl.frequency.freq));
          end
        // Arbitrarily default to 1 kHz
        default:
          begin
          clocking_delay = realtime'(1.0 / 1000.0);
          end
      endcase
      #(clocking_delay / realtime'(2.0));
      // Not the clock.
      tif.test_clk_ctrl.clk ^= 1'b1;
      end
    end

endmodule : clk_gen