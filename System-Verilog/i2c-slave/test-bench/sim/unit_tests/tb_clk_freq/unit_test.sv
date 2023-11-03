import primitives_pkg::*;
import test_bench_common_pkg::*;

module unit_test (test_if tif, dut_if dif);

  initial
    begin : main
    $display("Unit test start");

    //#1ns;

    $display("Unit test end");

    $finish;
    end : main

endmodule : unit_test