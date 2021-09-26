##!/bin/be!/bin/bash
#this is a comment-the first line sets bash as the shell script

#Execute as: bash $HOME/"githubs/micro_econ_pandoc/html_slides_handout_operations.sh"
# bash "/Users/yosemite/githubs/micro_econ_pandoc/html_slides_handout_operations.sh"

#REM: compile... move to VLE  ...

cd $HOME
cd "githubs/micro_econ_pandoc/"

###########################################################
# 1. SLIDES

# Move/merge pictures across files

# Create self-contained version of slides, knit (for posting on VLE)

# BEE2038 for all 's_*' files in folder  micro_econ_pandoc/be2024/be2024_slides_revealjs/:
    # create a copy titled 's_*_selfc.Rmd' # "self_contained: false" --> "self_contained: true" # remove plugins from latter file
    # knit this
    # (manually, put it on VLE)

cd be2024/be2024_slides_revealjs
rm selfc_*

for file in s_*.Rmd; do
  cp -a $file selfc_${file}
    sed -i '' 's/self_contained: false/self_contained: true/g' selfc_${file}
    sed -i '' '/reveal_plugins/d' selfc_${file}
done

cd ../..


# same for Beem101
cd beem101-bookdowning/reveal_slides_101
rm selfc_*

for file in s_*.Rmd; do
  cp -a $file selfc_${file}
    sed -i '' 's/self_contained: false/self_contained: true/g' selfc_${file}
    sed -i '' '/reveal_plugins/d' selfc_${file}
done

cd ../..

# OLD - saved for code -- Cut msc-only sections from slide material, delete lines 1 and 3
#sed '/101BB/,/101EE/d' slides_bothmodules.md > be2024slidesa.md
#sed -i -e '1d;3d' be2024slidesa.md
#sed -i -e '2d;2d' be2024slidesa.md

#cut pre-2018 stuff
#sed '/pre2018BB/,/pre2018EE/d' be2024slidesa.md > be2024slides.md
#sed '/pre2019BB/,/pre2019EE/d' be2024slides.md > be2024slides.md
#rm be2024slidesa.md

###########################################################
#2. HANDOUT/Web book

# Move/merge pictures across files



##TODO: conversion to Rmd and bookdown knitting commands here??

#Zip these up and put in a place to move into public folder in dropbox
#cp m_lecture*.pdf $HOME/Dropbox/teachingsharedplusboox/beem101handouts
#zip -r lectures_byweek_101.zip m_preamble.pdf m_lecture*.pdf
#cp lectures_byweek_101.zip $HOME/Dropbox/teachingsharedplusboox

####################
#Move ALL BEEM101 files to beem101 folder

##########
#Cleanup
    rm *.log
    rm *.aux
    rm *.out
    rm m_*.tex
    rm m_*.md
    rm m_lec*.pdf
    rm preamble*.tex



##########################################################
#3. PROBLEM SET/TUTORIAL material While we are at it, make sure the tutorial material is compiled:

#Execute as: bash $HOME/"OneDrive - University of Exeter/exeter_teaching/be2024/ compiletutorials.sh "

###########################################################
