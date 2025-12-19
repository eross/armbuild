.section .text
.global _start

_start:
    mov r0, #1      // File descriptor (stdout)
    ldr r1, =msg    // Message address
    ldr r2, =len    // Message length
    mov r7, #4      // Syscall number (write)
    svc #0          // Invoke syscall

    mov r0, #0      // Exit code
    mov r7, #1      // Syscall number (exit)
    svc #0          // Invoke syscall

msg:
.ascii "Hello, ARM32!\n"
len = . - msg
