arm-linux-gnueabihf-as hello_arm32.s -o hello_arm32.o
arm-linux-gnueabihf-ld -static hello_arm32.o -o hello_arm32
./hello_arm32  # Or explicitly: qemu-arm ./hello_arm32
