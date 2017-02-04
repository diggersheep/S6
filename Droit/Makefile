SRC=src
OUT=.

flag=--latex-engine=xelatex

build: $(OUT)/Droit_chapitre_1.pdf

$(OUT)/Droit_chapitre_1.pdf: $(SRC)/Droit_chapitre_1.md
	pandoc -f markdown $(SRC)/Droit_chapitre_1.md -o $(OUT)/Droit_chapitre_1.pdf

clean:
	rm ./*.pdf
