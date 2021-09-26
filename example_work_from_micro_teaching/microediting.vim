let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <D-BS> 
inoremap <M-BS> 
inoremap <M-Down> }
inoremap <D-Down> <C-End>
inoremap <M-Up> {
inoremap <D-Up> <C-Home>
noremap! <M-Right> <C-Right>
noremap! <D-Right> <End>
noremap! <M-Left> <C-Left>
noremap! <D-Left> <Home>
imap <silent> <Plug>IMAP_JumpBack =IMAP_Jumpfunc('b', 0)
imap <silent> <Plug>IMAP_JumpForward =IMAP_Jumpfunc('', 0)
nnoremap  yGp
vmap <NL> <Plug>IMAP_JumpForward
nmap <NL> <Plug>IMAP_JumpForward
nmap  ok
nnoremap   i 
map ,lv -lv
map ,ls :w:silent !/Applications/Skim.app/Contents/SharedSupport/displayline -r =line('.') %<.pdf %
map ,ll -ll
nmap -j <Plug>(CommandTJump)
nmap -t <Plug>(CommandT)
nnoremap -rmT :%s/\\textCR//
nnoremap -kpnh :v/\(^\\pdf.\+\)|\(^\#.\+\)/d
nnoremap -rmBB :%s/^\n\{2,}/\r/
nnoremap -rmbb :%s/^\n\{3,}/\r\r/
nnoremap -rmM :%s//\r/g
nnoremap -rmd :%s/-\{4,}/ /
nnoremap -rmQ :%s/[^\x00-\x7F]/-/g
nnoremap -rmU :%s/[^[:print:]]//g
nnoremap -rmDW :DeleteDuplicateLinesIgnoring  [^$\s\+]
nnoremap -rmDD :DeleteDuplicateLinesIgnoring [-*]
nnoremap -cpp :!mv $HOME/Desktop/*.png $HOME/"Google Drive/exeter_teaching/be2024/picsfigs/"
nnoremap -pc :!pandoc * -t beamer -s --incremental --slide-level=3 -o
nnoremap -tf :call MakeTexFolds(1)
map -lr :w:Start! latexmk -pdf -pdflatex="pdflatex --shell-escape \%O \%S" % && latexmk -c %
nnoremap -mm lBi$$hEa$$
nnoremap -m lBi$hEa$
nnoremap -aaa I**A**
nnoremap -aa I*A*
nnoremap -bl I**A**
nnoremap -b lBi**hEa**
nnoremap -a lBi*hEa*
nnoremap -tp O[comment]: <> (PRESBB)}i[comment]: <> (PRESEE)j
nnoremap -tn O[comment]: <> (NOTESBB)}oi[comment]: <> (NOTESEE)j
nnoremap -ta O[comment]: <> (ANSBB)}oi[comment]: <> (ANSEE)j
nnoremap -tx O[comment]: <> (extBB)}o[comment]: <> (extEE)j
nnoremap -t18 O[comment]: <> (pre2018BB)}o[comment]: <> (pre2018EE)j
nnoremap -tta O[comment]: <> (TABB)}o\textcolor{red}{GTA's:}}o[comment]: <> (TAEE)j
nnoremap -tpg O[comment]: <> (101BB)}o[comment]: <> (101EE)j
nnoremap -tug O[comment]: <> (2024BB)}o[comment]: <> (2024EE)j
nnoremap -Mc {i<!---}o-->j
nnoremap -mc O<!---jo-->j
nnoremap -ma o***o
nnoremap -ca o***o
nnoremap -cle yyGp
nnoremap -mle yyGpdd
nnoremap -ev :vsplit $MYVIMRC
noremap ; :
nmap Cd :let @* = expand("%:p")
nmap Cp :let @* = expand("%")
xmap S <Plug>VSurround
nmap b2md :source /Users/yosemite/Dropbox/Computer_stuff_and_tutorials/vimstuff/booxtomd.vim
nmap cS <Plug>CSurround
nmap cs <Plug>Csurround
nmap cd :let @" = expand("%:p")
nmap cp :let @" = expand("%")
nmap ds <Plug>Dsurround
xmap gS <Plug>VgSurround
nmap gx <Plug>NetrwBrowseX
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
vnoremap ~ y:call setreg('', TwiddleCase(@"), getregtype(''))gv""Pgv
noremap <M-Down> }
noremap <D-Down> <C-End>
noremap <M-Up> {
noremap <D-Up> <C-Home>
noremap <M-Right> <C-Right>
noremap <D-Right> <End>
noremap <M-Left> <C-Left>
noremap <D-Left> <Home>
nnoremap <silent> <Plug>SurroundRepeat .
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cfile>"),0)
nnoremap <SNR>37_: :=v:count ? v:count : ''
vmap <silent> <Plug>IMAP_JumpBack `<i=IMAP_Jumpfunc('b', 0)
vmap <silent> <Plug>IMAP_JumpForward i=IMAP_Jumpfunc('', 0)
vmap <silent> <Plug>IMAP_DeleteAndJumpBack "_<Del>i=IMAP_Jumpfunc('b', 0)
vmap <silent> <Plug>IMAP_DeleteAndJumpForward "_<Del>i=IMAP_Jumpfunc('', 0)
nmap <silent> <Plug>IMAP_JumpBack i=IMAP_Jumpfunc('b', 0)
nmap <silent> <Plug>IMAP_JumpForward i=IMAP_Jumpfunc('', 0)
nnoremap <silent> <Plug>(CommandTTag) :CommandTTag
nnoremap <silent> <Plug>(CommandTSearch) :CommandTSearch
nnoremap <silent> <Plug>(CommandTMRU) :CommandTMRU
nnoremap <silent> <Plug>(CommandTLine) :CommandTLine
nnoremap <silent> <Plug>(CommandTCommand) :CommandTCommand
nnoremap <silent> <Plug>(CommandTJump) :CommandTJump
nnoremap <silent> <Plug>(CommandTHistory) :CommandTHistory
nnoremap <silent> <Plug>(CommandTHelp) :CommandTHelp
nnoremap <silent> <Plug>(CommandTBuffer) :CommandTBuffer
nnoremap <silent> <Plug>(CommandT) :CommandT
nnoremap <S-;> ^i//A//
nnoremap <S-Space> li 
nmap <S-CR> Oj
vnoremap <F2> :norm@q
nnoremap <F2> :call Marvim_search()
vnoremap <F3> y:call Marvim_template_store()
nnoremap <F3> :call Marvim_macro_store()
vmap <BS> "-d
imap S <Plug>ISurround
imap s <Plug>Isurround
imap <NL> <Plug>IMAP_JumpForward
imap  <Plug>Isurround
inoremap ;; 
nmap £ >
inoremap aaaa Bi**A**
inoremap aaa Bi*A*
inoremap jjj 
inoremap mmm Bi$A$
abbr ,,3 ###
abbr ,,2 ##
abbr ,,1 #
abbr £= ====================
abbr £u ____________________
abbr £l /*------------------------------------------------------*/
abbr £e \*******************************************************/
abbr £b /********************************************************
let &cpo=s:cpo_save
unlet s:cpo_save
set autochdir
set autoindent
set backspace=2
set breakat=\ \	!@-+;:,./?
set clipboard=unnamed
set copyindent
set diffopt=filler,iwhite
set display=lastline
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set grepprg=grep\ -nH\ $*
set guitablabel=%M%t
set helplang=en
set hlsearch
set ignorecase
set nojoinspaces
set langmenu=none
set mouse=a
set preserveindent
set printexpr=system('open\ -a\ Preview\ '.v:fname_in)\ +\ v:shell_error
set runtimepath=~/.vim,~/.vim/bundle/command-t,~/.vim/bundle/DeleteTrailingWhitespace,~/.vim/bundle/ingo-library,~/.vim/bundle/LaTeX-Box,~/.vim/bundle/LaTeX-Suite-aka-Vim-LaTeX,~/.vim/bundle/latextags,~/.vim/bundle/PatternsOnText,~/.vim/bundle/tabular,~/.vim/bundle/vim-fugitive,~/.vim/bundle/vim-latex-live-preview,~/.vim/bundle/vim-markdown,~/.vim/bundle/vimlatex,~/.vim/bundle/Vundle.vim,~/.vim/bundle/plugin,/Applications/MacVim.app/Contents/Resources/vim/vimfiles,/Applications/MacVim.app/Contents/Resources/vim/runtime,/Applications/MacVim.app/Contents/Resources/vim/vimfiles/after,~/.vim/bundle/vim-markdown/after,~/.vim/bundle/tabular/after,~/.vim/after,~/.vim/bundle/Vundle.vim/after,~/.vim/bundle/vim-fugitive/after,~/.vim/bundle/command-t/after,~/.vim/bundle/plugin/after,~/.vim/bundle/vim-latex-live-preview/after
set scrollopt=ver,jump,hor
set shell=bash\ -i
set shiftround
set shiftwidth=4
set showcmd
set smartcase
set smartindent
set softtabstop=4
set noswapfile
set switchbuf=usetab
set termencoding=utf-8
set window=54
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/OneDrive\ -\ University\ of\ Exeter/exeter_teaching/be2024
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1485 ~/OneDrive\ -\ University\ of\ Exeter/exeter_teaching/be2024/microediting.vim
badd +926 ~/OneDrive\ -\ University\ of\ Exeter/exeter_teaching/be2024/microedit.vim
badd +184 ~/Google\ Drive/exeter_teaching_etc/be2024/editmicro.vim
badd +1 ~/Google\ Drive/exeter_teaching_etc/be2024/handout_bothmodules.md
badd +28 ~/Google\ Drive/exeter_teaching_etc/be2024/compileslidesnotes_fuller.sh
badd +1 ~/Google\ Drive/exeter_teaching_etc/be2024/tutorials/tutorials_all_bothmodules.md
badd +1 ~/Google\ Drive/exeter_teaching_etc/be2024/slides_bothmodules.md
badd +8 ~/Google\ Drive/exeter_teaching_etc/be2024/slides_bothmodules_prepurge.md
badd +19 ~/OneDrive\ -\ University\ of\ Exeter/exeter_teaching/be2024/handout_bothmodules.md
badd +1 ~/OneDrive\ -\ University\ of\ Exeter/exeter_teaching/be2024/compiletutorials.sh
badd +27 ~/OneDrive\ -\ University\ of\ Exeter/exeter_teaching/be2024/slides_bothmodules.md
badd +1 ~/OneDrive\ -\ University\ of\ Exeter/exeter_teaching/be2024/tutorials/tutorials_all_bothmodules.md
badd +1 ~/OneDrive\ -\ University\ of\ Exeter/exeter_teaching/be2024/compileslidesnotes_fuller.sh
badd +0 ~/OneDrive\ -\ University\ of\ Exeter/exeter_teaching/be2024/musingsbothlectures.md
argglobal
silent! argdel *
argadd ~/Google\ Drive/exeter_teaching_etc/be2024/editmicro.vim
edit ~/OneDrive\ -\ University\ of\ Exeter/exeter_teaching/be2024/handout_bothmodules.md
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
vmap <buffer> [] <Plug>Markdown_MoveToPreviousSiblingHeader
nmap <buffer> [] <Plug>(pandoc-keyboard-rw-sect-end)
vmap <buffer> [[ <Plug>Markdown_MoveToPreviousHeader
nmap <buffer> [[ <Plug>(pandoc-keyboard-rw-header)
nmap <buffer> \xi <Plug>(pandoc-hypertext-goto-id)
nmap <buffer> \gb <Plug>(pandoc-keyboard-back-from-header)
nmap <buffer> \gl <Plug>(pandoc-keyboard-links-open)
nmap <buffer> \rb <Plug>(pandoc-keyboard-ref-backfrom)
nmap <buffer> \rg <Plug>(pandoc-keyboard-ref-goto)
nmap <buffer> \nr <Plug>(pandoc-keyboard-ref-insert)
vmap <buffer> \_ <Plug>(pandoc-keyboard-toggle-subscript)
nmap <buffer> \_ <Plug>(pandoc-keyboard-toggle-subscript)
vmap <buffer> \^ <Plug>(pandoc-keyboard-toggle-superscript)
nmap <buffer> \^ <Plug>(pandoc-keyboard-toggle-superscript)
vmap <buffer> \~~ <Plug>(pandoc-keyboard-toggle-strikeout)
nmap <buffer> \~~ <Plug>(pandoc-keyboard-toggle-strikeout)
vmap <buffer> \' <Plug>(pandoc-keyboard-toggle-verbatim)
nmap <buffer> \' <Plug>(pandoc-keyboard-toggle-verbatim)
vmap <buffer> \b <Plug>(pandoc-keyboard-toggle-strong)
nmap <buffer> \b <Plug>(pandoc-keyboard-toggle-strong)
vmap <buffer> \i <Plug>(pandoc-keyboard-toggle-emphasis)
nmap <buffer> \i <Plug>(pandoc-keyboard-toggle-emphasis)
nmap <buffer> \hcn <Plug>(pandoc-keyboard-nth-header-child)
nmap <buffer> \hcl <Plug>(pandoc-keyboard-last-header-child)
nmap <buffer> \hcf <Plug>(pandoc-keyboard-first-header-child)
nmap <buffer> \hsb <Plug>(pandoc-keyboard-prev-header-sibling)
nmap <buffer> \hsn <Plug>(pandoc-keyboard-next-header-sibling)
nmap <buffer> \hp <Plug>(pandoc-keyboard-cur-header-parent)
nmap <buffer> \hh <Plug>(pandoc-keyboard-cur-header)
nmap <buffer> \hb <Plug>(pandoc-keyboard-prev-header)
nmap <buffer> \hn <Plug>(pandoc-keyboard-next-header)
nmap <buffer> \hd <Plug>(pandoc-keyboard-remove-header)
nmap <buffer> \# <Plug>(pandoc-keyboard-apply-header)
nmap <buffer> \lcn <Plug>(pandoc-keyboard-nth-li-child)
nmap <buffer> \lcl <Plug>(pandoc-keyboard-last-li-child)
nmap <buffer> \lcf <Plug>(pandoc-keyboard-first-li-child)
nmap <buffer> \lsp <Plug>(pandoc-keyboard-prev-li-sibling)
nmap <buffer> \lsn <Plug>(pandoc-keyboard-next-li-sibling)
nmap <buffer> \llp <Plug>(pandoc-keyboard-cur-li-parent)
nmap <buffer> \ll <Plug>(pandoc-keyboard-cur-li)
nmap <buffer> \lp <Plug>(pandoc-keyboard-prev-li)
nmap <buffer> \ln <Plug>(pandoc-keyboard-next-li)
vmap <buffer> ]c <Plug>Markdown_MoveToCurHeader
nmap <buffer> ]c <Plug>Markdown_MoveToCurHeader
vmap <buffer> ]u <Plug>Markdown_MoveToParentHeader
nmap <buffer> ]u <Plug>Markdown_MoveToParentHeader
vmap <buffer> ][ <Plug>Markdown_MoveToNextSiblingHeader
nmap <buffer> ][ <Plug>(pandoc-keyboard-ff-sect-end)
vmap <buffer> ]] <Plug>Markdown_MoveToNextHeader
nmap <buffer> ]] <Plug>(pandoc-keyboard-ff-header)
omap <buffer> aPt :normal vaPl
vmap <buffer> <silent> aPt <Plug>(pandoc-keyboard-select-subscript-inclusive)
omap <buffer> aPu :normal vaPu
vmap <buffer> <silent> aPu <Plug>(pandoc-keyboard-select-superscript-inclusive)
omap <buffer> aPk :normal vaPk
vmap <buffer> <silent> aPk <Plug>(pandoc-keyboard-select-strikeout-inclusive)
omap <buffer> aPv :normal vaPv
vmap <buffer> <silent> aPv <Plug>(pandoc-keyboard-select-verbatim-inclusive)
omap <buffer> aPs :normal vaPs
vmap <buffer> <silent> aPs <Plug>(pandoc-keyboard-select-strong-inclusive)
omap <buffer> aPe :normal vaPe
vmap <buffer> <silent> aPe <Plug>(pandoc-keyboard-select-emphasis-inclusive)
omap <buffer> aS :normal VaS
vmap <buffer> aS <Plug>(pandoc-keyboard-select-section-inclusive)
nmap <buffer> gf <Plug>(pandoc-hypertext-open-local)
vmap <buffer> ge <Plug>Markdown_EditUrlUnderCursor
nmap <buffer> ge <Plug>Markdown_EditUrlUnderCursor
vmap <buffer> gx <Plug>Markdown_OpenUrlUnderCursor
nmap <buffer> gx <Plug>(pandoc-hypertext-open-system)
omap <buffer> iPt :normal viPl
vmap <buffer> <silent> iPt <Plug>(pandoc-keyboard-select-subscript-exclusive)
omap <buffer> iPu :normal viPu
vmap <buffer> <silent> iPu <Plug>(pandoc-keyboard-select-superscript-exclusive)
omap <buffer> iPk :normal viPk
vmap <buffer> <silent> iPk <Plug>(pandoc-keyboard-select-strikeout-exclusive)
omap <buffer> iPv :normal viPv
vmap <buffer> <silent> iPv <Plug>(pandoc-keyboard-select-verbatim-exclusive)
omap <buffer> iPs :normal viPs
vmap <buffer> <silent> iPs <Plug>(pandoc-keyboard-select-strong-exclusive)
omap <buffer> iPe :normal viPe
vmap <buffer> <silent> iPe <Plug>(pandoc-keyboard-select-emphasis-exclusive)
omap <buffer> iS :normal ViS
vmap <buffer> iS <Plug>(pandoc-keyboard-select-section-exclusive)
vnoremap <buffer> j gj
nnoremap <buffer> j gj
vnoremap <buffer> k gk
nnoremap <buffer> k gk
nnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-subscript) :set opfunc=pandoc#keyboard#styles#ToggleSubscriptg@
nnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-superscript) :set opfunc=pandoc#keyboard#styles#ToggleSuperscriptg@
nnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-strikeout) :set opfunc=pandoc#keyboard#styles#ToggleStrikeoutg@
nnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-verbatim) :set opfunc=pandoc#keyboard#styles#ToggleVerbatimg@
nnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-strong) :set opfunc=pandoc#keyboard#styles#ToggleStrongg@
nnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-emphasis) :set opfunc=pandoc#keyboard#styles#ToggleEmphasisg@
nnoremap <buffer> <silent> <Plug>(pandoc-hypertext-goto-id) :call pandoc#hypertext#GotoID()
nnoremap <buffer> <silent> <Plug>(pandoc-hypertext-open-system) :call pandoc#hypertext#OpenSystem()
nnoremap <buffer> <silent> <Plug>(pandoc-hypertext-open-local) :call pandoc#hypertext#OpenLocal()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-back-from-header) :call pandoc#hypertext#GotoSavedCursor()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-links-open) :call pandoc#hypertext#OpenLink()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-ref-backfrom) :call pandoc#keyboard#references#BACKFROM_Ref()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-ref-goto) :call pandoc#keyboard#references#GOTO_Ref()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-ref-insert) :call pandoc#keyboard#references#Insert_Ref()a
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-subscript-exclusive) :call pandoc#keyboard#styles#SelectSubscript("exclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-subscript-inclusive) :call pandoc#keyboard#styles#SelectSubscript("inclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-subscript) :call pandoc#keyboard#styles#ToggleSubscript(visualmode())
onoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-subscript) :set opfunc=pandoc#keyboard#styles#ToggleSubscriptg@
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-superscript-exclusive) :call pandoc#keyboard#styles#SelectSuperscript("exclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-superscript-inclusive) :call pandoc#keyboard#styles#SelectSuperscript("inclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-superscript) :call pandoc#keyboard#styles#ToggleSuperscript(visualmode())
onoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-superscript) :set opfunc=pandoc#keyboard#styles#ToggleSuperscriptg@
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-strikeout-exclusive) :call pandoc#keyboard#styles#SelectStrikeout("exclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-strikeout-inclusive) :call pandoc#keyboard#styles#SelectStrikeout("inclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-strikeout) :call pandoc#keyboard#styles#ToggleStrikeout(visualmode())
onoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-strikeout) :set opfunc=pandoc#keyboard#styles#ToggleStrikeoutg@
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-verbatim-exclusive) :call pandoc#keyboard#styles#SelectVerbatim("exclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-verbatim-inclusive) :call pandoc#keyboard#styles#SelectVerbatim("inclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-verbatim) :call pandoc#keyboard#styles#ToggleVerbatim(visualmode())
onoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-verbatim) :set opfunc=pandoc#keyboard#styles#ToggleVerbatimg@
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-strong-exclusive) :call pandoc#keyboard#styles#SelectStrong("exclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-strong-inclusive) :call pandoc#keyboard#styles#SelectStrong("inclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-strong) :call pandoc#keyboard#styles#ToggleStrong(visualmode())
onoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-strong) :set opfunc=pandoc#keyboard#styles#ToggleStrongg@
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-emphasis-exclusive) :call pandoc#keyboard#styles#SelectEmphasis("exclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-emphasis-inclusive) :call pandoc#keyboard#styles#SelectEmphasis("inclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-emphasis) :call pandoc#keyboard#styles#ToggleEmphasis(visualmode())
onoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-emphasis) :set opfunc=pandoc#keyboard#styles#ToggleEmphasisg@
noremap <buffer> <silent> <Plug>(pandoc-keyboard-nth-header-child) :call pandoc#keyboard#sections#GotoNthChildHeader(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-last-header-child) :call pandoc#keyboard#sections#LastChildHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-first-header-child) :call pandoc#keyboard#sections#FirstChildHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-prev-header-sibling) :call pandoc#keyboard#sections#PrevSiblingHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-next-header-sibling) :call pandoc#keyboard#sections#NextSiblingHeader()
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-section-exclusive) :call pandoc#keyboard#sections#SelectSection('exclusive')
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-section-inclusive) :call pandoc#keyboard#sections#SelectSection('inclusive')
noremap <buffer> <silent> <Plug>(pandoc-keyboard-cur-header-parent) :call pandoc#keyboard#sections#CurrentHeaderParent()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-cur-header) :call pandoc#keyboard#sections#CurrentHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-rw-sect-end) :call pandoc#keyboard#sections#PrevSectionEnd(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-ff-sect-end) :call pandoc#keyboard#sections#NextSectionEnd(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-rw-header) :call pandoc#keyboard#sections#BackwardHeader(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-ff-header) :call pandoc#keyboard#sections#ForwardHeader(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-prev-header) :call pandoc#keyboard#sections#PrevHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-next-header) :call pandoc#keyboard#sections#NextHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-remove-header) :call pandoc#keyboard#sections#RemoveHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-apply-header) :call pandoc#keyboard#sections#ApplyHeader(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-nth-li-child) :call pandoc#keyboard#lists#GotoNthListItemChild(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-last-li-child) :call pandoc#keyboard#lists#LastListItemChild()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-first-li-child) :call pandoc#keyboard#lists#FirstListItemChild()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-prev-li-sibling) :call pandoc#keyboard#lists#PrevListItemSibling()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-next-li-sibling) :call pandoc#keyboard#lists#NextListItemSibling()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-cur-li-parent) :call pandoc#keyboard#lists#CurrentListItemParent()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-cur-li) :call pandoc#keyboard#lists#CurrentListItem()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-prev-li) :call pandoc#keyboard#lists#PrevListItem()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-next-li) :call pandoc#keyboard#lists#NextListItem()
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s:<!--,m:\ \ \ \ ,e:-->,:|,n:>
setlocal commentstring=<!--%s-->
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=2
setlocal completefunc=
setlocal copyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=pandoc\ -t\ markdown\ --reference-links\ --no-wrap\ 
setlocal errorformat=
setlocal expandtab
if &filetype != 'pandoc'
setlocal filetype=pandoc
endif
setlocal foldcolumn=1
setlocal foldenable
setlocal foldexpr=pandoc#folding#FoldExpr()
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=expr
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=pandoc#folding#FoldText()
setlocal formatexpr=
setlocal formatoptions=1
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetMarkdownIndent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=48-57,a-z,A-Z,192-255
setlocal keywordprg=
setlocal linebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal nomacmeta
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=pandoc#completion#Complete
setlocal path=
setlocal preserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal spell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'pandoc'
setlocal syntax=pandoc
endif
setlocal tabstop=8
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
404
normal! zo
2061
normal! zo
let s:l = 7 - ((6 * winheight(0) + 27) / 55)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
7
normal! 01|
lcd ~/OneDrive\ -\ University\ of\ Exeter/exeter_teaching/be2024
tabedit ~/OneDrive\ -\ University\ of\ Exeter/exeter_teaching/be2024/slides_bothmodules.md
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
vmap <buffer> [] <Plug>Markdown_MoveToPreviousSiblingHeader
nmap <buffer> [] <Plug>(pandoc-keyboard-rw-sect-end)
vmap <buffer> [[ <Plug>Markdown_MoveToPreviousHeader
nmap <buffer> [[ <Plug>(pandoc-keyboard-rw-header)
nmap <buffer> \xi <Plug>(pandoc-hypertext-goto-id)
nmap <buffer> \gb <Plug>(pandoc-keyboard-back-from-header)
nmap <buffer> \gl <Plug>(pandoc-keyboard-links-open)
nmap <buffer> \rb <Plug>(pandoc-keyboard-ref-backfrom)
nmap <buffer> \rg <Plug>(pandoc-keyboard-ref-goto)
nmap <buffer> \nr <Plug>(pandoc-keyboard-ref-insert)
vmap <buffer> \_ <Plug>(pandoc-keyboard-toggle-subscript)
nmap <buffer> \_ <Plug>(pandoc-keyboard-toggle-subscript)
vmap <buffer> \^ <Plug>(pandoc-keyboard-toggle-superscript)
nmap <buffer> \^ <Plug>(pandoc-keyboard-toggle-superscript)
vmap <buffer> \~~ <Plug>(pandoc-keyboard-toggle-strikeout)
nmap <buffer> \~~ <Plug>(pandoc-keyboard-toggle-strikeout)
vmap <buffer> \' <Plug>(pandoc-keyboard-toggle-verbatim)
nmap <buffer> \' <Plug>(pandoc-keyboard-toggle-verbatim)
vmap <buffer> \b <Plug>(pandoc-keyboard-toggle-strong)
nmap <buffer> \b <Plug>(pandoc-keyboard-toggle-strong)
vmap <buffer> \i <Plug>(pandoc-keyboard-toggle-emphasis)
nmap <buffer> \i <Plug>(pandoc-keyboard-toggle-emphasis)
nmap <buffer> \hcn <Plug>(pandoc-keyboard-nth-header-child)
nmap <buffer> \hcl <Plug>(pandoc-keyboard-last-header-child)
nmap <buffer> \hcf <Plug>(pandoc-keyboard-first-header-child)
nmap <buffer> \hsb <Plug>(pandoc-keyboard-prev-header-sibling)
nmap <buffer> \hsn <Plug>(pandoc-keyboard-next-header-sibling)
nmap <buffer> \hp <Plug>(pandoc-keyboard-cur-header-parent)
nmap <buffer> \hh <Plug>(pandoc-keyboard-cur-header)
nmap <buffer> \hb <Plug>(pandoc-keyboard-prev-header)
nmap <buffer> \hn <Plug>(pandoc-keyboard-next-header)
nmap <buffer> \hd <Plug>(pandoc-keyboard-remove-header)
nmap <buffer> \# <Plug>(pandoc-keyboard-apply-header)
nmap <buffer> \lcn <Plug>(pandoc-keyboard-nth-li-child)
nmap <buffer> \lcl <Plug>(pandoc-keyboard-last-li-child)
nmap <buffer> \lcf <Plug>(pandoc-keyboard-first-li-child)
nmap <buffer> \lsp <Plug>(pandoc-keyboard-prev-li-sibling)
nmap <buffer> \lsn <Plug>(pandoc-keyboard-next-li-sibling)
nmap <buffer> \llp <Plug>(pandoc-keyboard-cur-li-parent)
nmap <buffer> \ll <Plug>(pandoc-keyboard-cur-li)
nmap <buffer> \lp <Plug>(pandoc-keyboard-prev-li)
nmap <buffer> \ln <Plug>(pandoc-keyboard-next-li)
vmap <buffer> ]c <Plug>Markdown_MoveToCurHeader
nmap <buffer> ]c <Plug>Markdown_MoveToCurHeader
vmap <buffer> ]u <Plug>Markdown_MoveToParentHeader
nmap <buffer> ]u <Plug>Markdown_MoveToParentHeader
vmap <buffer> ][ <Plug>Markdown_MoveToNextSiblingHeader
nmap <buffer> ][ <Plug>(pandoc-keyboard-ff-sect-end)
vmap <buffer> ]] <Plug>Markdown_MoveToNextHeader
nmap <buffer> ]] <Plug>(pandoc-keyboard-ff-header)
omap <buffer> aPt :normal vaPl
vmap <buffer> <silent> aPt <Plug>(pandoc-keyboard-select-subscript-inclusive)
omap <buffer> aPu :normal vaPu
vmap <buffer> <silent> aPu <Plug>(pandoc-keyboard-select-superscript-inclusive)
omap <buffer> aPk :normal vaPk
vmap <buffer> <silent> aPk <Plug>(pandoc-keyboard-select-strikeout-inclusive)
omap <buffer> aPv :normal vaPv
vmap <buffer> <silent> aPv <Plug>(pandoc-keyboard-select-verbatim-inclusive)
omap <buffer> aPs :normal vaPs
vmap <buffer> <silent> aPs <Plug>(pandoc-keyboard-select-strong-inclusive)
omap <buffer> aPe :normal vaPe
vmap <buffer> <silent> aPe <Plug>(pandoc-keyboard-select-emphasis-inclusive)
omap <buffer> aS :normal VaS
vmap <buffer> aS <Plug>(pandoc-keyboard-select-section-inclusive)
nmap <buffer> gf <Plug>(pandoc-hypertext-open-local)
vmap <buffer> ge <Plug>Markdown_EditUrlUnderCursor
nmap <buffer> ge <Plug>Markdown_EditUrlUnderCursor
vmap <buffer> gx <Plug>Markdown_OpenUrlUnderCursor
nmap <buffer> gx <Plug>(pandoc-hypertext-open-system)
omap <buffer> iPt :normal viPl
vmap <buffer> <silent> iPt <Plug>(pandoc-keyboard-select-subscript-exclusive)
omap <buffer> iPu :normal viPu
vmap <buffer> <silent> iPu <Plug>(pandoc-keyboard-select-superscript-exclusive)
omap <buffer> iPk :normal viPk
vmap <buffer> <silent> iPk <Plug>(pandoc-keyboard-select-strikeout-exclusive)
omap <buffer> iPv :normal viPv
vmap <buffer> <silent> iPv <Plug>(pandoc-keyboard-select-verbatim-exclusive)
omap <buffer> iPs :normal viPs
vmap <buffer> <silent> iPs <Plug>(pandoc-keyboard-select-strong-exclusive)
omap <buffer> iPe :normal viPe
vmap <buffer> <silent> iPe <Plug>(pandoc-keyboard-select-emphasis-exclusive)
omap <buffer> iS :normal ViS
vmap <buffer> iS <Plug>(pandoc-keyboard-select-section-exclusive)
vnoremap <buffer> j gj
nnoremap <buffer> j gj
vnoremap <buffer> k gk
nnoremap <buffer> k gk
nnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-emphasis) :set opfunc=pandoc#keyboard#styles#ToggleEmphasisg@
nnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-strong) :set opfunc=pandoc#keyboard#styles#ToggleStrongg@
nnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-verbatim) :set opfunc=pandoc#keyboard#styles#ToggleVerbatimg@
nnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-strikeout) :set opfunc=pandoc#keyboard#styles#ToggleStrikeoutg@
nnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-superscript) :set opfunc=pandoc#keyboard#styles#ToggleSuperscriptg@
nnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-subscript) :set opfunc=pandoc#keyboard#styles#ToggleSubscriptg@
nnoremap <buffer> <silent> <Plug>(pandoc-hypertext-goto-id) :call pandoc#hypertext#GotoID()
nnoremap <buffer> <silent> <Plug>(pandoc-hypertext-open-system) :call pandoc#hypertext#OpenSystem()
nnoremap <buffer> <silent> <Plug>(pandoc-hypertext-open-local) :call pandoc#hypertext#OpenLocal()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-back-from-header) :call pandoc#hypertext#GotoSavedCursor()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-links-open) :call pandoc#hypertext#OpenLink()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-ref-backfrom) :call pandoc#keyboard#references#BACKFROM_Ref()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-ref-goto) :call pandoc#keyboard#references#GOTO_Ref()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-ref-insert) :call pandoc#keyboard#references#Insert_Ref()a
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-subscript-exclusive) :call pandoc#keyboard#styles#SelectSubscript("exclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-subscript-inclusive) :call pandoc#keyboard#styles#SelectSubscript("inclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-subscript) :call pandoc#keyboard#styles#ToggleSubscript(visualmode())
onoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-subscript) :set opfunc=pandoc#keyboard#styles#ToggleSubscriptg@
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-superscript-exclusive) :call pandoc#keyboard#styles#SelectSuperscript("exclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-superscript-inclusive) :call pandoc#keyboard#styles#SelectSuperscript("inclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-superscript) :call pandoc#keyboard#styles#ToggleSuperscript(visualmode())
onoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-superscript) :set opfunc=pandoc#keyboard#styles#ToggleSuperscriptg@
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-strikeout-exclusive) :call pandoc#keyboard#styles#SelectStrikeout("exclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-strikeout-inclusive) :call pandoc#keyboard#styles#SelectStrikeout("inclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-strikeout) :call pandoc#keyboard#styles#ToggleStrikeout(visualmode())
onoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-strikeout) :set opfunc=pandoc#keyboard#styles#ToggleStrikeoutg@
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-verbatim-exclusive) :call pandoc#keyboard#styles#SelectVerbatim("exclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-verbatim-inclusive) :call pandoc#keyboard#styles#SelectVerbatim("inclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-verbatim) :call pandoc#keyboard#styles#ToggleVerbatim(visualmode())
onoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-verbatim) :set opfunc=pandoc#keyboard#styles#ToggleVerbatimg@
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-strong-exclusive) :call pandoc#keyboard#styles#SelectStrong("exclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-strong-inclusive) :call pandoc#keyboard#styles#SelectStrong("inclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-strong) :call pandoc#keyboard#styles#ToggleStrong(visualmode())
onoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-strong) :set opfunc=pandoc#keyboard#styles#ToggleStrongg@
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-emphasis-exclusive) :call pandoc#keyboard#styles#SelectEmphasis("exclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-emphasis-inclusive) :call pandoc#keyboard#styles#SelectEmphasis("inclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-emphasis) :call pandoc#keyboard#styles#ToggleEmphasis(visualmode())
onoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-emphasis) :set opfunc=pandoc#keyboard#styles#ToggleEmphasisg@
noremap <buffer> <silent> <Plug>(pandoc-keyboard-nth-header-child) :call pandoc#keyboard#sections#GotoNthChildHeader(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-last-header-child) :call pandoc#keyboard#sections#LastChildHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-first-header-child) :call pandoc#keyboard#sections#FirstChildHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-prev-header-sibling) :call pandoc#keyboard#sections#PrevSiblingHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-next-header-sibling) :call pandoc#keyboard#sections#NextSiblingHeader()
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-section-exclusive) :call pandoc#keyboard#sections#SelectSection('exclusive')
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-section-inclusive) :call pandoc#keyboard#sections#SelectSection('inclusive')
noremap <buffer> <silent> <Plug>(pandoc-keyboard-cur-header-parent) :call pandoc#keyboard#sections#CurrentHeaderParent()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-cur-header) :call pandoc#keyboard#sections#CurrentHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-rw-sect-end) :call pandoc#keyboard#sections#PrevSectionEnd(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-ff-sect-end) :call pandoc#keyboard#sections#NextSectionEnd(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-rw-header) :call pandoc#keyboard#sections#BackwardHeader(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-ff-header) :call pandoc#keyboard#sections#ForwardHeader(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-prev-header) :call pandoc#keyboard#sections#PrevHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-next-header) :call pandoc#keyboard#sections#NextHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-remove-header) :call pandoc#keyboard#sections#RemoveHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-apply-header) :call pandoc#keyboard#sections#ApplyHeader(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-nth-li-child) :call pandoc#keyboard#lists#GotoNthListItemChild(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-last-li-child) :call pandoc#keyboard#lists#LastListItemChild()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-first-li-child) :call pandoc#keyboard#lists#FirstListItemChild()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-prev-li-sibling) :call pandoc#keyboard#lists#PrevListItemSibling()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-next-li-sibling) :call pandoc#keyboard#lists#NextListItemSibling()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-cur-li-parent) :call pandoc#keyboard#lists#CurrentListItemParent()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-cur-li) :call pandoc#keyboard#lists#CurrentListItem()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-prev-li) :call pandoc#keyboard#lists#PrevListItem()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-next-li) :call pandoc#keyboard#lists#NextListItem()
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s:<!--,m:\ \ \ \ ,e:-->,:|,n:>
setlocal commentstring=<!--%s-->
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=2
setlocal completefunc=
setlocal copyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=pandoc\ -t\ markdown\ --reference-links\ --no-wrap\ 
setlocal errorformat=
setlocal expandtab
if &filetype != 'pandoc'
setlocal filetype=pandoc
endif
setlocal foldcolumn=1
setlocal foldenable
setlocal foldexpr=pandoc#folding#FoldExpr()
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=expr
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=pandoc#folding#FoldText()
setlocal formatexpr=
setlocal formatoptions=1
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetMarkdownIndent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=48-57,a-z,A-Z,192-255
setlocal keywordprg=
setlocal linebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal nomacmeta
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=pandoc#completion#Complete
setlocal path=
setlocal preserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal spell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'pandoc'
setlocal syntax=pandoc
endif
setlocal tabstop=8
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
237
normal! zo
597
normal! zo
let s:l = 1004 - ((337 * winheight(0) + 27) / 54)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1004
normal! 01|
lcd ~/OneDrive\ -\ University\ of\ Exeter/exeter_teaching/be2024
tabedit ~/OneDrive\ -\ University\ of\ Exeter/exeter_teaching/be2024/handout_bothmodules.md
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 84 + 84) / 169)
exe 'vert 2resize ' . ((&columns * 84 + 84) / 169)
argglobal
let s:cpo_save=&cpo
set cpo&vim
vmap <buffer> [] <Plug>Markdown_MoveToPreviousSiblingHeader
nmap <buffer> [] <Plug>(pandoc-keyboard-rw-sect-end)
vmap <buffer> [[ <Plug>Markdown_MoveToPreviousHeader
nmap <buffer> [[ <Plug>(pandoc-keyboard-rw-header)
nmap <buffer> \xi <Plug>(pandoc-hypertext-goto-id)
nmap <buffer> \gb <Plug>(pandoc-keyboard-back-from-header)
nmap <buffer> \gl <Plug>(pandoc-keyboard-links-open)
nmap <buffer> \rb <Plug>(pandoc-keyboard-ref-backfrom)
nmap <buffer> \rg <Plug>(pandoc-keyboard-ref-goto)
nmap <buffer> \nr <Plug>(pandoc-keyboard-ref-insert)
vmap <buffer> \_ <Plug>(pandoc-keyboard-toggle-subscript)
nmap <buffer> \_ <Plug>(pandoc-keyboard-toggle-subscript)
vmap <buffer> \^ <Plug>(pandoc-keyboard-toggle-superscript)
nmap <buffer> \^ <Plug>(pandoc-keyboard-toggle-superscript)
vmap <buffer> \~~ <Plug>(pandoc-keyboard-toggle-strikeout)
nmap <buffer> \~~ <Plug>(pandoc-keyboard-toggle-strikeout)
vmap <buffer> \' <Plug>(pandoc-keyboard-toggle-verbatim)
nmap <buffer> \' <Plug>(pandoc-keyboard-toggle-verbatim)
vmap <buffer> \b <Plug>(pandoc-keyboard-toggle-strong)
nmap <buffer> \b <Plug>(pandoc-keyboard-toggle-strong)
vmap <buffer> \i <Plug>(pandoc-keyboard-toggle-emphasis)
nmap <buffer> \i <Plug>(pandoc-keyboard-toggle-emphasis)
nmap <buffer> \hcn <Plug>(pandoc-keyboard-nth-header-child)
nmap <buffer> \hcl <Plug>(pandoc-keyboard-last-header-child)
nmap <buffer> \hcf <Plug>(pandoc-keyboard-first-header-child)
nmap <buffer> \hsb <Plug>(pandoc-keyboard-prev-header-sibling)
nmap <buffer> \hsn <Plug>(pandoc-keyboard-next-header-sibling)
nmap <buffer> \hp <Plug>(pandoc-keyboard-cur-header-parent)
nmap <buffer> \hh <Plug>(pandoc-keyboard-cur-header)
nmap <buffer> \hb <Plug>(pandoc-keyboard-prev-header)
nmap <buffer> \hn <Plug>(pandoc-keyboard-next-header)
nmap <buffer> \hd <Plug>(pandoc-keyboard-remove-header)
nmap <buffer> \# <Plug>(pandoc-keyboard-apply-header)
nmap <buffer> \lcn <Plug>(pandoc-keyboard-nth-li-child)
nmap <buffer> \lcl <Plug>(pandoc-keyboard-last-li-child)
nmap <buffer> \lcf <Plug>(pandoc-keyboard-first-li-child)
nmap <buffer> \lsp <Plug>(pandoc-keyboard-prev-li-sibling)
nmap <buffer> \lsn <Plug>(pandoc-keyboard-next-li-sibling)
nmap <buffer> \llp <Plug>(pandoc-keyboard-cur-li-parent)
nmap <buffer> \ll <Plug>(pandoc-keyboard-cur-li)
nmap <buffer> \lp <Plug>(pandoc-keyboard-prev-li)
nmap <buffer> \ln <Plug>(pandoc-keyboard-next-li)
vmap <buffer> ]c <Plug>Markdown_MoveToCurHeader
nmap <buffer> ]c <Plug>Markdown_MoveToCurHeader
vmap <buffer> ]u <Plug>Markdown_MoveToParentHeader
nmap <buffer> ]u <Plug>Markdown_MoveToParentHeader
vmap <buffer> ][ <Plug>Markdown_MoveToNextSiblingHeader
nmap <buffer> ][ <Plug>(pandoc-keyboard-ff-sect-end)
vmap <buffer> ]] <Plug>Markdown_MoveToNextHeader
nmap <buffer> ]] <Plug>(pandoc-keyboard-ff-header)
omap <buffer> aPt :normal vaPl
vmap <buffer> <silent> aPt <Plug>(pandoc-keyboard-select-subscript-inclusive)
omap <buffer> aPu :normal vaPu
vmap <buffer> <silent> aPu <Plug>(pandoc-keyboard-select-superscript-inclusive)
omap <buffer> aPk :normal vaPk
vmap <buffer> <silent> aPk <Plug>(pandoc-keyboard-select-strikeout-inclusive)
omap <buffer> aPv :normal vaPv
vmap <buffer> <silent> aPv <Plug>(pandoc-keyboard-select-verbatim-inclusive)
omap <buffer> aPs :normal vaPs
vmap <buffer> <silent> aPs <Plug>(pandoc-keyboard-select-strong-inclusive)
omap <buffer> aPe :normal vaPe
vmap <buffer> <silent> aPe <Plug>(pandoc-keyboard-select-emphasis-inclusive)
omap <buffer> aS :normal VaS
vmap <buffer> aS <Plug>(pandoc-keyboard-select-section-inclusive)
nmap <buffer> gf <Plug>(pandoc-hypertext-open-local)
vmap <buffer> ge <Plug>Markdown_EditUrlUnderCursor
nmap <buffer> ge <Plug>Markdown_EditUrlUnderCursor
vmap <buffer> gx <Plug>Markdown_OpenUrlUnderCursor
nmap <buffer> gx <Plug>(pandoc-hypertext-open-system)
omap <buffer> iPt :normal viPl
vmap <buffer> <silent> iPt <Plug>(pandoc-keyboard-select-subscript-exclusive)
omap <buffer> iPu :normal viPu
vmap <buffer> <silent> iPu <Plug>(pandoc-keyboard-select-superscript-exclusive)
omap <buffer> iPk :normal viPk
vmap <buffer> <silent> iPk <Plug>(pandoc-keyboard-select-strikeout-exclusive)
omap <buffer> iPv :normal viPv
vmap <buffer> <silent> iPv <Plug>(pandoc-keyboard-select-verbatim-exclusive)
omap <buffer> iPs :normal viPs
vmap <buffer> <silent> iPs <Plug>(pandoc-keyboard-select-strong-exclusive)
omap <buffer> iPe :normal viPe
vmap <buffer> <silent> iPe <Plug>(pandoc-keyboard-select-emphasis-exclusive)
omap <buffer> iS :normal ViS
vmap <buffer> iS <Plug>(pandoc-keyboard-select-section-exclusive)
vnoremap <buffer> j gj
nnoremap <buffer> j gj
vnoremap <buffer> k gk
nnoremap <buffer> k gk
nnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-subscript) :set opfunc=pandoc#keyboard#styles#ToggleSubscriptg@
nnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-superscript) :set opfunc=pandoc#keyboard#styles#ToggleSuperscriptg@
nnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-strikeout) :set opfunc=pandoc#keyboard#styles#ToggleStrikeoutg@
nnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-verbatim) :set opfunc=pandoc#keyboard#styles#ToggleVerbatimg@
nnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-strong) :set opfunc=pandoc#keyboard#styles#ToggleStrongg@
nnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-emphasis) :set opfunc=pandoc#keyboard#styles#ToggleEmphasisg@
nnoremap <buffer> <silent> <Plug>(pandoc-hypertext-goto-id) :call pandoc#hypertext#GotoID()
nnoremap <buffer> <silent> <Plug>(pandoc-hypertext-open-system) :call pandoc#hypertext#OpenSystem()
nnoremap <buffer> <silent> <Plug>(pandoc-hypertext-open-local) :call pandoc#hypertext#OpenLocal()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-back-from-header) :call pandoc#hypertext#GotoSavedCursor()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-links-open) :call pandoc#hypertext#OpenLink()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-ref-backfrom) :call pandoc#keyboard#references#BACKFROM_Ref()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-ref-goto) :call pandoc#keyboard#references#GOTO_Ref()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-ref-insert) :call pandoc#keyboard#references#Insert_Ref()a
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-subscript-exclusive) :call pandoc#keyboard#styles#SelectSubscript("exclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-subscript-inclusive) :call pandoc#keyboard#styles#SelectSubscript("inclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-subscript) :call pandoc#keyboard#styles#ToggleSubscript(visualmode())
onoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-subscript) :set opfunc=pandoc#keyboard#styles#ToggleSubscriptg@
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-superscript-exclusive) :call pandoc#keyboard#styles#SelectSuperscript("exclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-superscript-inclusive) :call pandoc#keyboard#styles#SelectSuperscript("inclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-superscript) :call pandoc#keyboard#styles#ToggleSuperscript(visualmode())
onoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-superscript) :set opfunc=pandoc#keyboard#styles#ToggleSuperscriptg@
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-strikeout-exclusive) :call pandoc#keyboard#styles#SelectStrikeout("exclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-strikeout-inclusive) :call pandoc#keyboard#styles#SelectStrikeout("inclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-strikeout) :call pandoc#keyboard#styles#ToggleStrikeout(visualmode())
onoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-strikeout) :set opfunc=pandoc#keyboard#styles#ToggleStrikeoutg@
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-verbatim-exclusive) :call pandoc#keyboard#styles#SelectVerbatim("exclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-verbatim-inclusive) :call pandoc#keyboard#styles#SelectVerbatim("inclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-verbatim) :call pandoc#keyboard#styles#ToggleVerbatim(visualmode())
onoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-verbatim) :set opfunc=pandoc#keyboard#styles#ToggleVerbatimg@
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-strong-exclusive) :call pandoc#keyboard#styles#SelectStrong("exclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-strong-inclusive) :call pandoc#keyboard#styles#SelectStrong("inclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-strong) :call pandoc#keyboard#styles#ToggleStrong(visualmode())
onoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-strong) :set opfunc=pandoc#keyboard#styles#ToggleStrongg@
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-emphasis-exclusive) :call pandoc#keyboard#styles#SelectEmphasis("exclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-emphasis-inclusive) :call pandoc#keyboard#styles#SelectEmphasis("inclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-emphasis) :call pandoc#keyboard#styles#ToggleEmphasis(visualmode())
onoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-emphasis) :set opfunc=pandoc#keyboard#styles#ToggleEmphasisg@
noremap <buffer> <silent> <Plug>(pandoc-keyboard-nth-header-child) :call pandoc#keyboard#sections#GotoNthChildHeader(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-last-header-child) :call pandoc#keyboard#sections#LastChildHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-first-header-child) :call pandoc#keyboard#sections#FirstChildHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-prev-header-sibling) :call pandoc#keyboard#sections#PrevSiblingHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-next-header-sibling) :call pandoc#keyboard#sections#NextSiblingHeader()
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-section-exclusive) :call pandoc#keyboard#sections#SelectSection('exclusive')
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-section-inclusive) :call pandoc#keyboard#sections#SelectSection('inclusive')
noremap <buffer> <silent> <Plug>(pandoc-keyboard-cur-header-parent) :call pandoc#keyboard#sections#CurrentHeaderParent()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-cur-header) :call pandoc#keyboard#sections#CurrentHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-rw-sect-end) :call pandoc#keyboard#sections#PrevSectionEnd(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-ff-sect-end) :call pandoc#keyboard#sections#NextSectionEnd(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-rw-header) :call pandoc#keyboard#sections#BackwardHeader(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-ff-header) :call pandoc#keyboard#sections#ForwardHeader(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-prev-header) :call pandoc#keyboard#sections#PrevHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-next-header) :call pandoc#keyboard#sections#NextHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-remove-header) :call pandoc#keyboard#sections#RemoveHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-apply-header) :call pandoc#keyboard#sections#ApplyHeader(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-nth-li-child) :call pandoc#keyboard#lists#GotoNthListItemChild(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-last-li-child) :call pandoc#keyboard#lists#LastListItemChild()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-first-li-child) :call pandoc#keyboard#lists#FirstListItemChild()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-prev-li-sibling) :call pandoc#keyboard#lists#PrevListItemSibling()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-next-li-sibling) :call pandoc#keyboard#lists#NextListItemSibling()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-cur-li-parent) :call pandoc#keyboard#lists#CurrentListItemParent()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-cur-li) :call pandoc#keyboard#lists#CurrentListItem()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-prev-li) :call pandoc#keyboard#lists#PrevListItem()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-next-li) :call pandoc#keyboard#lists#NextListItem()
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s:<!--,m:\ \ \ \ ,e:-->,:|,n:>
setlocal commentstring=<!--%s-->
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal copyindent
setlocal cryptmethod=
setlocal cursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal diff
setlocal equalprg=pandoc\ -t\ markdown\ --reference-links\ --no-wrap\ 
setlocal errorformat=
setlocal expandtab
if &filetype != 'pandoc'
setlocal filetype=pandoc
endif
setlocal foldcolumn=2
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=diff
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=1
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetMarkdownIndent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=48-57,a-z,A-Z,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal nomacmeta
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=pandoc#completion#Complete
setlocal path=
setlocal preserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal scrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'pandoc'
setlocal syntax=pandoc
endif
setlocal tabstop=8
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 457 - ((2 * winheight(0) + 26) / 53)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
457
normal! 021|
lcd ~/OneDrive\ -\ University\ of\ Exeter/exeter_teaching/be2024
wincmd w
argglobal
edit ~/OneDrive\ -\ University\ of\ Exeter/exeter_teaching/be2024/slides_bothmodules.md
let s:cpo_save=&cpo
set cpo&vim
vmap <buffer> [] <Plug>Markdown_MoveToPreviousSiblingHeader
nmap <buffer> [] <Plug>(pandoc-keyboard-rw-sect-end)
vmap <buffer> [[ <Plug>Markdown_MoveToPreviousHeader
nmap <buffer> [[ <Plug>(pandoc-keyboard-rw-header)
nmap <buffer> \xi <Plug>(pandoc-hypertext-goto-id)
nmap <buffer> \gb <Plug>(pandoc-keyboard-back-from-header)
nmap <buffer> \gl <Plug>(pandoc-keyboard-links-open)
nmap <buffer> \rb <Plug>(pandoc-keyboard-ref-backfrom)
nmap <buffer> \rg <Plug>(pandoc-keyboard-ref-goto)
nmap <buffer> \nr <Plug>(pandoc-keyboard-ref-insert)
vmap <buffer> \_ <Plug>(pandoc-keyboard-toggle-subscript)
nmap <buffer> \_ <Plug>(pandoc-keyboard-toggle-subscript)
vmap <buffer> \^ <Plug>(pandoc-keyboard-toggle-superscript)
nmap <buffer> \^ <Plug>(pandoc-keyboard-toggle-superscript)
vmap <buffer> \~~ <Plug>(pandoc-keyboard-toggle-strikeout)
nmap <buffer> \~~ <Plug>(pandoc-keyboard-toggle-strikeout)
vmap <buffer> \' <Plug>(pandoc-keyboard-toggle-verbatim)
nmap <buffer> \' <Plug>(pandoc-keyboard-toggle-verbatim)
vmap <buffer> \b <Plug>(pandoc-keyboard-toggle-strong)
nmap <buffer> \b <Plug>(pandoc-keyboard-toggle-strong)
vmap <buffer> \i <Plug>(pandoc-keyboard-toggle-emphasis)
nmap <buffer> \i <Plug>(pandoc-keyboard-toggle-emphasis)
nmap <buffer> \hcn <Plug>(pandoc-keyboard-nth-header-child)
nmap <buffer> \hcl <Plug>(pandoc-keyboard-last-header-child)
nmap <buffer> \hcf <Plug>(pandoc-keyboard-first-header-child)
nmap <buffer> \hsb <Plug>(pandoc-keyboard-prev-header-sibling)
nmap <buffer> \hsn <Plug>(pandoc-keyboard-next-header-sibling)
nmap <buffer> \hp <Plug>(pandoc-keyboard-cur-header-parent)
nmap <buffer> \hh <Plug>(pandoc-keyboard-cur-header)
nmap <buffer> \hb <Plug>(pandoc-keyboard-prev-header)
nmap <buffer> \hn <Plug>(pandoc-keyboard-next-header)
nmap <buffer> \hd <Plug>(pandoc-keyboard-remove-header)
nmap <buffer> \# <Plug>(pandoc-keyboard-apply-header)
nmap <buffer> \lcn <Plug>(pandoc-keyboard-nth-li-child)
nmap <buffer> \lcl <Plug>(pandoc-keyboard-last-li-child)
nmap <buffer> \lcf <Plug>(pandoc-keyboard-first-li-child)
nmap <buffer> \lsp <Plug>(pandoc-keyboard-prev-li-sibling)
nmap <buffer> \lsn <Plug>(pandoc-keyboard-next-li-sibling)
nmap <buffer> \llp <Plug>(pandoc-keyboard-cur-li-parent)
nmap <buffer> \ll <Plug>(pandoc-keyboard-cur-li)
nmap <buffer> \lp <Plug>(pandoc-keyboard-prev-li)
nmap <buffer> \ln <Plug>(pandoc-keyboard-next-li)
vmap <buffer> ]c <Plug>Markdown_MoveToCurHeader
nmap <buffer> ]c <Plug>Markdown_MoveToCurHeader
vmap <buffer> ]u <Plug>Markdown_MoveToParentHeader
nmap <buffer> ]u <Plug>Markdown_MoveToParentHeader
vmap <buffer> ][ <Plug>Markdown_MoveToNextSiblingHeader
nmap <buffer> ][ <Plug>(pandoc-keyboard-ff-sect-end)
vmap <buffer> ]] <Plug>Markdown_MoveToNextHeader
nmap <buffer> ]] <Plug>(pandoc-keyboard-ff-header)
omap <buffer> aPt :normal vaPl
vmap <buffer> <silent> aPt <Plug>(pandoc-keyboard-select-subscript-inclusive)
omap <buffer> aPu :normal vaPu
vmap <buffer> <silent> aPu <Plug>(pandoc-keyboard-select-superscript-inclusive)
omap <buffer> aPk :normal vaPk
vmap <buffer> <silent> aPk <Plug>(pandoc-keyboard-select-strikeout-inclusive)
omap <buffer> aPv :normal vaPv
vmap <buffer> <silent> aPv <Plug>(pandoc-keyboard-select-verbatim-inclusive)
omap <buffer> aPs :normal vaPs
vmap <buffer> <silent> aPs <Plug>(pandoc-keyboard-select-strong-inclusive)
omap <buffer> aPe :normal vaPe
vmap <buffer> <silent> aPe <Plug>(pandoc-keyboard-select-emphasis-inclusive)
omap <buffer> aS :normal VaS
vmap <buffer> aS <Plug>(pandoc-keyboard-select-section-inclusive)
nmap <buffer> gf <Plug>(pandoc-hypertext-open-local)
vmap <buffer> ge <Plug>Markdown_EditUrlUnderCursor
nmap <buffer> ge <Plug>Markdown_EditUrlUnderCursor
vmap <buffer> gx <Plug>Markdown_OpenUrlUnderCursor
nmap <buffer> gx <Plug>(pandoc-hypertext-open-system)
omap <buffer> iPt :normal viPl
vmap <buffer> <silent> iPt <Plug>(pandoc-keyboard-select-subscript-exclusive)
omap <buffer> iPu :normal viPu
vmap <buffer> <silent> iPu <Plug>(pandoc-keyboard-select-superscript-exclusive)
omap <buffer> iPk :normal viPk
vmap <buffer> <silent> iPk <Plug>(pandoc-keyboard-select-strikeout-exclusive)
omap <buffer> iPv :normal viPv
vmap <buffer> <silent> iPv <Plug>(pandoc-keyboard-select-verbatim-exclusive)
omap <buffer> iPs :normal viPs
vmap <buffer> <silent> iPs <Plug>(pandoc-keyboard-select-strong-exclusive)
omap <buffer> iPe :normal viPe
vmap <buffer> <silent> iPe <Plug>(pandoc-keyboard-select-emphasis-exclusive)
omap <buffer> iS :normal ViS
vmap <buffer> iS <Plug>(pandoc-keyboard-select-section-exclusive)
vnoremap <buffer> j gj
nnoremap <buffer> j gj
vnoremap <buffer> k gk
nnoremap <buffer> k gk
nnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-emphasis) :set opfunc=pandoc#keyboard#styles#ToggleEmphasisg@
nnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-strong) :set opfunc=pandoc#keyboard#styles#ToggleStrongg@
nnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-verbatim) :set opfunc=pandoc#keyboard#styles#ToggleVerbatimg@
nnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-strikeout) :set opfunc=pandoc#keyboard#styles#ToggleStrikeoutg@
nnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-superscript) :set opfunc=pandoc#keyboard#styles#ToggleSuperscriptg@
nnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-subscript) :set opfunc=pandoc#keyboard#styles#ToggleSubscriptg@
nnoremap <buffer> <silent> <Plug>(pandoc-hypertext-goto-id) :call pandoc#hypertext#GotoID()
nnoremap <buffer> <silent> <Plug>(pandoc-hypertext-open-system) :call pandoc#hypertext#OpenSystem()
nnoremap <buffer> <silent> <Plug>(pandoc-hypertext-open-local) :call pandoc#hypertext#OpenLocal()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-back-from-header) :call pandoc#hypertext#GotoSavedCursor()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-links-open) :call pandoc#hypertext#OpenLink()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-ref-backfrom) :call pandoc#keyboard#references#BACKFROM_Ref()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-ref-goto) :call pandoc#keyboard#references#GOTO_Ref()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-ref-insert) :call pandoc#keyboard#references#Insert_Ref()a
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-subscript-exclusive) :call pandoc#keyboard#styles#SelectSubscript("exclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-subscript-inclusive) :call pandoc#keyboard#styles#SelectSubscript("inclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-subscript) :call pandoc#keyboard#styles#ToggleSubscript(visualmode())
onoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-subscript) :set opfunc=pandoc#keyboard#styles#ToggleSubscriptg@
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-superscript-exclusive) :call pandoc#keyboard#styles#SelectSuperscript("exclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-superscript-inclusive) :call pandoc#keyboard#styles#SelectSuperscript("inclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-superscript) :call pandoc#keyboard#styles#ToggleSuperscript(visualmode())
onoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-superscript) :set opfunc=pandoc#keyboard#styles#ToggleSuperscriptg@
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-strikeout-exclusive) :call pandoc#keyboard#styles#SelectStrikeout("exclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-strikeout-inclusive) :call pandoc#keyboard#styles#SelectStrikeout("inclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-strikeout) :call pandoc#keyboard#styles#ToggleStrikeout(visualmode())
onoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-strikeout) :set opfunc=pandoc#keyboard#styles#ToggleStrikeoutg@
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-verbatim-exclusive) :call pandoc#keyboard#styles#SelectVerbatim("exclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-verbatim-inclusive) :call pandoc#keyboard#styles#SelectVerbatim("inclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-verbatim) :call pandoc#keyboard#styles#ToggleVerbatim(visualmode())
onoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-verbatim) :set opfunc=pandoc#keyboard#styles#ToggleVerbatimg@
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-strong-exclusive) :call pandoc#keyboard#styles#SelectStrong("exclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-strong-inclusive) :call pandoc#keyboard#styles#SelectStrong("inclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-strong) :call pandoc#keyboard#styles#ToggleStrong(visualmode())
onoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-strong) :set opfunc=pandoc#keyboard#styles#ToggleStrongg@
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-emphasis-exclusive) :call pandoc#keyboard#styles#SelectEmphasis("exclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-emphasis-inclusive) :call pandoc#keyboard#styles#SelectEmphasis("inclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-emphasis) :call pandoc#keyboard#styles#ToggleEmphasis(visualmode())
onoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-emphasis) :set opfunc=pandoc#keyboard#styles#ToggleEmphasisg@
noremap <buffer> <silent> <Plug>(pandoc-keyboard-nth-header-child) :call pandoc#keyboard#sections#GotoNthChildHeader(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-last-header-child) :call pandoc#keyboard#sections#LastChildHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-first-header-child) :call pandoc#keyboard#sections#FirstChildHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-prev-header-sibling) :call pandoc#keyboard#sections#PrevSiblingHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-next-header-sibling) :call pandoc#keyboard#sections#NextSiblingHeader()
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-section-exclusive) :call pandoc#keyboard#sections#SelectSection('exclusive')
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-section-inclusive) :call pandoc#keyboard#sections#SelectSection('inclusive')
noremap <buffer> <silent> <Plug>(pandoc-keyboard-cur-header-parent) :call pandoc#keyboard#sections#CurrentHeaderParent()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-cur-header) :call pandoc#keyboard#sections#CurrentHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-rw-sect-end) :call pandoc#keyboard#sections#PrevSectionEnd(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-ff-sect-end) :call pandoc#keyboard#sections#NextSectionEnd(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-rw-header) :call pandoc#keyboard#sections#BackwardHeader(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-ff-header) :call pandoc#keyboard#sections#ForwardHeader(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-prev-header) :call pandoc#keyboard#sections#PrevHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-next-header) :call pandoc#keyboard#sections#NextHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-remove-header) :call pandoc#keyboard#sections#RemoveHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-apply-header) :call pandoc#keyboard#sections#ApplyHeader(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-nth-li-child) :call pandoc#keyboard#lists#GotoNthListItemChild(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-last-li-child) :call pandoc#keyboard#lists#LastListItemChild()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-first-li-child) :call pandoc#keyboard#lists#FirstListItemChild()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-prev-li-sibling) :call pandoc#keyboard#lists#PrevListItemSibling()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-next-li-sibling) :call pandoc#keyboard#lists#NextListItemSibling()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-cur-li-parent) :call pandoc#keyboard#lists#CurrentListItemParent()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-cur-li) :call pandoc#keyboard#lists#CurrentListItem()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-prev-li) :call pandoc#keyboard#lists#PrevListItem()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-next-li) :call pandoc#keyboard#lists#NextListItem()
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s:<!--,m:\ \ \ \ ,e:-->,:|,n:>
setlocal commentstring=<!--%s-->
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal copyindent
setlocal cryptmethod=
setlocal cursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal diff
setlocal equalprg=pandoc\ -t\ markdown\ --reference-links\ --no-wrap\ 
setlocal errorformat=
setlocal expandtab
if &filetype != 'pandoc'
setlocal filetype=pandoc
endif
setlocal foldcolumn=2
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=1
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetMarkdownIndent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=48-57,a-z,A-Z,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal nomacmeta
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=pandoc#completion#Complete
setlocal path=
setlocal preserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal scrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'pandoc'
setlocal syntax=pandoc
endif
setlocal tabstop=8
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 306 - ((2 * winheight(0) + 26) / 53)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
306
normal! 01|
lcd ~/OneDrive\ -\ University\ of\ Exeter/exeter_teaching/be2024
wincmd w
exe 'vert 1resize ' . ((&columns * 84 + 84) / 169)
exe 'vert 2resize ' . ((&columns * 84 + 84) / 169)
tabedit ~/OneDrive\ -\ University\ of\ Exeter/exeter_teaching/be2024/tutorials/tutorials_all_bothmodules.md
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
vmap <buffer> [] <Plug>Markdown_MoveToPreviousSiblingHeader
nmap <buffer> [] <Plug>(pandoc-keyboard-rw-sect-end)
vmap <buffer> [[ <Plug>Markdown_MoveToPreviousHeader
nmap <buffer> [[ <Plug>(pandoc-keyboard-rw-header)
nmap <buffer> \xi <Plug>(pandoc-hypertext-goto-id)
nmap <buffer> \gb <Plug>(pandoc-keyboard-back-from-header)
nmap <buffer> \gl <Plug>(pandoc-keyboard-links-open)
nmap <buffer> \rb <Plug>(pandoc-keyboard-ref-backfrom)
nmap <buffer> \rg <Plug>(pandoc-keyboard-ref-goto)
nmap <buffer> \nr <Plug>(pandoc-keyboard-ref-insert)
vmap <buffer> \_ <Plug>(pandoc-keyboard-toggle-subscript)
nmap <buffer> \_ <Plug>(pandoc-keyboard-toggle-subscript)
vmap <buffer> \^ <Plug>(pandoc-keyboard-toggle-superscript)
nmap <buffer> \^ <Plug>(pandoc-keyboard-toggle-superscript)
vmap <buffer> \~~ <Plug>(pandoc-keyboard-toggle-strikeout)
nmap <buffer> \~~ <Plug>(pandoc-keyboard-toggle-strikeout)
vmap <buffer> \' <Plug>(pandoc-keyboard-toggle-verbatim)
nmap <buffer> \' <Plug>(pandoc-keyboard-toggle-verbatim)
vmap <buffer> \b <Plug>(pandoc-keyboard-toggle-strong)
nmap <buffer> \b <Plug>(pandoc-keyboard-toggle-strong)
vmap <buffer> \i <Plug>(pandoc-keyboard-toggle-emphasis)
nmap <buffer> \i <Plug>(pandoc-keyboard-toggle-emphasis)
nmap <buffer> \hcn <Plug>(pandoc-keyboard-nth-header-child)
nmap <buffer> \hcl <Plug>(pandoc-keyboard-last-header-child)
nmap <buffer> \hcf <Plug>(pandoc-keyboard-first-header-child)
nmap <buffer> \hsb <Plug>(pandoc-keyboard-prev-header-sibling)
nmap <buffer> \hsn <Plug>(pandoc-keyboard-next-header-sibling)
nmap <buffer> \hp <Plug>(pandoc-keyboard-cur-header-parent)
nmap <buffer> \hh <Plug>(pandoc-keyboard-cur-header)
nmap <buffer> \hb <Plug>(pandoc-keyboard-prev-header)
nmap <buffer> \hn <Plug>(pandoc-keyboard-next-header)
nmap <buffer> \hd <Plug>(pandoc-keyboard-remove-header)
nmap <buffer> \# <Plug>(pandoc-keyboard-apply-header)
nmap <buffer> \lcn <Plug>(pandoc-keyboard-nth-li-child)
nmap <buffer> \lcl <Plug>(pandoc-keyboard-last-li-child)
nmap <buffer> \lcf <Plug>(pandoc-keyboard-first-li-child)
nmap <buffer> \lsp <Plug>(pandoc-keyboard-prev-li-sibling)
nmap <buffer> \lsn <Plug>(pandoc-keyboard-next-li-sibling)
nmap <buffer> \llp <Plug>(pandoc-keyboard-cur-li-parent)
nmap <buffer> \ll <Plug>(pandoc-keyboard-cur-li)
nmap <buffer> \lp <Plug>(pandoc-keyboard-prev-li)
nmap <buffer> \ln <Plug>(pandoc-keyboard-next-li)
vmap <buffer> ]c <Plug>Markdown_MoveToCurHeader
nmap <buffer> ]c <Plug>Markdown_MoveToCurHeader
vmap <buffer> ]u <Plug>Markdown_MoveToParentHeader
nmap <buffer> ]u <Plug>Markdown_MoveToParentHeader
vmap <buffer> ][ <Plug>Markdown_MoveToNextSiblingHeader
nmap <buffer> ][ <Plug>(pandoc-keyboard-ff-sect-end)
vmap <buffer> ]] <Plug>Markdown_MoveToNextHeader
nmap <buffer> ]] <Plug>(pandoc-keyboard-ff-header)
omap <buffer> aPt :normal vaPl
vmap <buffer> <silent> aPt <Plug>(pandoc-keyboard-select-subscript-inclusive)
omap <buffer> aPu :normal vaPu
vmap <buffer> <silent> aPu <Plug>(pandoc-keyboard-select-superscript-inclusive)
omap <buffer> aPk :normal vaPk
vmap <buffer> <silent> aPk <Plug>(pandoc-keyboard-select-strikeout-inclusive)
omap <buffer> aPv :normal vaPv
vmap <buffer> <silent> aPv <Plug>(pandoc-keyboard-select-verbatim-inclusive)
omap <buffer> aPs :normal vaPs
vmap <buffer> <silent> aPs <Plug>(pandoc-keyboard-select-strong-inclusive)
omap <buffer> aPe :normal vaPe
vmap <buffer> <silent> aPe <Plug>(pandoc-keyboard-select-emphasis-inclusive)
omap <buffer> aS :normal VaS
vmap <buffer> aS <Plug>(pandoc-keyboard-select-section-inclusive)
nmap <buffer> gf <Plug>(pandoc-hypertext-open-local)
vmap <buffer> ge <Plug>Markdown_EditUrlUnderCursor
nmap <buffer> ge <Plug>Markdown_EditUrlUnderCursor
vmap <buffer> gx <Plug>Markdown_OpenUrlUnderCursor
nmap <buffer> gx <Plug>(pandoc-hypertext-open-system)
omap <buffer> iPt :normal viPl
vmap <buffer> <silent> iPt <Plug>(pandoc-keyboard-select-subscript-exclusive)
omap <buffer> iPu :normal viPu
vmap <buffer> <silent> iPu <Plug>(pandoc-keyboard-select-superscript-exclusive)
omap <buffer> iPk :normal viPk
vmap <buffer> <silent> iPk <Plug>(pandoc-keyboard-select-strikeout-exclusive)
omap <buffer> iPv :normal viPv
vmap <buffer> <silent> iPv <Plug>(pandoc-keyboard-select-verbatim-exclusive)
omap <buffer> iPs :normal viPs
vmap <buffer> <silent> iPs <Plug>(pandoc-keyboard-select-strong-exclusive)
omap <buffer> iPe :normal viPe
vmap <buffer> <silent> iPe <Plug>(pandoc-keyboard-select-emphasis-exclusive)
omap <buffer> iS :normal ViS
vmap <buffer> iS <Plug>(pandoc-keyboard-select-section-exclusive)
vnoremap <buffer> j gj
nnoremap <buffer> j gj
vnoremap <buffer> k gk
nnoremap <buffer> k gk
nnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-emphasis) :set opfunc=pandoc#keyboard#styles#ToggleEmphasisg@
nnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-strong) :set opfunc=pandoc#keyboard#styles#ToggleStrongg@
nnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-verbatim) :set opfunc=pandoc#keyboard#styles#ToggleVerbatimg@
nnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-strikeout) :set opfunc=pandoc#keyboard#styles#ToggleStrikeoutg@
nnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-superscript) :set opfunc=pandoc#keyboard#styles#ToggleSuperscriptg@
nnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-subscript) :set opfunc=pandoc#keyboard#styles#ToggleSubscriptg@
nnoremap <buffer> <silent> <Plug>(pandoc-hypertext-goto-id) :call pandoc#hypertext#GotoID()
nnoremap <buffer> <silent> <Plug>(pandoc-hypertext-open-system) :call pandoc#hypertext#OpenSystem()
nnoremap <buffer> <silent> <Plug>(pandoc-hypertext-open-local) :call pandoc#hypertext#OpenLocal()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-back-from-header) :call pandoc#hypertext#GotoSavedCursor()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-links-open) :call pandoc#hypertext#OpenLink()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-ref-backfrom) :call pandoc#keyboard#references#BACKFROM_Ref()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-ref-goto) :call pandoc#keyboard#references#GOTO_Ref()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-ref-insert) :call pandoc#keyboard#references#Insert_Ref()a
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-subscript-exclusive) :call pandoc#keyboard#styles#SelectSubscript("exclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-subscript-inclusive) :call pandoc#keyboard#styles#SelectSubscript("inclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-subscript) :call pandoc#keyboard#styles#ToggleSubscript(visualmode())
onoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-subscript) :set opfunc=pandoc#keyboard#styles#ToggleSubscriptg@
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-superscript-exclusive) :call pandoc#keyboard#styles#SelectSuperscript("exclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-superscript-inclusive) :call pandoc#keyboard#styles#SelectSuperscript("inclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-superscript) :call pandoc#keyboard#styles#ToggleSuperscript(visualmode())
onoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-superscript) :set opfunc=pandoc#keyboard#styles#ToggleSuperscriptg@
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-strikeout-exclusive) :call pandoc#keyboard#styles#SelectStrikeout("exclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-strikeout-inclusive) :call pandoc#keyboard#styles#SelectStrikeout("inclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-strikeout) :call pandoc#keyboard#styles#ToggleStrikeout(visualmode())
onoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-strikeout) :set opfunc=pandoc#keyboard#styles#ToggleStrikeoutg@
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-verbatim-exclusive) :call pandoc#keyboard#styles#SelectVerbatim("exclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-verbatim-inclusive) :call pandoc#keyboard#styles#SelectVerbatim("inclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-verbatim) :call pandoc#keyboard#styles#ToggleVerbatim(visualmode())
onoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-verbatim) :set opfunc=pandoc#keyboard#styles#ToggleVerbatimg@
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-strong-exclusive) :call pandoc#keyboard#styles#SelectStrong("exclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-strong-inclusive) :call pandoc#keyboard#styles#SelectStrong("inclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-strong) :call pandoc#keyboard#styles#ToggleStrong(visualmode())
onoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-strong) :set opfunc=pandoc#keyboard#styles#ToggleStrongg@
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-emphasis-exclusive) :call pandoc#keyboard#styles#SelectEmphasis("exclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-emphasis-inclusive) :call pandoc#keyboard#styles#SelectEmphasis("inclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-emphasis) :call pandoc#keyboard#styles#ToggleEmphasis(visualmode())
onoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-emphasis) :set opfunc=pandoc#keyboard#styles#ToggleEmphasisg@
noremap <buffer> <silent> <Plug>(pandoc-keyboard-nth-header-child) :call pandoc#keyboard#sections#GotoNthChildHeader(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-last-header-child) :call pandoc#keyboard#sections#LastChildHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-first-header-child) :call pandoc#keyboard#sections#FirstChildHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-prev-header-sibling) :call pandoc#keyboard#sections#PrevSiblingHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-next-header-sibling) :call pandoc#keyboard#sections#NextSiblingHeader()
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-section-exclusive) :call pandoc#keyboard#sections#SelectSection('exclusive')
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-section-inclusive) :call pandoc#keyboard#sections#SelectSection('inclusive')
noremap <buffer> <silent> <Plug>(pandoc-keyboard-cur-header-parent) :call pandoc#keyboard#sections#CurrentHeaderParent()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-cur-header) :call pandoc#keyboard#sections#CurrentHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-rw-sect-end) :call pandoc#keyboard#sections#PrevSectionEnd(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-ff-sect-end) :call pandoc#keyboard#sections#NextSectionEnd(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-rw-header) :call pandoc#keyboard#sections#BackwardHeader(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-ff-header) :call pandoc#keyboard#sections#ForwardHeader(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-prev-header) :call pandoc#keyboard#sections#PrevHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-next-header) :call pandoc#keyboard#sections#NextHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-remove-header) :call pandoc#keyboard#sections#RemoveHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-apply-header) :call pandoc#keyboard#sections#ApplyHeader(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-nth-li-child) :call pandoc#keyboard#lists#GotoNthListItemChild(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-last-li-child) :call pandoc#keyboard#lists#LastListItemChild()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-first-li-child) :call pandoc#keyboard#lists#FirstListItemChild()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-prev-li-sibling) :call pandoc#keyboard#lists#PrevListItemSibling()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-next-li-sibling) :call pandoc#keyboard#lists#NextListItemSibling()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-cur-li-parent) :call pandoc#keyboard#lists#CurrentListItemParent()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-cur-li) :call pandoc#keyboard#lists#CurrentListItem()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-prev-li) :call pandoc#keyboard#lists#PrevListItem()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-next-li) :call pandoc#keyboard#lists#NextListItem()
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s:<!--,m:\ \ \ \ ,e:-->,:|,n:>
setlocal commentstring=<!--%s-->
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=2
setlocal completefunc=
setlocal copyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=pandoc\ -t\ markdown\ --reference-links\ --no-wrap\ 
setlocal errorformat=
setlocal expandtab
if &filetype != 'pandoc'
setlocal filetype=pandoc
endif
setlocal foldcolumn=1
setlocal foldenable
setlocal foldexpr=pandoc#folding#FoldExpr()
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=expr
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=pandoc#folding#FoldText()
setlocal formatexpr=
setlocal formatoptions=1
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetMarkdownIndent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=48-57,a-z,A-Z,192-255
setlocal keywordprg=
setlocal linebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal nomacmeta
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=pandoc#completion#Complete
setlocal path=
setlocal preserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal spell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'pandoc'
setlocal syntax=pandoc
endif
setlocal tabstop=8
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 1 - ((0 * winheight(0) + 27) / 55)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/OneDrive\ -\ University\ of\ Exeter/exeter_teaching/be2024/tutorials
tabedit ~/OneDrive\ -\ University\ of\ Exeter/exeter_teaching/be2024/compileslidesnotes_fuller.sh
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=#%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal copyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'sh'
setlocal filetype=sh
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetShIndent()
setlocal indentkeys=0{,0},!^F,o,O,e,0=then,0=do,0=else,0=elif,0=fi,0=esac,0=done,),0=;;,0=;&,0=fin,0=fil,0=fip,0=fir,0=fix
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,.
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal nomacmeta
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal preserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'sh'
setlocal syntax=sh
endif
setlocal tabstop=8
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 27) / 55)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/OneDrive\ -\ University\ of\ Exeter/exeter_teaching/be2024/tutorials
tabedit ~/OneDrive\ -\ University\ of\ Exeter/exeter_teaching/be2024/compiletutorials.sh
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=#%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal copyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'sh'
setlocal filetype=sh
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetShIndent()
setlocal indentkeys=0{,0},!^F,o,O,e,0=then,0=do,0=else,0=elif,0=fi,0=esac,0=done,),0=;;,0=;&,0=fin,0=fil,0=fip,0=fir,0=fix
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,.
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal nomacmeta
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal preserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'sh'
setlocal syntax=sh
endif
setlocal tabstop=8
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 13 - ((12 * winheight(0) + 27) / 55)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
13
normal! 0
lcd ~/OneDrive\ -\ University\ of\ Exeter/exeter_teaching/be2024/tutorials
tabedit ~/OneDrive\ -\ University\ of\ Exeter/exeter_teaching/be2024/musingsbothlectures.md
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
vmap <buffer> [] <Plug>Markdown_MoveToPreviousSiblingHeader
nmap <buffer> [] <Plug>(pandoc-keyboard-rw-sect-end)
vmap <buffer> [[ <Plug>Markdown_MoveToPreviousHeader
nmap <buffer> [[ <Plug>(pandoc-keyboard-rw-header)
nmap <buffer> \xi <Plug>(pandoc-hypertext-goto-id)
nmap <buffer> \gb <Plug>(pandoc-keyboard-back-from-header)
nmap <buffer> \gl <Plug>(pandoc-keyboard-links-open)
nmap <buffer> \rb <Plug>(pandoc-keyboard-ref-backfrom)
nmap <buffer> \rg <Plug>(pandoc-keyboard-ref-goto)
nmap <buffer> \nr <Plug>(pandoc-keyboard-ref-insert)
vmap <buffer> \_ <Plug>(pandoc-keyboard-toggle-subscript)
nmap <buffer> \_ <Plug>(pandoc-keyboard-toggle-subscript)
vmap <buffer> \^ <Plug>(pandoc-keyboard-toggle-superscript)
nmap <buffer> \^ <Plug>(pandoc-keyboard-toggle-superscript)
vmap <buffer> \~~ <Plug>(pandoc-keyboard-toggle-strikeout)
nmap <buffer> \~~ <Plug>(pandoc-keyboard-toggle-strikeout)
vmap <buffer> \' <Plug>(pandoc-keyboard-toggle-verbatim)
nmap <buffer> \' <Plug>(pandoc-keyboard-toggle-verbatim)
vmap <buffer> \b <Plug>(pandoc-keyboard-toggle-strong)
nmap <buffer> \b <Plug>(pandoc-keyboard-toggle-strong)
vmap <buffer> \i <Plug>(pandoc-keyboard-toggle-emphasis)
nmap <buffer> \i <Plug>(pandoc-keyboard-toggle-emphasis)
nmap <buffer> \hcn <Plug>(pandoc-keyboard-nth-header-child)
nmap <buffer> \hcl <Plug>(pandoc-keyboard-last-header-child)
nmap <buffer> \hcf <Plug>(pandoc-keyboard-first-header-child)
nmap <buffer> \hsb <Plug>(pandoc-keyboard-prev-header-sibling)
nmap <buffer> \hsn <Plug>(pandoc-keyboard-next-header-sibling)
nmap <buffer> \hp <Plug>(pandoc-keyboard-cur-header-parent)
nmap <buffer> \hh <Plug>(pandoc-keyboard-cur-header)
nmap <buffer> \hb <Plug>(pandoc-keyboard-prev-header)
nmap <buffer> \hn <Plug>(pandoc-keyboard-next-header)
nmap <buffer> \hd <Plug>(pandoc-keyboard-remove-header)
nmap <buffer> \# <Plug>(pandoc-keyboard-apply-header)
nmap <buffer> \lcn <Plug>(pandoc-keyboard-nth-li-child)
nmap <buffer> \lcl <Plug>(pandoc-keyboard-last-li-child)
nmap <buffer> \lcf <Plug>(pandoc-keyboard-first-li-child)
nmap <buffer> \lsp <Plug>(pandoc-keyboard-prev-li-sibling)
nmap <buffer> \lsn <Plug>(pandoc-keyboard-next-li-sibling)
nmap <buffer> \llp <Plug>(pandoc-keyboard-cur-li-parent)
nmap <buffer> \ll <Plug>(pandoc-keyboard-cur-li)
nmap <buffer> \lp <Plug>(pandoc-keyboard-prev-li)
nmap <buffer> \ln <Plug>(pandoc-keyboard-next-li)
vmap <buffer> ]c <Plug>Markdown_MoveToCurHeader
nmap <buffer> ]c <Plug>Markdown_MoveToCurHeader
vmap <buffer> ]u <Plug>Markdown_MoveToParentHeader
nmap <buffer> ]u <Plug>Markdown_MoveToParentHeader
vmap <buffer> ][ <Plug>Markdown_MoveToNextSiblingHeader
nmap <buffer> ][ <Plug>(pandoc-keyboard-ff-sect-end)
vmap <buffer> ]] <Plug>Markdown_MoveToNextHeader
nmap <buffer> ]] <Plug>(pandoc-keyboard-ff-header)
omap <buffer> aPt :normal vaPl
vmap <buffer> <silent> aPt <Plug>(pandoc-keyboard-select-subscript-inclusive)
omap <buffer> aPu :normal vaPu
vmap <buffer> <silent> aPu <Plug>(pandoc-keyboard-select-superscript-inclusive)
omap <buffer> aPk :normal vaPk
vmap <buffer> <silent> aPk <Plug>(pandoc-keyboard-select-strikeout-inclusive)
omap <buffer> aPv :normal vaPv
vmap <buffer> <silent> aPv <Plug>(pandoc-keyboard-select-verbatim-inclusive)
omap <buffer> aPs :normal vaPs
vmap <buffer> <silent> aPs <Plug>(pandoc-keyboard-select-strong-inclusive)
omap <buffer> aPe :normal vaPe
vmap <buffer> <silent> aPe <Plug>(pandoc-keyboard-select-emphasis-inclusive)
omap <buffer> aS :normal VaS
vmap <buffer> aS <Plug>(pandoc-keyboard-select-section-inclusive)
nmap <buffer> gf <Plug>(pandoc-hypertext-open-local)
vmap <buffer> ge <Plug>Markdown_EditUrlUnderCursor
nmap <buffer> ge <Plug>Markdown_EditUrlUnderCursor
vmap <buffer> gx <Plug>Markdown_OpenUrlUnderCursor
nmap <buffer> gx <Plug>(pandoc-hypertext-open-system)
omap <buffer> iPt :normal viPl
vmap <buffer> <silent> iPt <Plug>(pandoc-keyboard-select-subscript-exclusive)
omap <buffer> iPu :normal viPu
vmap <buffer> <silent> iPu <Plug>(pandoc-keyboard-select-superscript-exclusive)
omap <buffer> iPk :normal viPk
vmap <buffer> <silent> iPk <Plug>(pandoc-keyboard-select-strikeout-exclusive)
omap <buffer> iPv :normal viPv
vmap <buffer> <silent> iPv <Plug>(pandoc-keyboard-select-verbatim-exclusive)
omap <buffer> iPs :normal viPs
vmap <buffer> <silent> iPs <Plug>(pandoc-keyboard-select-strong-exclusive)
omap <buffer> iPe :normal viPe
vmap <buffer> <silent> iPe <Plug>(pandoc-keyboard-select-emphasis-exclusive)
omap <buffer> iS :normal ViS
vmap <buffer> iS <Plug>(pandoc-keyboard-select-section-exclusive)
vnoremap <buffer> j gj
nnoremap <buffer> j gj
vnoremap <buffer> k gk
nnoremap <buffer> k gk
nnoremap <buffer> <silent> <Plug>(pandoc-hypertext-goto-id) :call pandoc#hypertext#GotoID()
nnoremap <buffer> <silent> <Plug>(pandoc-hypertext-open-system) :call pandoc#hypertext#OpenSystem()
nnoremap <buffer> <silent> <Plug>(pandoc-hypertext-open-local) :call pandoc#hypertext#OpenLocal()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-back-from-header) :call pandoc#hypertext#GotoSavedCursor()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-links-open) :call pandoc#hypertext#OpenLink()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-ref-backfrom) :call pandoc#keyboard#references#BACKFROM_Ref()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-ref-goto) :call pandoc#keyboard#references#GOTO_Ref()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-ref-insert) :call pandoc#keyboard#references#Insert_Ref()a
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-subscript-exclusive) :call pandoc#keyboard#styles#SelectSubscript("exclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-subscript-inclusive) :call pandoc#keyboard#styles#SelectSubscript("inclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-subscript) :call pandoc#keyboard#styles#ToggleSubscript(visualmode())
nnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-subscript) :set opfunc=pandoc#keyboard#styles#ToggleSubscriptg@
onoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-subscript) :set opfunc=pandoc#keyboard#styles#ToggleSubscriptg@
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-superscript-exclusive) :call pandoc#keyboard#styles#SelectSuperscript("exclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-superscript-inclusive) :call pandoc#keyboard#styles#SelectSuperscript("inclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-superscript) :call pandoc#keyboard#styles#ToggleSuperscript(visualmode())
nnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-superscript) :set opfunc=pandoc#keyboard#styles#ToggleSuperscriptg@
onoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-superscript) :set opfunc=pandoc#keyboard#styles#ToggleSuperscriptg@
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-strikeout-exclusive) :call pandoc#keyboard#styles#SelectStrikeout("exclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-strikeout-inclusive) :call pandoc#keyboard#styles#SelectStrikeout("inclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-strikeout) :call pandoc#keyboard#styles#ToggleStrikeout(visualmode())
nnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-strikeout) :set opfunc=pandoc#keyboard#styles#ToggleStrikeoutg@
onoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-strikeout) :set opfunc=pandoc#keyboard#styles#ToggleStrikeoutg@
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-verbatim-exclusive) :call pandoc#keyboard#styles#SelectVerbatim("exclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-verbatim-inclusive) :call pandoc#keyboard#styles#SelectVerbatim("inclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-verbatim) :call pandoc#keyboard#styles#ToggleVerbatim(visualmode())
nnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-verbatim) :set opfunc=pandoc#keyboard#styles#ToggleVerbatimg@
onoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-verbatim) :set opfunc=pandoc#keyboard#styles#ToggleVerbatimg@
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-strong-exclusive) :call pandoc#keyboard#styles#SelectStrong("exclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-strong-inclusive) :call pandoc#keyboard#styles#SelectStrong("inclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-strong) :call pandoc#keyboard#styles#ToggleStrong(visualmode())
nnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-strong) :set opfunc=pandoc#keyboard#styles#ToggleStrongg@
onoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-strong) :set opfunc=pandoc#keyboard#styles#ToggleStrongg@
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-emphasis-exclusive) :call pandoc#keyboard#styles#SelectEmphasis("exclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-emphasis-inclusive) :call pandoc#keyboard#styles#SelectEmphasis("inclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-emphasis) :call pandoc#keyboard#styles#ToggleEmphasis(visualmode())
nnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-emphasis) :set opfunc=pandoc#keyboard#styles#ToggleEmphasisg@
onoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-emphasis) :set opfunc=pandoc#keyboard#styles#ToggleEmphasisg@
noremap <buffer> <silent> <Plug>(pandoc-keyboard-nth-header-child) :call pandoc#keyboard#sections#GotoNthChildHeader(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-last-header-child) :call pandoc#keyboard#sections#LastChildHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-first-header-child) :call pandoc#keyboard#sections#FirstChildHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-prev-header-sibling) :call pandoc#keyboard#sections#PrevSiblingHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-next-header-sibling) :call pandoc#keyboard#sections#NextSiblingHeader()
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-section-exclusive) :call pandoc#keyboard#sections#SelectSection('exclusive')
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-section-inclusive) :call pandoc#keyboard#sections#SelectSection('inclusive')
noremap <buffer> <silent> <Plug>(pandoc-keyboard-cur-header-parent) :call pandoc#keyboard#sections#CurrentHeaderParent()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-cur-header) :call pandoc#keyboard#sections#CurrentHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-rw-sect-end) :call pandoc#keyboard#sections#PrevSectionEnd(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-ff-sect-end) :call pandoc#keyboard#sections#NextSectionEnd(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-rw-header) :call pandoc#keyboard#sections#BackwardHeader(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-ff-header) :call pandoc#keyboard#sections#ForwardHeader(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-prev-header) :call pandoc#keyboard#sections#PrevHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-next-header) :call pandoc#keyboard#sections#NextHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-remove-header) :call pandoc#keyboard#sections#RemoveHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-apply-header) :call pandoc#keyboard#sections#ApplyHeader(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-nth-li-child) :call pandoc#keyboard#lists#GotoNthListItemChild(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-last-li-child) :call pandoc#keyboard#lists#LastListItemChild()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-first-li-child) :call pandoc#keyboard#lists#FirstListItemChild()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-prev-li-sibling) :call pandoc#keyboard#lists#PrevListItemSibling()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-next-li-sibling) :call pandoc#keyboard#lists#NextListItemSibling()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-cur-li-parent) :call pandoc#keyboard#lists#CurrentListItemParent()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-cur-li) :call pandoc#keyboard#lists#CurrentListItem()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-prev-li) :call pandoc#keyboard#lists#PrevListItem()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-next-li) :call pandoc#keyboard#lists#NextListItem()
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s:<!--,m:\ \ \ \ ,e:-->,:|,n:>
setlocal commentstring=<!--%s-->
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=2
setlocal completefunc=
setlocal copyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=pandoc\ -t\ markdown\ --reference-links\ --no-wrap\ 
setlocal errorformat=
setlocal expandtab
if &filetype != 'pandoc'
setlocal filetype=pandoc
endif
setlocal foldcolumn=1
setlocal foldenable
setlocal foldexpr=pandoc#folding#FoldExpr()
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=expr
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=pandoc#folding#FoldText()
setlocal formatexpr=
setlocal formatoptions=1
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetMarkdownIndent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=48-57,a-z,A-Z,192-255
setlocal keywordprg=
setlocal linebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal nomacmeta
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=pandoc#completion#Complete
setlocal path=
setlocal preserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal spell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'pandoc'
setlocal syntax=pandoc
endif
setlocal tabstop=8
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 20 - ((19 * winheight(0) + 27) / 54)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
20
normal! 0
lcd ~/OneDrive\ -\ University\ of\ Exeter/exeter_teaching/be2024
tabnext 2
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
