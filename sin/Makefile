# Makefile for OpenGL Sinusoidal Wave Example

# Compiler and flags
CC = g++
CFLAGS = -std=c++11 -Wall -Wextra
GLFLAGS = -lGL -lGLU -lglut

# Sources and objects
SRCS = main.cpp
OBJS = $(SRCS:.cpp=.o)

# Target executable
TARGET = sinusoidal_wave

# Rules
all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^ $(GLFLAGS)

main.o: main.cpp
	$(CC) $(CFLAGS) -c main.cpp -o main.o

clean:
	rm -f $(OBJS) $(TARGET)

run: $(TARGET)
	./$(TARGET)
