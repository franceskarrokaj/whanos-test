# Compiler to use
CC = gcc

# Flags for the compiler
CFLAGS = -Wall -Wextra -pedantic -std=c99

# Target executable name
TARGET = hello

# Source files
SRC = main.c

# Rule to build the program
all: $(TARGET)

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) -o $(TARGET) $(SRC)

# Rule to clean up generated files
clean:
	rm -f $(TARGET)

# Rule to run the program
run: $(TARGET)
	./$(TARGET)
