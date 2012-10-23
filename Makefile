all: hello printf1

hello: hello.asm
		nasm -f elf -l hello.lst hello.asm
		gcc -o hello hello.o
		rm hello.o hello.lst
		./hello > hello.out
        

printf1:printf1.asm
		nasm -f elf -l printf1.lst printf1.asm
		gcc printf1.o -o printf1
		rm printf1.o printf1.lst
		./printf1 > printf1.out
		
