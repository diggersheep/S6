SRC=src
OUT=.

flag=--latex-engine=xelatex

#
build: $(OUT)/G3D_2017-01-26.pdf
	
$(OUT)/G3D_2017-01-26.pdf: $(SRC)/G3D_2017-01-26.md
	pandoc -f markdown $(SRC)/G3D_2017-01-26.md -o $(OUT)/G3D_2017-01-26.pdf

clean:
	rm ./*.pdf
