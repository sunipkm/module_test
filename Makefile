CC=gcc
RM=rm -vf

EDCFLAGS:= -O2 -Wall -I./ $(CFLAGS)
EDLDFLAGS:= $(LDFLAGS)

COBJS=main.o \
	module.o

all: $(COBJS)
	$(CC) $(EDCFLAGS) -o test.out $(COBJS) $(EDLDFLAGS)

%.o: %.c
	$(CC) $(EDCFLAGS) -o $@ -c $<

.PHONY: clean

clean:
	$(RM) test.out
	$(RM) $(COBJS)
