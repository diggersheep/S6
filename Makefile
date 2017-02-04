build: G3D Droit

G3D:
	make -C Géo_3D

Droit:
	make -C Droit

clean:
	make --no-print-directory -C Géo_3D clean
