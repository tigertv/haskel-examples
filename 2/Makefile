HS = ghc
OPT = -keep-s-files -dynamic -fno-warn-tabs

all: main

main: main.hs
	$(HS) $(OPT) $< -o $@

clean: 
	rm -f *.o *.hi *.s main
