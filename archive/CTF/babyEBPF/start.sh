#!/bin/sh
qemu-system-x86_64 \
    -m 512M \
    -kernel ./bzImage \
    -initrd ./rootfs.cpio \
    -monitor /dev/null \
    -append "root=/dev/ram console=ttyS0 quiet kaslr kpti=1 panic=1" \
    -cpu kvm64,+smep,+smap \
    -nographic \
    -no-reboot
