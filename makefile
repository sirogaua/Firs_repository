.PHONY: greet build rebuild run clean 

greet:
	@echo "Terminating make - please specify target explicitly"
	@echo "    build   : fast rebuild / build"
	@echo "    rebuild : full rebuild"
	@echo "    run     : run after fast rebuild / build"
	@echo "    clean   : perform full clean"
	
build: 1
rebuild: clean 1
run: build
	./1
clean:
	rm -rvf *.o 1

1: 1.o func.o
	gcc -o 1 1.o func.o

1.o: 1.c func.h
	gcc -c -o 1.o 1.c

func.o: func.c func.h
	gcc -c -o func.o func.c


