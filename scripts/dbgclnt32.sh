gdb-multiarch -q --nh -ex 'set architecture arm' -ex 'file hello_arm32' -ex 'target remote localhost:1234' -ex 'layout split' -ex 'layout regs'
