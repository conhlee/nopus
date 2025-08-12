CC = gcc
CFLAGS = -O3
LDFLAGS = -lopus -lm

SRC = main.c common.c files.c list.c
OBJ = $(SRC:.c=.o)
TARGET = nopus

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ) $(TARGET)
