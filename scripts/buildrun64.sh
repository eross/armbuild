aarch64-linux-gnu-as hello_arm64.s -o hello_arm64.o
aarch64-linux-gnu-ld hello_arm64.o -o hello_arm64
./hello_arm64  # Or explicitly: qemu-aarch64 ./hello_arm64
