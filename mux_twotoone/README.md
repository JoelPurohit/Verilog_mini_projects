# 2:1 Multiplexer Using Verilog and Vivado

## Objective
Design and simulate a 2:1 multiplexer using Verilog HDL in AMD Vivado.

## Functionality
A 2:1 MUX selects one of two inputs based on the select signal S.

- S = 0: Output Y = A
- S = 1: Output Y = B

## Verilog Implementation
```verilog
assign Y = S ? B : A;
```

## Verification
- Created a Verilog testbench.
- Tested all 8 possible combinations of inputs A, B, and S.
- Ran behavioral simulation in Vivado.
- Observed the output waveform.

## Tools Used
- Verilog HDL
- AMD Vivado

## Files
- `mux2to1.v`: RTL design
- `tb_mux2to1.v`: Testbench
- `simulation_results.png`: Waveform screenshot 

## Learning Outcomes
- RTL design using Verilog
- Testbench development
- Behavioral simulation
- Waveform analysis