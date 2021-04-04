
DOC=${DOCNAME}.tex
DOCFILE=${DOCNAME}
TITLEPAGEDOC=${TITLEPAGE}.tex

LATEXARGS=-synctex=1 -interaction=nonstopmode -file-line-error
BIBARGS=

LATEX_OUTDIR=${OUTDIR}/${DOCNAME}
TITLE_OUTDIR=${OUTDIR}/${TITLEPAGE}
THESIS_OUTDIR=${OUTDIR}/${THESIS}

THESISDOC=${THESIS_OUTDIR}/${THESIS}.tex

buildthesis:
	@mkdir -p ${THESIS_OUTDIR}
	@${PY} Scripts/build.py ${TOP}/${THESIS_OUTDIR} ${THESIS}.tex ${TOP}/${TITLE_OUTDIR}/${TITLEPAGE}.pdf ${TOP}/${LATEX_OUTDIR}/${DOCNAME}.pdf
	${LATEXCOMPILE} ${LATEXARGS} --output-directory=${THESIS_OUTDIR} ${THESISDOC}

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
