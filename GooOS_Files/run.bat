@echo off
nasm -f bin boot.asm -o os-image.bin
qemu-system-x86_64 -drive format=raw,file=os-image.bin -serial stdio -no-reboot -no-shutdown
pause
