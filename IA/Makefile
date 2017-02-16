SRC=src
OUT=.

flag=--latex-engine=xelatex

build: $(OUT)/IA_chapitre_1.pdf $(OUT)/IA_chapitre_2.pdf

$(OUT)/IA_chapitre_1.pdf: $(SRC)/IA_chapitre_1.md
	pandoc -f markdown $(SRC)/IA_chapitre_1.md -o $(OUT)/IA_chapitre_1.pdf

$(OUT)/IA_chapitre_2.pdf: $(SRC)/IA_chapitre_2.md
	pandoc -f markdown $(SRC)/IA_chapitre_2.md -o $(OUT)/IA_chapitre_2.pdf

clean:
	rm ./*.pdf
