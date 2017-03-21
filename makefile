OBJS = scratch.o scratch_main.o
CC = g++
DEBUG = -g
CFLAGS = -Wall --std=c++14 -c $(DEBUG)
LFLAGS = -Wall -o scratch

scratch: $(OBJS)
	$(CC) $(OBJS) $(LFLAGS)

scratch.o: scratch.cpp scratch.h
	$(CC) $(CFLAGS) scratch.cpp

scratch_main.o: scratch_main.cpp scratch.h
	$(CC) $(CFLAGS) scratch_main.cpp

clean:
	\rm *.o scratch
