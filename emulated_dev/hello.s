.section .text
.global _start

_start:
    // write(1, msg, len)
    mov x8, #64         // syscall: write
    mov x0, #1          // fd: stdout
    ldr x1, =msg        // buf
    ldr x2, =len        // count
    svc #0

    // exit(0)
    mov x8, #93         // syscall: exit
    mov x0, #0
    svc #0

.section .data
msg: .ascii "Hello, ARMv8!\n"
len = . - msg
