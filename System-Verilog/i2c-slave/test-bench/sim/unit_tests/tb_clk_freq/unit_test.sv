import primitives_pkg::*;
import test_bench_common_pkg::*;

`include "test_bench.svh"

module unit_test (test_if tif, dut_if dif);

  initial
    begin : main
    $display("Unit test start");
    #1ns;
    end : main

  final
    begin : exit_main
    $display("Unit test end");
    $finish;
    end : exit_main

endmodule : unit_test