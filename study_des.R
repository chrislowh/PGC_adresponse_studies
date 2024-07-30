#!/usr/bin/env Rscript

##########################################################
# Author: Chris Lo
# Date created: 04112023
# This script includes R codes to knit the Rmd file
##########################################################

.libPaths(new = "/gpfs/home4/chrislo/rpackages")
library(rmarkdown)


rmarkdown::render('/home/chrislo/projects/PGC_adresponse_studies/scripts/study_des.Rmd', 
			output_file = '/home/chrislo/projects/PGC_adresponse_studies/scripts/study_des.html')