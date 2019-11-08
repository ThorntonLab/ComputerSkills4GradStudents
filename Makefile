PDFBOOK:=book_output/compskills.pdf

RMDFILES:=index.Rmd $(shell find chapters -type f -name '*.Rmd')
RMDFILES+=$(shell find appendix -type f -name '*.Rmd')
BIBFILES:=chapters/compskills.bib
TEXFIGS:=

%_tikz.pdf: %_tikz.tex
	pdflatex -output-directory figs $? 

# Cheat sheet: https://www.gnu.org/software/make/manual/html_node/Automatic-Variables.html

all: ${PDFBOOK}

clean:
	rm -rf ${PDFBOOK} compskills.Rmd book_output/* *.svg *.png *.o figs/*_tikz.png figs/*_tikz.pdf figs/*_tikz.aux figs/*_tikz.log

${PDFBOOK}: ${PYTHONFIGS} ${RMDFILES} ${BIBFILES} ${TEXFIGS} _bookdown.yml
	RETICULATE_PYTHON=`which python3` PYTHONPATH=.. r -e 'bookdown::render_book("index.Rmd","bookdown::pdf_book",clean=T)'

