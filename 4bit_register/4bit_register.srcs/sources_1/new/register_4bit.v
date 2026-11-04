module register_4bit (
    input wire CLK,
    input wire [3:0] D,
    output reg [3:0] Q
);

    always @(posedge CLK) begin
        Q <= D;
    end

endmodule