FC=gfortran
FCFLAGS=-g

test1: test1.f90 mtprng.o
	${FC} ${FCFLAGS} -o test1 test1.f90 mtprng.o

test2: test2.f90 mtprng.o
	${FC} ${FCFLAGS} -o test2 test2.f90 mtprng.o

mtprng.o: mtprng.f90
	${FC} -c mtprng.f90

all: test1 test2
	make test1
	make test2

run:
	./test1
	./test2

clean:
	rm test1 test2 *.mod *.o

