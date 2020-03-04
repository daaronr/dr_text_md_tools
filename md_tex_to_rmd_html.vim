"%Transform md files for pdf generation to rmd files for html generation

"can execute with source md_tex_to_rmd_html.vim


"""""""""""""""""""""""""""""""""""""""""""""""""""
"FORMATTING AND COLOR

"within the below backticks as quotes mess things up!
:g/textcolor/s/\`/\'/

"Also no need to escape $  within this... but the command below is not quite right because it does stuff *not* within {}
":g/textcolor/s/\\\$/\$/


" latex color to rmd color (compatible w pdf or latex output)
%s/\\textcolor{\(.\{-}\)}{\(.\{-}\)}/`r format_with_col("\2","\1")`/
" Todo: figure out how to put math inside this color. Also no need to escape $
" within this
" Todo -- need to replace double with single quotes within this



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

"Footnote format
%s/\\footnote{\(.\{-}\)}/\^\[\1\]/
"to do: get this to work for multiple lines

"""""""""""""""""""""""""""""""""""""""""""""""""""
"IMAGES

%s/\\includegraphics\[height=\(.\{-}\)]{\(.\{-}\)}/```{r  fig.cap = '', out.height='\1', fig.asp=.4, fig.align='center',  echo = FALSE}\r knitr::include_graphics(\"\2\")\r```/


%s/\\includegraphics\[width=\(.\{-}\)]{\(.\{-}\)}/```{r  fig.cap = '', out.width='\1', fig.asp=.4, fig.align='center',  echo = FALSE}\r knitr::include_graphics(\"\2\")\r```/

%s/out.height='2in'/out.width='70%'/
%s/out.height='2.3in'/out.width='75%'/
%s/out.height='2.5in'/out.width='80%'/
%s/out.width='2.5in'/out.width='80%'/
%s/out.height='3..in'/out.width='85%'/
%s/out.height='3in'/out.width='85%'/
%s/out.height='2..in'/out.width='75%'/
%s/out.height='2in'/out.width='75%'/
%s/out.height='1..in'/out.width='50%'/
%s/out.height='1in'/out.width='50%'/
%s/out.width='3..in'/out.width='85%'/
%s/out.width='2..in'/out.width='75%'/
%s/out.width='1..in'/out.width='50%'/
"""""""""""""""""""""""""""""""""""""""""""""""""""
" Chapter markers/internal links

" let third level headers unnumbered by default

%s/###\(.*\)/###\1\ {-}/
%s/{-}{-}/{-}/
%s/{-} {-}/{-}/


" need at least one single space after headers How to regexp?
%s/^##\([A-z]\)\@=/## /
%s/^###\([A-z]\)\@=/### /




%s/\\end{centering}/\<center\>/
%s/\\begin{centering}/\<center\>/

"""""""""""""""""""""""""""""""""""""""""""""""""""
"REMOVING CLUTTER (specific to DR module)

"remove '[comment]: <> (2024BB)' bits etc (from when I had 1 file for both
"modules)

%s/.comment.: <> .2024BB.//
%s/.comment.: <> .2024EE.//


"Remove the 'lecture numbering'


"Make "Page X" just "(p x)":
"...with following text (put on its own line, give next line a "-")
"%s/^Page \([0-9]\{0,3}\) /(p\1)\r-/

"remove ---
"geometry: margin=0.7in


" remove '***' in most cases
---

