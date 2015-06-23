#!/bin/bash
mkdir -p texmf/tex/latex/semproc
mkdir -p texmf/doc/latex/semproc
mkdir -p texmf/source/latex/semproc

mkdir -p semproc

pdflatex semproc.dtx
makeindex -s gglo.ist -o semproc.gls semproc.glo
makeindex -s gind.ist -o semproc.ind semproc.idx
pdflatex semproc.dtx
pdflatex semproc.dtx

pdflatex example.tex
biber example
pdflatex example.tex

cp semproc.pdf texmf/doc/latex/semproc
cp semproc.cls texmf/tex/latex/semproc
cp semproc.dtx texmf/source/latex/semproc

cp example.tex texmf/doc/latex/semproc
cp example.bib texmf/doc/latex/semproc
cp example.pdf texmf/doc/latex/semproc
cp README.txt  texmf/doc/latex/semproc

(
  cd texmf
  pwd
  zip ../semproc.tds.zip tex/latex/semproc/* doc/latex/semproc/* source/latex/semproc/*
)

# TDS archive unnecessary for small packages.
# cp semproc.tds.zip semproc
cp semproc.dtx semproc
cp semproc.pdf semproc
cp README.txt semproc/README

zip semproc.zip semproc/*
