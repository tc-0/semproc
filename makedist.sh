#!/bin/bash
mkdir -p doc/
mkdir -p texmf/tex/latex/semproc
mkdir -p texmf/doc/latex/semproc

pdflatex semproc.dtx

cp semproc.pdf texmf/doc/latex/semproc
cp doc/example.tex texmf/doc/latex/semproc
cp doc/example.bib texmf/doc/latex/semproc
cp semproc.cls texmf/tex/latex/semproc
cp semproc.dtx texmf/tex/latex/semproc
(
  cd texmf
  pwd
  zip ../semproc.zip tex/latex/semproc/* doc/latex/semproc/*
)
