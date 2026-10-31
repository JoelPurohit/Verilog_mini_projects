`timescale 1ns / 1ps

module tb_DFF_reset;

    reg D;
    reg CLK;
    reg RST;
    wire Q;

    // Instantiate the DUT
    DFF_reset dut (
        .D(D),
        .CLK(CLK),
        .RST(RST),
        .Q(Q)
    );

    // Generate clock
    initial begin
        CLK = 0;
        forever #5 CLK = ~CLK;
    end

    // Apply test inputs
    initial begin
        D = 0;
        RST = 1;

        // Release reset
        #12 RST = 0;

        // Test normal data capture
        #3 D = 1;
        #10 D = 0;
        #10 D = 1;

        // Activate reset
        #2 RST = 1;

        // Keep reset active across a clock edge
        #10 RST = 0;

        // Test data capture after reset
        #10 D = 0;
        #10 D = 1;

        #10 $finish;
    end

endmodule