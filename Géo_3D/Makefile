SRC=src
OUT=.

flag=--latex-engine=xelatex

#
build: $(OUT)/G3D_chapitre_1.pdf $(OUT)/G3D_chapitre_2.pdf

$(OUT)/G3D_chapitre_1.pdf: $(SRC)/G3D_chapitre_1.md
	pandoc -f markdown $(SRC)/G3D_chapitre_1.md -o $(OUT)/G3D_chapitre_1.pdf

$(OUT)/G3D_chapitre_2.pdf: $(SRC)/G3D_chapitre_2.md
	pandoc -f markdown $(SRC)/G3D_chapitre_2.md -o $(OUT)/G3D_chapitre_2.pdf

clean:
	rm ./*.pdf
