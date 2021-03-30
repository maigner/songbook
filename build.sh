#!/bin/bash

DIR=`pwd`
export TEXINPUTS="$DIR/songs":"$DIR/latex-songs":$TEXINPUTS

#TODO(martin): only perform multiple compilation steps when necessary
cd books
#pdflatex songbook.tex
#../latex-songs/songidx/songidx songbookidx.sxd songbookidx.sbx
#pdflatex songbook.tex


pdflatex Austropop.tex
../latex-songs/songidx/songidx Austropopidx.sxd Austropopidx.sbx
../latex-songs/songidx/songidx authidx.sxd authidx.sbx
pdflatex Austropop.tex


rm -rf *.aux

##Add more Books (sub sets of songs)
#pdflatex chiemseecovers.tex
#../latex-songs/songidx/songidx chiemseecoversidx.sxd chiemseecoversidx.sbx
#pdflatex chiemseecovers.tex

cd ..
