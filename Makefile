PDFBOOK:=book_output/compskills.pdf

RMDFILES:=index.Rmd $(shell find chapters -type f -name '*.Rmd')
RMDFILES+=$(shell find appendix -type f -name '*.Rmd')
BIBFILES:=chapters/compskills.bib

# Cheat sheet: https://www.gnu.org/software/make/manual/html_node/Automatic-Variables.html

all: ${PDFBOOK}

clean:
	rm -rf ${PDFBOOK} compskills.Rmd book_output/* *.svg *.png *.o

${PDFBOOK}: ${PYTHONFIGS} ${RMDFILES} ${BIBFILES} _bookdown.yml
	RETICULATE_PYTHON=`which python3` PYTHONPATH=.. r -e 'bookdown::render_book("index.Rmd","bookdown::pdf_book",clean=T)'

