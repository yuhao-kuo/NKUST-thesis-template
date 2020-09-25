
DOC=${DOCNAME}.tex
DOCFILE=${DOCNAME}
TITLEPAGEDOC=${TITLEPAGE}.tex

LATEXARGS=-synctex=1 -interaction=nonstopmode -file-line-error --output-directory=${OUTDIR}
BIBARGS=--output-directory=${OUTDIR}

buildtitle:
	${LATEXCOMPILE} ${LATEXARGS} ${TITLEPAGEDOC}

buildlatex:
	${LATEXCOMPILE} ${LATEXARGS} ${DOC}

buildbib:
	${BIBCOMPILE} ${BIBARGS} ${DOCFILE}

buildlbll:
	@mkdir -p ${OUTDIR}
	@make buildlatex
	@make buildbib
	@make buildlatex
	@make buildlatex
