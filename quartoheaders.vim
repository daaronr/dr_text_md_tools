"%Replace rmd headers with quarto headersTransform boox reader comments to markdown; with 2020 export


"can execute with source booxtomd.vim
"source "/Users/yosemite/githubs/dr_text_md_tools/quartoheaders.vim"

"

"remove loads of unicode and crap line breaks (need to add again?)
execute "%s/[^[:print:]]//g"

"replace 4+ dashes with a single space
:%s/-\{4,}/ /


