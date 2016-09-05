execute pathogen#infect()
execute pathogen#helptags()
syntax on
filetype plugin indent on

"displays the number of lines"
set number

"displays every tab char with |____"
set  list lcs=tab:\|\_

"activate mustache abbreviations"
let g:mustache_abbreviations = 1

"set starting directoty"
"'a' - like 'c', but only applies when the current working directory outside"
"of CtrlP isn't a direct ancestor of the directory of the current file."
"default value: let g:ctrlp_working_path_mode = 'ra'"
let g:ctrlp_working_path_mode = 'a'

autocmd Filetype html.handlebars setlocal ts=4 sts=4 sw=4 expandtab
autocmd Filetype scss setlocal ts=4 sts=4 sw=4 expandtab
autocmd Filetype gitcommit setlocal spell
autocmd BufRead,BufNewFile *.md setlocal spell

"always show status line"
set laststatus=2

"format status line"
set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
"              | | | | |  |   |      |  |     |    |
"              | | | | |  |   |      |  |     |    + current column
"              | | | | |  |   |      |  |     +-- current line
"              | | | | |  |   |      |  +-- current % into file
"              | | | | |  |   |      +-- current syntax in square brackets
"              | | | | |  |   +-- current fileformat
"              | | | | |  +-- number of lines
"              | | | | +-- preview flag in square brackets
"              | | | +-- help flag in square brackets
"              | | +-- readonly flag in square brackets
"              | +-- rodified flag in square brackets
"              +-- full path to file in the buffer

"map greek letters to english for normal mode"
set langmap=ΑA,ΒB,ΨC,ΔD,ΕE,ΦF,ΓG,ΗH,ΙI,ΞJ,ΚK,ΛL,ΜM,ΝN,ΟO,ΠP,QQ,ΡR
set langmap+=ΣS,ΤT,ΘU,ΩV,WW,ΧX,ΥY,ΖZ,αa,βb,ψc,δd,εe,φf,γg,ηh,ιi,ξj
set langmap+=κk,λl,μm,νn,οo,πp,qq,ρr,σs,τt,θu,ωv,ςw,χx,υy,ζz
