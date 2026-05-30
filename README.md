# 8-Bit Arithmetic Logic Unit (ALU) Using Verilog HDL
Project Overview

This project implements an 8-bit Arithmetic Logic Unit (ALU) using Verilog HDL. The ALU performs basic arithmetic and logical operations based on a 4-bit opcode input. The design was verified through simulation and waveform analysis.

## Objectives
Design an 8-bit ALU using Verilog HDL.
Implement arithmetic and logical operations.
Verify functionality using a testbench.
Analyze simulation waveforms.
Gain hands-on experience in RTL design and verification.

## Features
The ALU supports the following operations:

Opcode      	Operation
0000	         Addition
0001	         Subtraction
0010          	AND
0011	          OR
0100	          XOR
0101	          NOT A
0110	         Left Shift
0111	         Right Shift

## Inputs and Outputs
Inputs
A [7:0] : First operand
B [7:0] : Second operand
opcode [3:0] : Operation select
Outputs
result [7:0] : Operation result
carry : Carry flag
zero : Zero flag


## RTL Design

The ALU was implemented using combinational logic with a case statement inside an always block. Based on the opcode, the corresponding arithmetic or logical operation is performed.


## Verification Methodology

A Verilog testbench was developed to verify all ALU operations.

Test Cases:

Addition
Subtraction
AND
OR
XOR
NOT
Left Shift
Right Shift
Different input combinations were applied and outputs were verified using simulation waveforms.


## Simulation Results

The simulation confirmed correct operation of all implemented functions.

Verified:
Arithmetic operations
Logical operations
Carry generation
Zero flag generation



## Learning Outcomes

Through this project, I learned:

Verilog HDL coding
RTL design methodology
Combinational logic design
Testbench development
Waveform analysis
Debugging digital circuits


## Future Improvements
Overflow flag implementation
Sign flag implementation
16-bit ALU version
Multiplication and division operations
SystemVerilog-based verification


## Tools used
Icarus verilog
GTKWave
VS-Code

## Author
Piyush Kumar Yadav
(Frontend VLSI Design Enthusiast)
