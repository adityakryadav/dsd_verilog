DSD Verilog Modules and Testbenches

Overview

- This repository contains source Verilog modules and matching testbenches for common Digital System Design building blocks.
- All designs are simple, synthesizable examples intended for learning and quick simulation.

Structure

- `src/` — RTL modules
- `tb/`  — corresponding testbenches

Contents

1) Basic Gates
- File: `src/gates.v`
- TB: `tb/gates_tb.v`

2) Boolean Expressions
- File: `src/boolean_expressions.v`
- TB: `tb/boolean_expressions_tb.v`

3) Multiplexers (4x1 and 8x1)
- Files: `src/mux4.v`, `src/mux8.v`
- TB: `tb/mux4_tb.v`, `tb/mux8_tb.v`

4) Priority Encoder (8-to-3, MSB priority)
- File: `src/priority_encoder8.v`
- TB: `tb/priority_encoder8_tb.v`

5) Decoder (3-to-8 one-hot)
- File: `src/decoder3to8.v`
- TB: `tb/decoder3to8_tb.v`

6) Half Adder and Full Adder
- Files: `src/half_adder.v`, `src/full_adder.v`
- TB: `tb/half_adder_tb.v`, `tb/full_adder_tb.v`

7) Half Subtractor and Full Subtractor
- Files: `src/half_subtractor.v`, `src/full_subtractor.v`
- TB: `tb/half_subtractor_tb.v`, `tb/full_subtractor_tb.v`

8) Universal Adder / Subtractor with Overflow Check (parameterized)
- File: `src/adder_subtractor.v`
- TB: `tb/adder_subtractor_tb.v`
- Notes: Signed overflow detection is implemented as `(~(a[N-1] ^ b_eff[N-1])) & (a[N-1] ^ y[N-1])`.

9) SR Latch (asynchronous NOR-latch)
- File: `src/sr_latch.v`
- TB: `tb/sr_latch_tb.v`

10) SR and JK Flip-Flops (synchronous, posedge clock)
- Files: `src/sr_ff.v`, `src/jk_ff.v`
- TB: `tb/sr_ff_tb.v`, `tb/jk_ff_tb.v`

11) D and T Flip-Flops (synchronous, posedge clock)
- Files: `src/d_ff.v`, `src/t_ff.v`
- TB: `tb/d_ff_tb.v`, `tb/t_ff_tb.v`

12) Counter Design (parameterized up/down counter with enable and reset)
- File: `src/counter.v`
- TB: `tb/counter_tb.v`

Simulation

You can simulate with Icarus Verilog (iverilog) or other tools (ModelSim/Questa, Vivado, etc.). Below are example `iverilog` commands:

Examples (PowerShell):

```powershell
# Basic gates
iverilog -o build/gates_tb tb/gates_tb.v src/gates.v; vvp build/gates_tb

# Multiplexers
iverilog -o build/mux4_tb tb/mux4_tb.v src/mux4.v; vvp build/mux4_tb
iverilog -o build/mux8_tb tb/mux8_tb.v src/mux8.v; vvp build/mux8_tb

# Priority encoder
iverilog -o build/pe_tb tb/priority_encoder8_tb.v src/priority_encoder8.v; vvp build/pe_tb

# Decoder
iverilog -o build/dec_tb tb/decoder3to8_tb.v src/decoder3to8.v; vvp build/dec_tb

# Adders
iverilog -o build/ha_tb tb/half_adder_tb.v src/half_adder.v; vvp build/ha_tb
iverilog -o build/fa_tb tb/full_adder_tb.v src/full_adder.v; vvp build/fa_tb

# Subtractors
iverilog -o build/hs_tb tb/half_subtractor_tb.v src/half_subtractor.v; vvp build/hs_tb
iverilog -o build/fs_tb tb/full_subtractor_tb.v src/full_subtractor.v; vvp build/fs_tb

# Adder/Subtractor
iverilog -o build/as_tb tb/adder_subtractor_tb.v src/adder_subtractor.v; vvp build/as_tb

# Latch
iverilog -o build/srl_tb tb/sr_latch_tb.v src/sr_latch.v; vvp build/srl_tb

# Flip-flops
iverilog -o build/srff_tb tb/sr_ff_tb.v src/sr_ff.v; vvp build/srff_tb
iverilog -o build/jkff_tb tb/jk_ff_tb.v src/jk_ff.v; vvp build/jkff_tb
iverilog -o build/dff_tb tb/d_ff_tb.v src/d_ff.v; vvp build/dff_tb
iverilog -o build/tff_tb tb/t_ff_tb.v src/t_ff.v; vvp build/tff_tb

# Counter
iverilog -o build/counter_tb tb/counter_tb.v src/counter.v; vvp build/counter_tb
```

Notes

- Testbenches print key signals with `$display` for quick verification.
- Modules are kept compact and synthesizable; adapt as needed for curriculum or hardware targets.