HC = ghc
#OPT = -O3 -keep-s-files -dynamic -fno-warn-tabs
OPT = -O3 -dynamic -Wall

all: main

main: main.hs
	$(HC) $(OPT) $< -o $@

clean: 
	rm -f *.o *.hi *.s main
