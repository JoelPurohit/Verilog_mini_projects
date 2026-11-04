`timescale 1ns / 1ps

module tb_register_4bit;

    reg CLK;
    reg [3:0] D;
    wire [3:0] Q;

    // Instantiate the DUT
    register_4bit dut (
        .CLK(CLK),
        .D(D),
        .Q(Q)
    );

    // Generate clock
    initial begin
        CLK = 0;
        forever #5 CLK = ~CLK;
    end

    // Apply input combinations
    initial begin
        D = 4'b0000;

        @(negedge CLK);
        D = 4'b1011;

        @(negedge CLK);
        D = 4'b1100;

        @(negedge CLK);
        D = 4'b0110;

        @(negedge CLK);
        D = 4'b1111;

        @(negedge CLK);
        D = 4'b0001;

        @(negedge CLK);
        $finish;
    end

endmodule