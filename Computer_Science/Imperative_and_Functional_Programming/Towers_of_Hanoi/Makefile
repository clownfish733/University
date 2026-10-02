CC = clang
CFLAGS = -Wall -Wextra -pedantic -std=c11

SRCS = $(wildcard *.c)
BINS = $(SRCS:.c=)

all: $(BINS)

# make <name> builds <name> from <name>.c
%: %.c
	$(CC) $(CFLAGS) -o $@ $<

clean:
	rm -f $(BINS)

.PHONY: all clean
