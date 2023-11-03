import primitives_pkg::*;
import test_bench_common_pkg::*;

program automatic unit_test (input tif, input dif);

  initial
    begin : main
    $display("Unit test start");

    #10us;

    $display("Unit test end");
    end : main

endprogram : unit_test