
DOC=${DOCNAME}.tex
DOCFILE=${DOCNAME}
TITLEPAGEDOC=${TITLEPAGE}.tex

LATEXARGS=-synctex=1 -interaction=nonstopmode -file-line-error
BIBARGS=

LATEX_OUTDIR=${OUTDIR}/${DOCNAME}
TITLE_OUTDIR=${OUTDIR}/${TITLEPAGE}

buildtitle:
	@mkdir -p ${TITLE_OUTDIR}
	${LATEXCOMPILE} ${LATEXARGS} --output-directory=${TITLE_OUTDIR} ${TITLEPAGEDOC}

buildlatex:
	@mkdir -p ${LATEX_OUTDIR}
	${LATEXCOMPILE} ${LATEXARGS} --output-directory=${LATEX_OUTDIR} ${DOC}

buildbib:
	@mkdir -p ${LATEX_OUTDIR}
	${BIBCOMPILE} ${BIBARGS} --output-directory=${LATEX_OUTDIR} ${DOCFILE}

buildlbll:
	@mkdir -p ${OUTDIR}
	@make buildlatex
	@make buildbib
	@make buildlatex
	@make buildlatex
