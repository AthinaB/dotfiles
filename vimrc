execute pathogen#infect()
execute pathogen#helptags()
syntax on
filetype plugin indent on

"displays the number of lines"
set number

"displays full path in statusbar"
set statusline+=%F

"sets the statusbar with full path always visible"
set laststatus=2

"activate mustache abbreviations"
let g:mustache_abbreviations = 1

autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype html setlocal ts=4 sts=4 sw=4
