gdb-multiarch -q --nh -ex 'set architecture arm64' -ex 'file hello_arm64' -ex 'target remote localhost:1234' -ex 'layout split' -ex 'layout regs'
