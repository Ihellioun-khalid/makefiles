
all:sum

sum : main.o sum.o
	@gcc -o sum main.o sum.o

main.o : main.c sum.h
	@gcc -c main.c

sum.o : sum.c sum.h
	@gcc -c sum.c

clean :
	@rm -rf *.o

mrproper :
	make clean
	@rm -rf sum