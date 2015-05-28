#!/bin/bash

DIR=`pwd`
export TEXINPUTS=$DIR/songs:$TEXINPUTS

#TODO(martin): only perform multiple compilation steps when necessary
cd books
pdflatex songbook.tex
songidx songbookidx.sxd songbookidx.sbx
pdflatex songbook.tex

cd $DIR