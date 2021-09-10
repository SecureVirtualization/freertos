OUTPUT_FORMAT("elf64-littleaarch64")
OUTPUT_ARCH(aarch64)
TARGET(binary)

STACKTOP = 0x41000000;

SECTIONS
{
	/* Starts at LOADER_ADDR. */
	. = 0x40080000;
	__start = .;
	__text_start = .;
	.text :
	{
        *(.text_entry)
		*(.text)
        *(.text.*)
        . = ALIGN(4096);
		*(.vectors)
	}
	. = ALIGN(4096); /* align to page size */
	__text_end = .;

	__data_start = .;
	.data :
	{
		*(.data)
        *(.data.*)
	}
	. = ALIGN(4096); /* align to page size */
	__data_end = .;

	__rodata_start = .;
	.rodata :
	{
		*(.rodata)
		*(.rodata.*)
	}
	. = ALIGN(4096); /* align to page size */
	__rodata_end = .;

	__bss_start = .;
	.bss :
	{
		bss = .;
		*(.bss)
		*(.bss.*)
	}
	. = ALIGN(4096); /* align to page size */
	__bss_end = .;
	__end = .;

	. = STACKTOP ; /* stack memory */
	stack_top = .;
}
__bss_size = (__bss_end - __bss_start)>>3;
