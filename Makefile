

# 輸出檔案名稱(不需加入副檔名)
DOCNAME=main
# 輸出檔案存放位置(預設為build)
OUTDIR=build
# 封面頁
TITLEPAGE=titlepage

# LaTeX Compile
LATEXCOMPILE=xelatex
# bib Compile
BIBCOMPILE=biber

# shell
SHELL:=/bin/bash

# include make script
include Scripts/clean.mk
include Scripts/build.mk

title:
	@make buildtitle

all:
	@make buildlbll

