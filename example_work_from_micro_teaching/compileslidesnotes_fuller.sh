##!/bin/be!/bin/bash
#this is a comment-the first line sets bash as the shell script

#Execute as: bash $HOME/"githubs/micro_econ_pandoc/be2024/compileslidesnotes_fuller.sh"
# bash "/Users/yosemite/githubs/micro_econ_pandoc/be2024/compileslidesnotes_fuller.sh"

#REM: compile to 'teachingsharedplusboox', move to dropbox/public manually once checked OK (that is linked on VLE)

cd $HOME
cd "githubs/micro_econ_pandoc/be2024"

###########################################################
#1. SLIDES

#Cut msc-only sections from slide material, delete lines 1 and 3
sed '/101BB/,/101EE/d' slides_bothmodules.md > be2024slidesa.md
sed -i -e '1d;3d' be2024slidesa.md
sed -i -e '2d;2d' be2024slidesa.md

#cut pre-2018 stuff
sed '/pre2018BB/,/pre2018EE/d' be2024slidesa.md > be2024slides.md
sed '/pre2019BB/,/pre2019EE/d' be2024slides.md > be2024slides.md
rm be2024slidesa.md

#1a. compile BE2024 slides for presenting:
    pandoc $HOME/"OneDrive - University of Exeter/exeter_teaching/be2024/be2024slides.md" -t beamer --slide-level=2 -o $HOME/"OneDrive - University of Exeter/exeter_teaching/be2024/be2024slides.pdf" --verbose  --toc --toc-depth=2 --highlight-style=pygments -V theme:metropolis
#note I got rid of 'incremental' -- pauses must be entered manually


#1b: BEEM101 version
#Cut out 2024-only sections from slide material,  delete lines 1 and 3
sed '/2024BB/,/2024EE/d' slides_bothmodules.md > $HOME/"OneDrive - University of Exeter/exeter_teaching/be2024/beem101slides.md"
sed -i.bak -e '1d;3d' $HOME/"OneDrive - University of Exeter/exeter_teaching/be2024/beem101slides.md"

#1c. compile BEEM101 slides for presenting:
pandoc $HOME/"OneDrive - University of Exeter/exeter_teaching/be2024/beem101slides.md" -t beamer --slide-level=2 -o $HOME/"OneDrive - University of Exeter/exeter_teaching/be2024/beem101slides.pdf" --verbose  --toc --toc-depth=2 --highlight-style=pygments -V theme:metropolis


###########################################################
#2. HANDOUT VERSIONS
            # Todo: sed to make general_notes_text_nopdfnote.md into handouts version #Cleaning up handout # remove: '\textcolor{gray}','textCR', '\pdfnote' #sed 's/\\textCR/\\/g' $HOME/"OneDrive - University of Exeter/exeter_teaching/be2024/general_notes_text_handout.md"  >  $HOME/"OneDrive - University of Exeter/exeter_teaching/be2024/general_notes_text_handout.md"

cd $HOME
cd "githubs/micro_econ_pandoc/be2024"

#2a.Cut msc-only sections from handout material, compile handout for 2024, cut lines 1 and 3
sed '/101BB/,/101EE/d' handout_bothmodules.md > be2024handouta.md
sed -i.bak -e '1d;3d' be2024handouta.md

#cut pre-2018 and pre-2019 stuff
sed '/pre2018BB/,/pre2018EE/d' be2024handouta.md > be2024handoutb.md
sed '/pre2019BB/,/pre2019EE/d' be2024handoutb.md > be2024handout.md

rm be2024handouta.md
rm be2024handoutb.md

cp be2024handout.md be2038handout_19.md
cp be2024handout.md be2038handout_19.Rmd

pandoc be2038handout_19.md -f markdown -t latex -s -o bee2038handout19.tex --toc --toc-depth=1

#need two latex compiles for table of contents to work:
pdflatex bee2038handout19.tex --batchmode --toc --toc-depth=1 --interaction=nonstopmode
pdflatex bee2038handout19.tex --batchmode --toc --toc-depth=1 --interaction=nonstopmode

    #In dropbox, to preserve link, must copy the pdf *over* the linked dropbox file (do not delete it)

##TODO: conversion to Rmd and bookdown knitting commands here??

#2b. handout version for BEEM101
#Cut out 2024-only sections from slide material
    sed '/2024BB/,/2024EE/d' handout_bothmodules.md > "../beem101/beem101handout19.md"
    sed -i.bak -e '1d;3d' "../beem101/beem101handout19.md"

#Remove 'advanced' tags
    sed -i '' -e's/Adv://g'  "../beem101/beem101handout19.md"
    sed -i '' -e's/adv://g'  "../beem101/beem101handout19.md"
    sed -i '' -e's/Adv, math://g' "../beem101/beem101handout19.md"

#Compiling beem101 handout big file
    pandoc "../beem101/beem101handout19.md" -f markdown -t latex -s -o "..beem101/beem101handout19.tex" --toc --toc-depth=1
    pdflatex "../beem101/beem101handout.tex" --batchmode --toc --toc-depth=1
    pdflatex "../beem101/beem101handout.tex" --batchmode --toc --toc-depth=1

###########################################################
#2c. Handouts divided by section

    #each section starts with a new line, '#lecture' then the title of the lecture -- save this as the file name
    #sed -n '/\#Lecture1/,/#Lecture2/w lecture1.md' $HOME/"OneDrive - University of Exeter/exeter_teaching/be2024/general_notes_text_handout.md"
    #pandoc $HOME/"OneDrive - University of Exeter/exeter_teaching/be2024/lecture1.md" -f markdown -t latex -s -o $HOME/"OneDrive - University of Exeter/exeter_teaching/be2024/lecture1.tex"
    #pdflatex -output-directory=$HOME/Dropbox $HOME/"OneDrive - University of Exeter/exeter_teaching/be2024/lecture1.tex" --batchmode

#cut from beginning to lecture1 into new markdown file, compile
sed -n "/\% Handouts for/,/\# Lecture1\:/w preamble.md" $HOME/"OneDrive - University of Exeter/exeter_teaching/be2024/be2024handout.md"
sed -i '' '$d' preamble.md

#compile
pandoc preamble.md -f markdown -t latex -s -o $HOME/"OneDrive - University of Exeter/exeter_teaching/be2024/preamble.tex"
pdflatex  $HOME/"OneDrive - University of Exeter/exeter_teaching/be2024/preamble.tex" --batchmode

############
#For BE2024
    END=13
    for ((i=1;i<=END;i++)); do
        j=$((i + 1))
        echo "$i"
        echo "$j"
        #cut from lecturei to lecturei+1 into new markdown file
        sed -n "/\# Lecture$i\:/,/# Lecture$j\:/w lecture$i.md" $HOME/"OneDrive - University of Exeter/exeter_teaching/be2024/be2024handout.md"

        #remove final lines of markdown file
        sed -i '' '$d' lecture$i.md
        sed -i '' '$d' lecture$i.md


        #compile
        pandoc lecture$i.md -f markdown -t latex -s -o $HOME/"OneDrive - University of Exeter/exeter_teaching/be2024/lecture_ho$i.tex"
        #add 'graphicx' package
        gsed -i "2i \\\\\usepackage{graphicx,grffile}" $HOME/"OneDrive - University of Exeter/exeter_teaching/be2024/lecture_ho$i.tex"
        pdflatex  $HOME/"OneDrive - University of Exeter/exeter_teaching/be2024/lecture_ho$i.tex" --batchmode
    done

#Zip these up and copy to public folder in dropbox, remove original files

cp lecture_ho*.pdf $HOME/Dropbox/teachingsharedplusboox/be2024handouts
zip -r lectures_byweek_2024.zip preamble.pdf lecture_ho*.pdf
cp lectures_byweek_2024.zip $HOME/Dropbox/teachingsharedplusboox

rm lecture_ho*

############
#For BEEM101

cd "/Users/yosemite/OneDrive - University of Exeter/exeter_teaching/be2024"
    END=13
        for ((i=1;i<=END;i++)); do
            j=$((i + 1))
            echo "$i"
            echo "$j"
        sed -n "/\#Lecture$i\:/,/#Lecture$j\:/w m_lecture$i.md" $HOME/"OneDrive - University of Exeter/exeter_teaching/be2024/beem101handout.md"
        sed -i "$d" m_lecture$i.md
        pandoc m_lecture$i.md -f markdown -t latex -s -o $HOME/"OneDrive - University of Exeter/exeter_teaching/be2024/m_lecture$i.tex"
        pdflatex  $HOME/"OneDrive - University of Exeter/exeter_teaching/be2024/m_lecture$i.tex" --batchmode
    done

#cut from beginning to lecture1 into new markdown file
sed -n "/\% Handouts for/,/\#Lecture1\:/w m_preamble.md" $HOME/"OneDrive - University of Exeter/exeter_teaching/be2024/beem101handout.md"
#sed -i "$d" m_preamble.md

#compile
pandoc m_preamble.md -f markdown -t latex -s -o $HOME/"OneDrive - University of Exeter/exeter_teaching/be2024/m_preamble.tex"
pdflatex  $HOME/"OneDrive - University of Exeter/exeter_teaching/be2024/m_preamble.tex" --batchmode

#Zip these up and put in a place to move into public folder in dropbox
cp m_lecture*.pdf $HOME/Dropbox/teachingsharedplusboox/beem101handouts
zip -r lectures_byweek_101.zip m_preamble.pdf m_lecture*.pdf
cp lectures_byweek_101.zip $HOME/Dropbox/teachingsharedplusboox

####################
#Move ALL BEEM101 files to beem101 folder
mv *101* ../beem101
mv m_* ../beem101

##########
#Cleanup
    rm *.log
    rm *.aux
    rm *.out
    rm m_*.tex
    rm m_*.md
    rm m_lec*.pdf
    rm preamble*.tex

cd "/Users/yosemite/OneDrive - University of Exeter/exeter_teaching/be2024"
    rm *.log
    rm *.aux
    rm *.out
    rm lec*.md
    rm lec*.pdf
    rm lec*.tex
    rm $HOME/Dropbox/Public/*.aux
    rm $HOME/Dropbox/Public/*.log

exit;


##########################################################
#3. While we are at it, make sure the tutorial material is compiled:

#Execute as: bash $HOME/"OneDrive - University of Exeter/exeter_teaching/be2024/ compiletutorials.sh "

###########################################################

##Extra cut stuff

cd "/Users/yosemite/OneDrive - University of Exeter/exeter_teaching/be2024"

   #2. Version without 'pdfnotes' (readable on Windows pcs):
    sed 's/pdfnote/note/g' $HOME/"OneDrive - University of Exeter/exeter_teaching/be2024/be2024slides.md"  >  $HOME/"OneDrive - University of Exeter/exeter_teaching/be2024/be2024slides_nonotes.md"

#pandoc $HOME/"OneDrive - University of Exeter/exeter_teaching/be2024/general_notes_text_nopdfnote.md" -t beamer --slide-level=2 -o $HOME/"OneDrive - University of Exeter/exeter_teaching/be2024/general_notes_text_nopdfnote.pdf" --verbose --incremental --toc --highlight-style=pygment --toc-depth=2

        #3. Previous slides (cut material from current spot to end)
            # Remove everything after tag COVEREDTOHERE and save as general_notes_text_covered.md

sed  '/^COVEREDTOHERE$/,$d' $HOME/"OneDrive - University of Exeter/exeter_teaching/be2024/be2024slides_nonotes.md"  >  $HOME/"OneDrive - University of Exeter/exeter_teaching/be2024/be2024slides_nopdfnote_tohere.md"

            #Compile general_notes_text_covered.md to pdf in dropbox/public
            #
pandoc $HOME/"OneDrive - University of Exeter/exeter_teaching/be2024/be2024slides_nopdfnote_tohere.md" -t beamer --slide-level=2 -o $HOME/"Dropbox/Public/be2024slides_nopdfnote_tohere.pdf"  --verbose  --toc --toc-depth=2 --highlight-style=pygments -V theme:metropolis

#Todo: slide files up to present in separated files by week

# see also dr_text_md_tools/md_tex_to_rmd_html.vim