
DOC=${DOCNAME}.tex
DOCFILE=${DOCNAME}

buildbiber:
	biber --output-directory=${OUTDIR} ${DOCFILE}

buildpdflatex:
	pdflatex -synctex=1 -interaction=nonstopmode -file-line-error --output-directory=${OUTDIR} ${DOC}

buildxelatex:
	xelatex  -synctex=1 -interaction=nonstopmode -file-line-error --output-directory=${OUTDIR} ${DOC}

buildpbpp:
	# @make distclean
	@mkdir -p ${OUTDIR}
	@make buildxelatex
	@make buildbiber
	@make buildxelatex
	@make buildxelatex
