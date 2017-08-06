AM_CFLAGS := -g -Wall -O2

CC        := gcc
CFLAGS    := $(AM_CFLAGS)

LD        := gcc

APPS      := float_pnt
OBJS      := $(APPS).o
SRCS      := $(APPS).c

float_pnt: float_pnt.o
	$(LD) $(AM_CFLAGS) -o $@ $^ $(LDFLAGS)

%.o: %.c
	$(CC) $(CFLAGS) -c $<

clean:
	rm -fr $(APPS) *.o *.out
