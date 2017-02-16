SRC=src
OUT=.

#--latex-engine=xelatex
flag=--toc

build: $(OUT)/Droit_chapitre_1.pdf

$(OUT)/Droit_chapitre_1.pdf: $(SRC)/Droit_chapitre_1.md
	pandoc -f markdown $(SRC)/Droit_chapitre_1.md -o $(OUT)/Droit_chapitre_1.pdf $(flag)

clean:
	rm ./*.pdf
