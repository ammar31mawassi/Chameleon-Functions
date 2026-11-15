algorithms := $(sort $(patsubst %/,%,$(dir $(wildcard */*.asm))))

.PHONY: $(algorithms)
$(algorithms): %: build/%

.SECONDEXPANSION:
build/%: build/%.o
	gcc -o "$@" "$<"

build/%.o: $$*/$$*.asm
	mkdir -p build
	nasm -f elf64 -o "$@" "$<"
