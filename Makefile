FC=gfortran
FCFLAGS=-g

test1: test1.f90 stdtypes.o mtprng.o
	${FC} ${FCFLAGS} -o test1 test1.f90 stdtypes.f90 mtprng.f90

test2: test2.f90 stdtypes.o mtprng.o
	${FC} ${FCFLAGS} -o test2 test2.f90 stdtypes.f90 mtprng.f90

stdtypes.o: stdtypes.f90
	${FC} -c stdtypes.f90
mtprng.o: mtprng.f90 stdtypes.o
	${FC} -c mtprng.f90 stdtypes.o

all: test1 test2
	make test1
	make test2

run:
	./test1
	./test2

clean:
	rm test1 test2 *.mod *.o

