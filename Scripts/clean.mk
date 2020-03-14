
SHELL:=/bin/bash

distclean:
ifeq ($(shell [ -e $(OUTDIR) ] && echo "1" || echo "0"), 1)
	@$(shell rm -rf ${OUTDIR})
	@echo -n ""
else
	@echo -n ""
endif

clean:
ifeq ($(shell [ -e $(OUTDIR) -o -d $(OUTDIR) ] && echo "1" || echo "0"), 1)
	@$(shell mkdir -p /tmp/nkustthesislatex.tmp)
	@$(shell cp $(OUTDIR)/*.pdf /tmp/nkustthesislatex.tmp/.)
	@$(shell rm -rf ${OUTDIR})
	@$(shell mkdir $(OUTDIR))
	@$(shell mv /tmp/nkustthesislatex.tmp/*.pdf $(OUTDIR)/.)
	@$(shell rm -rf /tmp/nkustthesislatex.tmp)
	@echo -n ""
else
	@echo -n ""
endif
