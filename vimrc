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

"displays every tab char with |____"
set  list lcs=tab:\|\_

"activate mustache abbreviations"
let g:mustache_abbreviations = 1

"set starting directoty"
"'a' - like 'c', but only applies when the current working directory outside"
"of CtrlP isn't a direct ancestor of the directory of the current file."
"default value: let g:ctrlp_working_path_mode = 'ra'"
let g:ctrlp_working_path_mode = 'a'


autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype html setlocal ts=4 sts=4 sw=4
autocmd Filetype html.handlebars setlocal ts=4 sts=4 sw=4
autocmd Filetype scss setlocal ts=4 sts=4 sw=4
autocmd Filetype gitcommit setlocal spell
