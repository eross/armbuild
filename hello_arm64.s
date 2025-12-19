.section .text
.global _start

_start:
    mov x0, #1      // File descriptor (stdout)
    ldr x1, =msg    // Message address
    ldr x2, =len    // Message length
    mov w8, #64     // Syscall number (write)
    svc #0          // Invoke syscall

    mov x0, #0      // Exit code
    mov w8, #93     // Syscall number (exit)
    svc #0          // Invoke syscall

msg:
.ascii "Hello, ARM64!\n"
len = . - msg
