CC = clang
CFLAGS = -Wall -Wextra -pedantic -std=c11 -fsanitize=undefined -fsanitize=address
TARGET = largestInt

all: $(TARGET)

$(TARGET): $(TARGET).c
	$(CC) $(CFLAGS) -o $(TARGET) $(TARGET).c
