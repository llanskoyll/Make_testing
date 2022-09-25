# Compile which you use
COMPILE=gcc
#Flags 
CFLAGS=-c -Wall
#Target
TARGET=hello
#Source file's
SRC=$(wildcard *.c)
#List object's
OBJ=$(patsubst %.c, %.o, $(SRC))

all: $(TARGET)

$(TARGET): $(OBJ)
	$(COMPILE) $(OBJ) -o $(TARGET)

%.o: %.c
# $< - argument to right
# $@ < argument to left
	$(COMPILE) $(CFLAGS) $< -o $@

clean: 
	rm -rf *.o hello
