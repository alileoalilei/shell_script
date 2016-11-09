#!/bin/bash
if [ $1 -eq 1 ]; then
gs -sDEVICE=pdfwrite -dNOPAUSE -dBATCH -dSAFER -dFirstPage=$4 -dLastPage=$5 -sOutputFile=$2 $3
else
gs -sDEVICE=pdfwrite -dNOPAUSE -dBATCH -q -dPDFSETTINGS=/prepress -sOutputFile=$2 $3
fi
