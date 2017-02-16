FALGS=--no-print-directory

#BUILD
build:
	make -C Géo_3D $(FALGS)
	make -C Droit $(FALGS)
	make -C IA $(FALGS)


#RULES
G3D:
	make -C Géo_3D $(FALGS)

Droit:
	make -C Droit $(FALGS)

IA:
	make -C IA $(FALGS)

#CLEAN
clean:
	make -C Géo_3D clean $(FALGS)
	make -C Droit clean $(FALGS)
	make -C  clean $(FALGS)
