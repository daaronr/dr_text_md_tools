"%Transform md files for pdf generation to rmd files for html generation

"can execute with source /Users/yosemite/githubs/dr_text_md_tools/md_tex_to_rmd_revealjs.vim


"""""""""""""""""""""""""""""""""""""""""""""""""""
"FORMATTING AND COLOR

"within the below backticks as quotes mess things up!
:g/textcolor/s/\`/\'/
" ... do: improve this to do the same for double quotes other than the first
" and last

"Also no need to escape $  within this... but the command below is not quite right because it does stuff *not* within {}
":g/textcolor/s/\\\$/\$/


" latex color to rmd color (compatible w pdf or latex output)
%s/\\textcolor{\(.\{-}\)}{\(.\{-}\)}/`r format_with_col("\2","\1")`/

" Todo: figure out how to put math inside this color.
" " Todo -- need to replace double with single quotes within this


%s/\\bigskip/<br> \\bigskip/
"\medskip?

"emph, bold, etc
%s/\\emph{\(.\{-}\)}/\*\1\*/
%s/\\textbf{\(.\{-}\)}/\*\*\1\*\*/

"text size
%s/\\huge{\(.\{-}\)}/<big>\1<big>/
%s/\\footnotesize{\(.\{-}\)}/<small>\1<\\small>/


"underline doesn't work
%s/\\underline{\(.\{-}\)}/\*\*\1\*\*/

"Don't need to escape ampersands?
%s/\\&/\&/


%s/\\end{centering}/\<center\>/
%s/\\begin{centering}/\<center\>/




"""""""""""""""""""""""""""""""""""""""""""""""""""
"IMAGES

%s/\\includegraphics\[height=\(.\{-}\)]{\(.\{-}\)}/```{r  fig.cap = '', out.height='\1', fig.asp=.4, fig.align='center',  echo = FALSE}\r knitr::include_graphics(\"\2\")\r```/
%s/\\includegraphics\[height=\(.\{-}\)]{\(.*\)}/```{r  fig.cap = '', out.height='\1', fig.asp=.4, fig.align='center',  echo = FALSE}\r knitr::include_graphics(\"\2\")\r```/
%s/\\includegraphics\[height=\(.\{-}\)]{\(.\{-}\)}/```{r  fig.cap = '', out.height='\1', fig.asp=.4, fig.align='center',  echo = FALSE}\r knitr::include_graphics(\"\2\")\r```/

%s/\\includegraphics\[width=\(.\{-}\)]{\(.\{-}\)}/```{r  fig.cap = '', out.width='\1', fig.asp=.4, fig.align='center',  echo = FALSE}\r knitr::include_graphics(\"\2\")\r```/

"do: get rid of "\end{figure}" and "\begin{figure}"

"slashes after closing ``` mess things up, remove it
%g/^```/s/\\/
%g/^```/s/\//

%s/out.height='2in'/out.width='70%'/
%s/out.height='2.3in'/out.width='75%'/
%s/out.height='2.5in'/out.width='80%'/
%s/out.width='2.5in'/out.width='80%'/
%s/out.height='3..in'/out.width='90%'/
%s/out.height='3in'/out.width='90%'/
%s/out.height='4in'/out.width='90%'/
%s/out.height='4..in'/out.width='90%'/
%s/out.height='2..in'/out.width='75%'/
%s/out.height='1..in'/out.width='50%'/
%s/out.width='3..in'/out.width='90%'/
%s/out.width='2..in'/out.width='75%'/
%s/out.width='1..in'/out.width='50%'/
%s/out.width='\\paperwidth'/out.width='100%'/



""""""""""""""""""""""""""""""""""""""'
"HEADERS

" need at least one single space after headers How to regexp?
%s/^##\([A-z]\)\@=/## /
%s/^###\([A-z]\)\@=/### /

" *** to ---
%s/\*\*\*/----/


""""""""""""""""""""""""""""""""""""""'
"Speaker's notes

%s/\\pdfnote{\(.\{-}\)}/<aside class="notes">\1<\/aside>/
%s/\\pdfnote{\(\_.\{-}\)}/<aside class="notes">\1<\/aside>/
%s/\\textCR/\r/


"Footnotes should become asides
%s/\^\[\(.\{-}\)]/<aside class="notes">\1<\/aside>/


""""""""""""""""""""""""""""""""""""""'
"fix pauses
%s/\\pause/\. \. \.\
"%s/\(\. \. \.\)/<!-- \1 -->/


""""""""""""""""""""
"Cleanup
" no more 'url' tag





