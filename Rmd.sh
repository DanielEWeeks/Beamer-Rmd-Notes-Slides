#!/bin/bash
# Purpose: To render an R Markdown document to a PDF file
# with a name that identifies the analysis time and which is
# time-stamped.
if [[ $# -ne 2 ]]; then
  echo "This script expects two arguments."
  echo "  The first gives the name of the R Markdown file."
  echo "  The second gives the name of the type of analysis."
  echo "Usage: $0 file.Rmd analysis_name"
else
filename=$(basename "$1")
filename="${filename%.*}"
# Rscript -e "rmarkdown::render('$1')"
Rscript -e "rmarkdown::render('$1', output_file = paste('$filename','_','$2','_',gsub(':','',gsub(' ','_',Sys.time())),'.pdf', sep=''))"
fi
