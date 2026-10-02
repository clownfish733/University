CC = clang
CFLAGS = -Wall -Wextra -pedantic -std=c11
TARGET = test

all: $(TARGET)

$(TARGET): $(TARGET).c
	$(CC) $(CFLAGS) -o $(TARGET) $(TARGET).c

run: $(TARGET)
	./$(TARGET)
