"%Transform boox reader comments to markdown


"can execute with source booxtomd.vim
"source "/Users/yosemite/Dropbox/Computer stuff & tutorials/vimstuff/booxtomd.vim"
".. 'argument required?'


"Delete duplicates except blank linkes
":DeleteDuplicateLinesIgnoring [-*]

":DeleteDuplicateLinesIgnoring  [^$\s\+] "does this work or do we need to 'call' this


"remove loads of unicode and crap line breaks (need to add again?)
execute "%s/[^[:print:]]//g"

"replace 4+ dashes with a single space
:%s/-\{4,}/ /

:%s//\r/g

"remove 2+ blank lines in a row
:%s/^\n\{3,}/\r\r/

"replace other weird characters with a dash
:%s/[^\x00-\x7F]/-/


"Join lines up to blank space not beginning with 'Page'


"all lines not beginning 'page' are quoted

"remove 'page' from my comments, italicise and/or bullet-point these
"
"execute "normal! gg/foo\<cr>dd"

"Make "Page X" just "(p x)":
"...with following text (put on its own line, give next line a "-")
%s/^Page \([0-9]\{0,3}\) /(p\1)\r-/

"..if alone
%s/^Page \([0-9]\{0,3}\)/(p\1)/

"Remove repeated lines
%s/^\(.*\)\(\n\1\)\+$/\1/

