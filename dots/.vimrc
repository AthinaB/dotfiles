execute pathogen#infect()
execute pathogen#helptags()
syntax on
filetype plugin on
"automatic indentation as you type"
filetype plugin indent on
set ts=2 sts=2 sw=2 expandtab

set conceallevel=1
let g:indentLine_conceallevel=1

"colors settings"
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

"color current line"
set cursorline
hi CursorLine   cterm=NONE ctermbg=black

"search: case insensitive"
set ignorecase

"search:  if a pattern contains an uppercase letter, it is case sensitive,"
"otherwise, it is not"
set smartcase

"search: move the cursor to the matched string, while typing the search pattern"

set incsearch

"search: highlight matches"
set hlsearch

"search: unhighlight matches until next search"
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

"displays the number of lines"
set number

"displays every tab char with |____"
" set  list lcs=tab:\|\_

"enable mouse in all modes"
"set mouse=a"

"characters that should be matching pairs"
let delimitMate_matchpairs = "(:),[:],{:},"

"filenames that the closetag will work"
let g:closetag_filenames = "*.html,*.hbs,*.js,*.ts"

"activate mustache abbreviations"
let g:mustache_abbreviations = 1

"set starting directoty"
"'a' - like 'c', but only applies when the current working directory outside"
"of CtrlP isn't a direct ancestor of the directory of the current file."
"default value: let g:ctrlp_working_path_mode = 'ra'"
"let g:ctrlp_working_path_mode = 'a'"
set wildignore+=home/*/tmp/*,*/node_modules/*,*/bower_components/*,*.so,*.swp,*.swo,*.zip

"wrap to 80 chars"
set textwidth=80

autocmd BufRead,BufNewFile *.md setlocal spell
"Remove trailing whitespace"
autocmd BufWritePre * %s/\s\+$//e

"Run prettier on save in specific projects"
" let g:prettier#config#config_precedence = 'file-override'

" autocmd BufWritePre /Users/ab/repos/dilosi/**.js :Prettier
" autocmd BufWritePre /Users/ab/repos/car_crashes/**.js :Prettier
" autocmd BufWritePre /Users/ab/repos/preschool-enrollment/ui/**.js :Prettier
" autocmd BufWritePre /Users/ab/repos/preschool-enrollment/**.ts :Prettier
" autocmd BufWritePre /Users/ab/repos/preschool-enrollment/**.tsx :Prettier
" autocmd BufWritePre /Users/ab/repos/me/**.js :Prettier
au BufRead,BufNewFile **.ts  setfiletype typescript

"always show status line"
set laststatus=2

"colors for status line"
hi statusline ctermfg=89 ctermbg=15

"format status line"
set statusline=[\ %F%m%r%h%w\ ]\ \ [%L][%{&ff}]%y[%p%%][%04l,%04v]
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

"syntastic settings"
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
"
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

let g:ale_fixers = {
      \  'javascript': ['eslint'],
      \  'typescript': ['eslint']
\}
let g:ale_linters = {
      \  'javascript': ['eslint'],
      \  'typescript': ['eslint']
\}

let g:ale_sign_column_always = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_fix_on_save = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
"
" let bdr_head_path = expand('%:p:h')
" let bdr_dir = '/bdr/'
" if bdr_head_path =~ bdr_dir
"   let g:syntastic_javascript_checkers = ['eslint']
"   let g:syntastic_javascript_eslint_exe = 'npm run lint -- '
" endif
