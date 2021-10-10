# 論文內文文件名稱, 不包含封面頁(不需加入副檔名)
DOCNAME=main
# 論文封面頁文件名稱, 不包含內文(不需加入副檔名)
TITLEPAGE=titlepage
# 輸出檔案存放位置
OUTDIR=build

# LaTeX Compile
LATEXCOMPILE=xelatex
LATEXARGS=-synctex=1 -interaction=nonstopmode -file-line-error

# bib Compile
BIBCOMPILE=biber
BIBARGS=

TARGET=${OUTDIR}/${DOCNAME}.pdf
.PHONY: all clean distclean

all: ${TARGET}

${TARGET}: ${TITLEPAGE}.pdf
	make latex
	make bib
	make latex
	make latex
	cp ${OUTDIR}/cache/${DOCNAME}.pdf ${OUTDIR}

${TITLEPAGE}.pdf:
	mkdir -p ${OUTDIR}/cache
	${LATEXCOMPILE} ${LATEXARGS} --output-directory=${OUTDIR}/cache ${TITLEPAGE}.tex
	cp ${OUTDIR}/cache/${TITLEPAGE}.pdf ${OUTDIR}

latex:
	${LATEXCOMPILE} ${LATEXARGS} --output-directory=${OUTDIR}/cache ${DOCNAME}.tex

bib:
	${BIBCOMPILE} ${BIBARGS} --output-directory=${OUTDIR}/cache ${DOCNAME}

distclean:
	@-rm -rf ${OUTDIR}

clean:
	@-rm -rf ${OUTDIR}/cache
