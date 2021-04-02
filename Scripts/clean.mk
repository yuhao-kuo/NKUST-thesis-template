
SHELL:=/bin/bash

distclean:
ifeq ($(shell [ -e $(OUTDIR) ] && echo "1" || echo "0"), 1)
	@$(shell rm -rf ${OUTDIR})
endif
	@echo -n ""

clean:
ifeq ($(shell [ -e $(LATEX_OUTDIR)/ -o -d $(LATEX_OUTDIR) ] && echo "1" || echo "0"), 1)
	@$(shell rm -rf `ls ${LATEX_OUTDIR} | grep -v .pdf | awk '{print "${LATEX_OUTDIR}/"$$1}'`)
endif
ifeq ($(shell [ -e $(TITLE_OUTDIR)/ -o -d $(TITLE_OUTDIR) ] && echo "1" || echo "0"), 1)
	@$(shell rm -rf `ls ${TITLE_OUTDIR} | grep -v .pdf | awk '{print "${TITLE_OUTDIR}/"$$1}'`)
endif
	@echo -n ""