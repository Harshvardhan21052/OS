a.out:Assignment1.o
	gcc -m64 -no-pie Assignment1.o
Assignment1.o:Assignment1.asm
	nasm -felf64 -g Assignment1.asm
