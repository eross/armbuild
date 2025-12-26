ca65 hello2.s -o hello.o -t c64 -g  # -g for debug info, -t c64 for target
ld65 hello.o -o hello.prg -t c64 -Ln hello.lbl  # Output PRG file, labels for debugging
