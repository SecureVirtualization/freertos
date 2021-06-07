# works
# /home/atrofimov/ws/experimental/qemu-bin/bin/qemu-system-aarch64 -machine virt -cpu cortex-a57 -smp 1 -m 4096 -kernel kernel.axf -serial pty -nographic -s -S

#qemu-system-aarch64 -machine virt -machine virtualization=on -machine gic-version=2 -cpu cortex-a53 -smp 2 -m 2048 -kernel kernel.bin -serial pty -nographic
qemu-system-aarch64 -machine virt -machine virtualization=on -machine gic-version=2 -cpu cortex-a53 -smp 4 -m 2G -kernel image.raw -serial stdio
#-sdl

#  -machine secure=on

#-serial stdio
#/soft/qemu/bin/qemu-system-aarch64 -machine virt -cpu cortex-a57 -m 4096 -kernel kernel.axf -serial stdio -gdb tcp::1234 -S
