"%Transform md files for reveal.js htmlgeneration to rmd files for 'bookdown chapter' html generation

"can execute with source reveal_2_bookdown.vim; also added  rv2bk to my vimrc


"""""""""""""""""""""""""""""""""""""""""""""""""""
"FORMATTING AND COLOR

"Footnote format
%s/\\footnote{\(\_.\{-}\)}/\^\[\1\]/

%s/\\end{centering}/\<center\>/
%s/\\begin{centering}/\<center\>/

"""""""""""""""""""""""""""""""""""""""""""""""""""
"IMAGES
""""""""""""""""""""""""""""""""""""""""""""""""""
" Chapter markers/internal links

" TODO: let third level headers unnumbered by default
" Note I use bookdown headers differently than in revealjs

" need at least one single space after headers How to regexp?
%s/^##\([A-z]\)\@=/## /
%s/^###\([A-z]\)\@=/### /


"%s/include_graphics("\(pics\)\@!/include_graphics("picsfigs\//gc
"%s/include_graphics('\(pics\)\@!/include_graphics('picsfigs\//gc
"%s/include_graphics("picsfigs\/\(.*\)/include_graphics(file.path("picsfigs","\1)/gc
"%s/include_graphics('picsfigs\/\(.*\)/include_graphics(file.path('picsfigs','\1)/gc
":argdo %s/include_graphics('\(pics\)\@!/include_graphics('picsfigs\//ge | update


""""""""""""""""""""""""""""""""""""""'s
"Notes

"asides should become note sections (or footnotes)
"
%s/<aside class="notes">/```{block2,  type='note'}/
%s/<\/aside>/```/

" tried doing the above with non-greedy regexp, no luck: <aside class="notes">\(.\{-}\)<\/aside>/\1/


"""""""""""""""""""""""""""""""""""""""""""""""""""
"REMOVING CLUTTER
"
" Replace pauses with line breaks

%s/\. \. \./\\/

" Replace new slide indicators and horizontal lines with line breaks
"
%s/----/\\/
%s/\*\*\*/\\/

