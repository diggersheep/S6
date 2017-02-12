build:
	make -C Géo_3D
	make -C Droit
	make -C IA

G3D:
	make -C Géo_3D
Droit:
	make -C Droit

IA:
	make -C IA

clean:
	make --no-print-directory -C Géo_3D clean
