# 8-Bit Arithmetic Logic Unit (ALU)

A hardware-level simulation of an **8-Bit ALU**, the core execution unit of a CPU. It processes two 8-bit inputs to perform core arithmetic and bitwise logical operations.

## 🚀 Key Features
* **8-Bit Data Width:** Handles inputs $A$ and $B$ to yield output $Y$.
* **Status Flags:** Real-time generation of CPU condition flags: `Z` (Zero), `C` (Carry), `V` (Overflow), and `N` (Negative).

## 🛠️ Operations (3-bit Opcode)
* `000`: **ADD** ($A + B$)
* `001`: **SUB** ($A - B$)
* `010`: **AND** ($A \ \& \ B$)
* `011`: **OR** ($A \ \| \ B$)
* `100`: **XOR** ($A \ \oplus \ B$)
* `101`: **NOT** ($\sim A$)
* `110`: **SHL** ($A \ll 1$)
* `111`: **SHR** ($A \gg 1$)

## 💻 Quick Start

```bash
# 1. Clone the repo
git clone [https://github.com/yourusername/8bit-alu.git](https://github.com/yourusername/8bit-alu.git) && cd 8bit-alu

# 2. Compile & Run (Using Icarus Verilog as an example)
iverilog -o alu_sim src/alu.v testbench/alu_tb.v
vvp alu_sim
