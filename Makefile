all: posa2.pdf

posa2.pdf: posa2.tex
	latexmk -pdf -pdflatex="pdflatex --shell-escape" -use-make posa2.tex
	latexmk -c

clean:
	latexmk -CA
	find __src/svg -name "*.pdf" -delete
	find __src/svg -name "*.pdf_tex" -delete

