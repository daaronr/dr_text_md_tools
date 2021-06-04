"%Transform boox reader comments to markdown; with 2020 export


"can execute with source booxtomd.vim
"source "/Users/yosemite/Dropbox/Computer stuff & tutorials/vimstuff/booxtomd2.vim"
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



"remove time tags
%s/\n^time.*\n//


"remove content tag
:%s/【content】//

"Fix 'note' tag
:%s/【note】/\rNote: /

"remove empty note tags
:%s/^Note: \n//


"replace other weird characters with a dash
:%s/[^\x00-\x7F]/-/


"Double comma to quote
:%s/ \,\, / '/
:%s/\,\,/'/

"Join lines up to blank space
%s/\(\S\)\n\(\S\)/\1 \2/

"all lines not beginning 'Note' are quoted
%s/^\(\S\)\(ote:\)\@!/\> \1/gc

"remove 'page' from my comments, italicise and/or bullet-point these
"
"execute "normal! gg/foo\<cr>dd"

"Remove repeated lines
%s/^\(.*\)\(\n\1\)\+$/\1/

%s/-Annotations.//
%s/.Original Text.//

