aarch64-linux-gnu-as $1.s -o $1.o
aarch64-linux-gnu-ld $1.o -o $1
./$1  # Or explicitly: qemu-aarch64 ./hello_arm64
