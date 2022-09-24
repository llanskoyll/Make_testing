# Compile which you use
COMPILE=gcc
#Flags 
CFLAGS=-c -Wall
#Target
TARGET=hello
#List object's
OBJ=main.o factorial.o hello.o

all: $(TARGET)

$(TARGET): $(OBJ)
	$(COMPILE) $(OBJ) -o hello

main.o: main.c
	$(COMPILE) $(CFLAGS) main.c

factorial.o: factorial.c
	$(COMPILE) $(CFLAGS) factorial.c

hello.o: hello.c
	$(COMPILE) $(CFLAGS) hello.c

clean: 
	rm -rf *.o hello
