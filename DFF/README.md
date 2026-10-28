# D Flip-Flop (DFF) Using Verilog

## Overview
This project implements a positive-edge-triggered D Flip-Flop (DFF) using Verilog HDL and verifies its functionality through behavioral simulation in Xilinx Vivado.

A D Flip-Flop is a sequential circuit that stores one bit of data. It captures the input value at the rising edge of the clock and holds the stored value until the next rising edge.

## Objectives
- Understand the operation of a D Flip-Flop.
- Implement a DFF using Verilog HDL.
- Develop a testbench to generate clock and input signals.
- Verify the design through waveform simulation.

## Tools Used
- Verilog HDL
- Xilinx Vivado
- Behavioral Simulation

## Design Specifications
- **Inputs:** D, CLK
- **Output:** Q
- **Triggering:** Positive-edge-triggered

## Working Principle
1. The clock signal determines when the input is sampled.
2. At every rising edge of `CLK`, the value of `D` is stored in `Q`.
3. Between rising edges, `Q` retains its previous value.
4. The output may initially have an unknown value (`X`) until the first rising clock edge.

## Verilog Implementation
The design uses an `always @(posedge CLK)` block to update the output at the rising edge of the clock. A non-blocking assignment (`<=`) models the sequential behavior.

## Testbench and Verification
The testbench generates a periodic clock and applies different values to `D`.

The simulation verifies that:
- `Q` captures `D` at each rising clock edge.
- Changes in `D` between rising edges do not immediately change `Q`.
- The output retains its stored value until the next rising edge.

## Expected Results

| Condition | Expected behavior |
|---|---|
| Rising edge with `D = 0` | `Q` becomes `0` |
| Rising edge with `D = 1` | `Q` becomes `1` |
| No rising clock edge | `Q` holds its previous value |

## Concepts Learned
- Sequential digital circuits
- Positive-edge-triggered flip-flops
- Verilog `always` blocks
- Non-blocking assignments
- Testbench development
- Clock generation
- Behavioral simulation and waveform verification

## Conclusion
This project demonstrates the design and simulation of a basic D Flip-Flop using Verilog HDL. It establishes a foundation for understanding registers, counters, and sequential logic in digital design and VLSI functional verification.
