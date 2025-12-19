sudo apt update -y && sudo apt upgrade -y
sudo apt install qemu-user qemu-user-static \
    gcc-aarch64-linux-gnu binutils-aarch64-linux-gnu binutils-aarch64-linux-gnu-dbg \
    gcc-arm-linux-gnueabihf binutils-arm-linux-gnueabihf binutils-arm-linux-gnueabihf-dbg \
    build-essential gdb-multiarch
