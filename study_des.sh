#!/bin/bash
#SBATCH -N 1
#SBATCH -t 8:00:00
#SBATCH --partition=genoa
#SBATCH --mail-type=end
#SBATCH --mail-type=fail
#SBATCH --mail-user=chris.lowh@kcl.ac.uk
#SBATCH --job-name=pgc_study_des
#SBATCH --output=/gpfs/home4/chrislo/job_logs/pgc_study_des.log

###########################################################
# Date created: 04112023
# Author: Chris Lo
# This script contains bash script commands to knit the R markdown file
###########################################################

#Before knitting R, pandoc needs to be installed locally using EasyBuild available on Snellius
#module load 2022
#module spider eb
### 04112023: latest version for eb is eb/4.8.2
#module load eb/4.8.2
### search for pandoc
#eb -S pandoc
### 04112023: latest version is Pandoc-3.1.2.eb
### install locally
#eblocalinstall Pandoc-3.1.2.eb

##load environmental modules
module load 2022
module load R/4.2.1-foss-2022a
module load Pandoc/3.1.2

cd /

Rscript /home/chrislo/projects/PGC_adresponse_studies/scripts/study_des.R