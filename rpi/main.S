.syntax unified
.cpu cortex-m0plus
.thumb

//.global _start
.global main
.thumb_func
main:
//_start:
    // Branch to the SDK's runtime initialization (sets up clocks, etc.)
    bl __pico_init

    // Initialize stdio (required for printf over USB)
    bl stdio_init_all

loop:
    // Load address of the string into r0 (first argument for printf)
    ldr r0, =hello_str

    // Call printf
    bl printf

    // Infinite loop
    b loop

.section .data
hello_str:
    .asciz "Hello World\r\n"

.section .text
// Weak aliases for SDK entry points (the real implementations are in the SDK)
.weak __pico_init
.thumb_func
__pico_init:
    bx lr
