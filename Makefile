PDFBOOK:=book_output/compskills.pdf

RMDFILES:=index.Rmd $(shell find chapters -type f -name '*.Rmd')
RMDFILES+=$(shell find appendix -type f -name '*.Rmd')
BIBFILES:=chapters/compskills.bib

# Cheat sheet: https://www.gnu.org/software/make/manual/html_node/Automatic-Variables.html

all: ${PDFBOOK}

clean:
	rm -rf ${PDFBOOK} compskills.Rmd book_output/* *.svg *.png *.o

${PDFBOOK}: ${PYTHONFIGS} ${RMDFILES} ${BIBFILES} ${PYLISTINGS}
	RETICULATE_PYTHON=`which python3` PYTHONPATH=.. r -e 'bookdown::render_book("index.Rmd","bookdown::pdf_book",clean=T)'

# NOTE: the html output depends on the pdf being built
# because we have some hacky things involving msprime's DemographyDebugger,
# and I worry about overwriting files if the two render steps executed at the
# same time via a "make -j x" command.
# ${HTMLBOOK}: ${PDFBOOK} ${PYTHONFIGS} ${RMDFILES} ${BIBFILES} ${PYLISTINGS}
# 	RETICULATE_PYTHON=`which python3` PYTHONPATH=.. r -e 'bookdown::render_book("index.Rmd","bookdown::gitbook",clean=T)'

