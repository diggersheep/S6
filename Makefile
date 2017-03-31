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
