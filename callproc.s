.section .text
.global _start

_start:
    bl empty
    mov x0, #1      // File descriptor (stdout)
    ldr x1, =msg    // Message address
    ldr x2, =len    // Message length
    mov w8, #64     // Syscall number (write)
    svc #0          // Invoke syscall

    mov x0, #0      // Exit code
    mov w8, #93     // Syscall number (exit)
    svc #0          // Invoke syscall

empty:
    mov x0, #2
    ret
    ret x30
    br x30

msg:
.ascii "Hello, ARM64!\n"
len = . - msg
