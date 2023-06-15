OBJS	= main.o
SOURCE	= main.c
HEADER	=
OUT	= 0
CC	 = clang
FLAGS	 = -g -c -Wall
LFLAGS	 =

all: $(OBJS)
	$(CC) -g $(OBJS) -o $(OUT) $(LFLAGS)   -nostartfiles -e _start -Wall -fomit-frame-pointer -mfpmath=387 -mfancy-math-387 -fmerge-all-constants -fsingle-precision-constant  -fno-math-errno -Wall -ffast-math  -fno-unroll-loops -Os -nodefaultlibs -lc
	sstrip $(OUT)
	./bettergz.sh $(OUT)



main.o: main.c
	$(CC) $(FLAGS) main.c

clean:
	rm -f $(OBJS) $(OUT)

run: $(OUT)
	./$(OUT)

