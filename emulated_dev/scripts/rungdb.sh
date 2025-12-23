gdb-multiarch ./hello
#(gdb) target remote localhost:1234
#(gdb) set architecture aarch64
#(gdb) break _start
#(gdb) continue          # or stepi for instruction-by-instruction
#(gdb) info registers    # view x0-x30, pc, etc.
#(gdb) disas             # disassemble current function
#(gdb) layout regs       # TUI mode for registers (optional)
