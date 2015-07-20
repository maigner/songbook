#!/bin/bash

DIR=`pwd`
export TEXINPUTS=$DIR/songs:$DIR/latex-songs:$TEXINPUTS

#TODO(martin): only perform multiple compilation steps when necessary
cd books
pdflatex songbook.tex
../latex-songs/songidx/songidx songbookidx.sxd songbookidx.sbx
pdflatex songbook.tex

cd $DIR
