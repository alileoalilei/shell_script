#!/bin/bash
if [ $1 -eq 1 ]; then
gs -sDEVICE=pdfwrite -dNOPAUSE -dBATCH -dSAFER -dFirstPage=$4 -dLastPage=$5 -sOutputFile=$2 $3
else
gs -sDEVICE=pdfwrite -dNOPAUSE -dBATCH -q -dPDFSETTINGS=/prepress -sOutputFile=$2 $3
fi
################################################################################################
#sh ~/script/csh/EXTRACTPDF.sh 1 ZBOOK01.pdf MatrixAlgebra.pdf 21 187
#sh ~/script/csh/EXTRACTPDF.sh 1 ZBOOK02.pdf Boyce_DiPrima.pdf 559 638
#sh ~/script/csh/EXTRACTPDF.sh 1 ZBOOK03.pdf Haidvogel.pdf 59 113
#sh ~/script/csh/EXTRACTPDF.sh 1 ZBOOK04.pdf KUNDU_Fluid_Mechanics.pdf 603 677
#sh ~/script/csh/EXTRACTPDF.sh 2 Merged_Books.pdf "ZBOOK01.pdf ZBOOK02.pdf ZBOOK03.pdf ZBOOK04.pdf"
#################################################################################################
