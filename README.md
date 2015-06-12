# semproc

## Summary

semproc is a LaTeX class for seminar proceedings based on KOMA-Scripts
scrreprt. It provides the following macros and environments:

* `\talk[speaker={Speaker},notes={Typist}]{Title}` is meant as a drop-in
  replacement for `\chapter{Title}` but additionally typesets the speaker and
  the typist. Moreover, `\talk` keeps track of biblatex's refsections, so that
  every talk can have a local bibliography.
* `\nonumchapter{title}` is a wrapper around `\chapter*{title}` that makes sure
  that the unnumbered chapter occurs in the table of contents and the bookmarks
  of the PDF document.
* `\globaltoc` typesets a global table of contents consisting only of the talks
  and the respective speakers.
* `\localtoc` typesets a local table of contents consisting of the sections and
  subsections of the current talk.
* `\begin{summary} ... \end{summary}` is meant as a drop-in replacement for the
  `abstract` environment.
* `localbib` prints a bibliography of the current talk. In fact, `\localbib`
  prints a bibliography of the current refsection of biblatex, but the class
  keeps track of refsections automatically.

## Installation

Run `./makedist.sh` in the directory containing the file `semproc.dtx` and unzip
the archive `semproc.zip` in your local `$TEXMF`-tree.
