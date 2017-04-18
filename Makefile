FALGS=--no-print-directory

#BUILD
build:
	make -C Droit $(FALGS)

#RULES
Droit:
	make -C Droit $(FALGS)

#CLEAN
clean:
	make -C Droit clean $(FALGS)


droit_oubli.pdf: droit_oubli.md
	pandoc -f markdown droit_oubli.md -o droit_oubli.pdf  
