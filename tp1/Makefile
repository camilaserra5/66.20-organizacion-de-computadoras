CC = gcc
CFLAGS = -o0 -g -Wall -Werror -pedantic -std=c99

EXEC = common

# TP sin mips
tp: SOURCES = *.c
tp: $(EXEC)

# Código mips
tp.mips: CFLAGS += -DMIPS
tp.mips: SOURCES = mcd.S mcm.S *.c
tp.mips: $(EXEC)

# TP con mips
all: CFLAGS += -DMIPS
all: SOURCES = *.c
all: SOURCES += mcd.S mcm.S
all: $(EXEC)

command.o: command.c command.h
	$(CC) $(CFLAGS) -c command.c -o command.o
	
file.o: file.c file.h
	$(CC) $(CFLAGS) -c file.c -o file.o		

$(EXEC): $(SOURCES)
	$(CC) $(CFLAGS) $(SOURCES) -o $(EXEC) -lm
	
	
run: $(EXEC)
	./$(EXEC)
	
	
clean:
	rm -f *.o
	rm -f $(EXEC)
