 Digital Dice using Verilog

A simple digital dice implemented using Verilog HDL.
 Description

This project implements a digital dice that generates a value from 1 to 6.

The dice value changes based on a continuously running counter. When the
ROLL button is pressed, the current value of the counter is captured and
displayed as the dice result.

Features

- Verilog HDL implementation
- Dice values from 1 to 6
- Reset functionality
- Roll input
- Synthesizable RTL
- Testbench included
- Suitable for FPGA implementation

Inputs

| Signal | Description |
|--------|-------------|
| `clk` | System clock |
| `reset` | Active-high reset |
| `roll` | Roll button |

Output

| Signal | Description |
|--------|-------------|
| `dice_value[2:0]` | Dice value from 1 to 6 |
 Block Diagram

```text
              +-------------------+
              |                   |
       CLK -->|   Counter 1 to 6  |
              |                   |
              +---------+---------+
                        |
                        v
                  +-----------+
       ROLL ----->|   Register |
                  +-----+-----+
                        |
                        v
                 Dice Value (1-6)
