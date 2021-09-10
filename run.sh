# works
# /home/atrofimov/ws/experimental/qemu-bin/bin/qemu-system-aarch64 -machine virt -cpu cortex-a57 -smp 1 -m 4096 -kernel kernel.axf -serial pty -nographic -s -S

#qemu-system-aarch64 -machine virt -machine virtualization=on -machine gic-version=2 -cpu cortex-a53 -smp 2 -m 2048 -kernel kernel.bin -serial pty -nographic
qemu-system-aarch64 -machine virt -machine gic-version=2 -cpu cortex-a72 -smp 1 -m 256M -kernel kernel.raw -serial stdio
#qemu-system-aarch64 -machine virt -machine gic-version=2 -cpu cortex-a72 -smp 1 -m 4G -kernel kernel.bin -serial stdio

#qemu-system-aarch64 -machine virt -machine gic-version=2 -smp 1 -cpu cortex-a72 -m 4G -kernel kernel.elf -serial stdio
#-sdl

#  -machine secure=on

#-serial stdio
#qemu-system-aarch64 -machine virt -cpu cortex-a72 -smp 1 -m 4G -kernel kernel.raw -serial stdio -gdb tcp::1234 -S
