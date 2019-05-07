FC=gfortran
main: main.f90 stdtypes.o mtprng.o
	${FC} -o main main.f90 stdtypes.f90 mtprng.f90
stdtypes.o: stdtypes.f90
	${FC} -c stdtypes.f90
mtprng.o: mtprng.f90 stdtypes.o
	${FC} -c mtprng.f90 stdtypes.o
clean:
	rm main *.mod *.o
