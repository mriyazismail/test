all: test

test: hello.o
	gcc -Wall -std=c99 -o test hello.o

hello.o: hello.c
	gcc -Wall -std=c99 -c hello.c

.PHONY: clean

clean:
	rm -f test hello.o
