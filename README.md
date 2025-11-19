DSD Verilog Modules and Testbenches

Overview

- This repository contains source Verilog modules and matching testbenches for common Digital System Design building blocks.

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

3) Multiplexers (2x1 and 4x1)
- Files: `src/mux2to1.v`, `src/mux4.v`
- TB: `tb/mux2to1_tb.v`, `tb/mux4_tb.v`

4) Priority Encoder (8-to-3, MSB priority)
- File: `src/priority_encoder8.v`
- TB: `tb/priority_encoder8_tb.v`

5) Decoder (2-to-4 one-hot)
- File: `src/decoder2to4.v`
- TB: `tb/decoder2to4_tb.v`

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


Notes

- Testbenches print key signals with `$display` for quick verification.