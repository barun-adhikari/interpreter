CC = gcc
CFLAGS = -Wall -g
SOURCES = src/main.c src/lexer.c src/parser.c src/evaluator.c src/utils.c
OBJECTS = $(SOURCES:.c=.o)
EXEC = interpreter

all: $(EXEC)

$(EXEC): $(OBJECTS)
    $(CC) $(OBJECTS) -o $(EXEC)

.c.o:
    $(CC) $(CFLAGS) -c $< -o $@

clean:
    rm -f $(OBJECTS) $(EXEC)
