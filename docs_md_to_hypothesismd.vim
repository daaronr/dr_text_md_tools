"% Post 'Docs to Markdown' steps to get combined Unjournal content ready for hypothes.is and Sciety
"% See: https://docs.google.com/document/d/11daGp9fnWN4Vx03-_ARoDgbvczlAAGu89OEMfOOiWp0/edit#

:s/>>>+//g

"remove excessive line breaks

:%s/\n\{3,}/\r\r/g

"underscores to asterisks for italics
"Note -- this also removes underscores within URLS -- need to do manually (accept/reject) for now
:%s/\(_\)\(.\{-}\)\(_\)/\*\2\*/gc

"Fix spacing around URLS (sometimes these came out as  `text[ hyperlinked text](https://blah).` which doesn't format well
"Find these with `/\a\[` or   `/\d\[`

"fix blank space shift after italics -- couldn't get that to work

"Switch list indicators from asterisks to dashes, e.g. * xxx -> - xxx

" latex math to parentheses surrounds for hypothes.is
" :%s/\$\([^$]*\)\$/\\(\1\\)/gc

" Formatted quotes to ascii ones, similar for ellipses etc

