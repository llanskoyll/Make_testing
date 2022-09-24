# Compile which you use
COMPILE=gcc
#Flags 
CFLAGS=-c -Wall

all: hello

hello: main.o factorial.o hello.o
	$(COMPILE) main.o factorial.o hello.o -o hello

main.o: main.c
	$(COMPILE) $(CFLAGS) main.c

factorial.o: factorial.c
	$(COMPILE) $(CFLAGS) factorial.c

hello.o: hello.c
	$(COMPILE) $(CFLAGS) hello.c

clean: 
	rm -rf *.o hello
