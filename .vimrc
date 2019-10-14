"detect, enable plugins and indent
  filetype plugin indent on

"syntax highlihting
  syntax on
  "syntax off

"encoding
  set encoding=utf-8

"relative numbers for moving around
  set number relativenumber

"searh options
  set hlsearch incsearch ignorecase smartcase

"line break options
  set linebreak breakindent showbreak="   --->"

"tab options
  set expandtab tabstop=2 shiftwidth=2
     
"autocomplete
  set wildmode=longest,list,full

"indent of new line same as current line
  set autoindent

":help key-notation

"insert mode maps 
  "easier way to go to normal mode
  inoremap jk <Esc>
  "easier way to go to normal mode
  inoremap <Space><Tab> <C-x><C-n>

"normal mode maps 
  "easy file-wide substitution
  nnoremap <Space>s :%s//g<Left><Left>
  "add empty line after
  nnoremap <Space>o o<Esc>0
  "add empty line before
  nnoremap <Space>O O<Esc>0
  "go left 15 characters 
  nnoremap <Space>h 15h
  "go up 15 lines 
  nnoremap <Space>j 15j
  "go down 15 lines 
  nnoremap <Space>k 15k
  "go up 15 lines 
  nnoremap <Space>l 15l
  "better save
  nnoremap <Space>z :w<CR>
  "add space before cursor
  nnoremap <Space>i i<Space><Esc>
  "add space after cursor
  nnoremap <Space>a a<Space><Esc>
  "add space after cursor
  nnoremap <Space>m <C-v>>
  
"If system clipboard copy and paste doesn't work install vim-gtk

"visual mode maps 
  "copy to clipboard
  vnoremap <C-c> "+y
  "easier way to go to normal mode
  vnoremap jk <Esc>
  "go left 15 chars 
  vnoremap <Space>h 15h
  "go down 15 lines 
  vnoremap <Space>j 15j
  "go up 15 lines 
  vnoremap <Space>k 15k
  "go right 15 chars 
  vnoremap <Space>l 15l

"general maps
  "paste from clipboard
  map <C-p> "+P

"no autocomment
  autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
