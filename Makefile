# LEGION MAKEFILE*

# Compiler
CC = gcc

# Compiler flags
CFLAGS = -Wall -Wextra -O2

# Source files
SRCS = $(wildcard src/*.c)

# Object files
OBJS = $(SRCS:src/%.c=obj/%.o)

# Executable name
EXEC = legion

# Default target
all: $(EXEC)

# Link object files 
$(EXEC): $(OBJS)
    $(CC) $(CFLAGS) -o $@ $^

# Compile source 
obj/%.o: src/%.c
    @mkdir -p obj
    $(CC) $(CFLAGS) -c $< -o $@

# Clean up 
clean:
    rm -f $(OBJS) $(EXEC)

.PHONY: all clean