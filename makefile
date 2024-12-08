# Variables
CC = gcc
CFLAGS = -Wall -Wextra -g
LDFLAGS = 
TARGET = clox
SRCS = $(wildcard *.c)
OBJS = $(SRCS:.c=.o)

# Default rule
all: $(TARGET)

# Link objects into the executable
$(TARGET): $(OBJ)
	$(CC) $(LDFLAGS) -o $@ $^

# Compile .c files into .o files
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Clean up generated files
clean:
	rm -f $(OBJ) $(TARGET)

# Rebuild from scratch
rebuild: clean all

.PHONY: all clean rebuild
