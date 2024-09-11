#LD       = riscv64-unknown-elf-ld
LD       = ld
LDSCRIPT = script.ld

all: devicetree.wrapped.elf devicetree.no-uart.wrapped.elf devicetree.dual.wrapped.elf

%.dtb: %.dts
	dtc $< -O dtb > $@

%.wrapped.elf: %.dtb script.ld
	$(LD) -o $@ -b binary -T $(LDSCRIPT) $<

.PHONY: clean
clean:
	rm -f *.dtb
	rm -f *.wrapped.elf
