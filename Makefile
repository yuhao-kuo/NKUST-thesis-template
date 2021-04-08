

# 論文內文文件名稱, 不包含封面頁(不需加入副檔名)
DOCNAME=main
# 輸出檔案存放位置(預設為build)
OUTDIR=build
# 論文封面頁文件名稱, 不包含內文(不需加入副檔名)
TITLEPAGE=titlepage
# 完整論文文件名稱, 此文件包含論文內文及論文封面頁, 此文件由腳本產生
THESIS=thesis

# LaTeX Compile
LATEXCOMPILE=xelatex
# bib Compile
BIBCOMPILE=biber

# shell
SHELL:=/bin/bash
PY:=/usr/bin/python3

# directory
TOP := $(shell pwd -L)

# include make script
include Scripts/build.mk
include Scripts/clean.mk

thesis:
	@make buildthesis

title:
	@make buildtitle

content:
	@make buildlbll

all:
	@make content
	@make buildtitle
	@make buildthesis
	@make clean

