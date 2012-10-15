hello: hello.asm
		nasm -f elf -l hello.lst hello.asm
		gcc -o hello hello.o
		rm hello.o hello.lst
		./hello > hello.out
