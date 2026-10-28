`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.10.2026 17:08:28
// Design Name: 
// Module Name: tb_d_ff
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////




module tb_d_ff;

    reg D;
    reg CLK;
    wire Q;

    // Instantiate the DFF
    d_ff dut (
        .D(D),
        .CLK(CLK),
        .Q(Q)
    );

    // Generate a clock with a 10 ns period
    initial begin
        CLK = 0;
        forever #5 CLK = ~CLK;
    end

    // Apply test inputs
    initial begin
        D = 0;

        #12 D = 1;
        #10 D = 0;
        #10 D = 1;
        #10 D = 0;

        #10 $finish;
    end

endmodule
