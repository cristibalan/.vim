" disable some built in plugins to avoid turning into a kitchen sink
let g:loaded_matchparen = 1      " disable matching of braces when moving around, it's too slow
let loaded_gzip = 1              " disable editing of compressed files
let g:loaded_tarPlugin = 1       " disable browsing of tar files
let g:loaded_zipPlugin = 1       " disable browsing of zip files
let g:loaded_getscriptPlugin = 1 " disable GLVS plugin
let g:loaded_vimballPlugin = 1   " disable vimball plugin

"""""""""" netrw
let g:netrw_browsex_viewer="open"
let g:netrw_home=expand("~/.vim")
let g:netrw_keepdir=1

"""""""""" fuzzyfinder (fuf) & fuf-fizzy
let g:fuf_modes = ['fizzyfile', 'fizzydir', 'buffer', 'tag']

"""""""""" NERDCommenter settings
map <space><space> <plug>NERDCommenterToggle
let g:NERDRemoveExtraSpaces=1
let g:NERDSpaceDelims=1
let g:NERDMenuMode=0
let g:NERDCreateDefaultMappings=0

"""""""""" TOhtml
let use_xhtml = 1
let html_number_lines = 0
let html_ignore_folding = 1
let html_use_css = 1

"""""""""" allml
" let g:allml_global_maps = 1
