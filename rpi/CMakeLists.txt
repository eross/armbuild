cmake_minimum_required(VERSION 3.13)

# Import Pico SDK
include(pico_sdk_import.cmake)

project(hello_asm C CXX ASM)

pico_sdk_init()

add_executable(hello_asm
    main.S
)

# Enable USB stdio (for printf output), disable UART stdio
pico_enable_stdio_usb(hello_asm 1)
pico_enable_stdio_uart(hello_asm 0)

target_link_libraries(hello_asm pico_stdlib)

pico_add_extra_outputs(hello_asm)

