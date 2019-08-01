assemble:
	nasm -f macho64 foo.asm -o obj/foo.o
	ld -macosx_version_min 10.7.0 -lSystem -o bin/foo obj/foo.o

all: assemble

test:
	make assemble
	./bin/foo

clean:
	rm -r obj/*.o
	rm -r bin/*

.PHONY: all clean