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

"tab options
set expandtab tabstop=2 shiftwidth=2

"autocomplete
set wildmode=longest,list,full

"indent same as previous line
set autoindent

"You'll probably need
":help key-notation 

"insert mode maps 
  "autocomplete
  imap <Space><Tab> <C-n>
  "better way to normal mode
  imap <Space><Space> <Esc>
  "j k navigation in autocomplete
  imap <expr> j pumvisible() ? "\<C-N>" : "j"
  imap <expr> k pumvisible() ? "\<C-P>" : "k"

"normal mode maps 
  "better file-wide substitution
  nmap <Space>s :%s//g<Left><Left>
  "empty line after
  nmap <Space>o o<Esc>0
  "empty line before
  nmap <Space>O O<Esc>0
  "latex reload
  nmap <Space>l :w<CR> :! pdflatex -output-directory ../2Pdf %<CR><CR>
  "better save
  nmap <Space>z :w<CR>
  "space at cursor
  nmap <Space>i i<Space><Esc>
  "space after cursor
  nmap <Space>a a<Space><Esc>
  "tab at cursor
  nmap <Space>> <C-v>>
  "save and edit other file
  nmap <Space>e :w<CR>:e<Space>
  "remove highlighting
  nmap <Space>h :noh<CR>
  "save and make
  nmap <Space>m :w<CR>:! cd ../..; make<CR>
  "execute
  nmap <Space>x :! ../../4Executable<CR>
  "better closing without saving
  nmap <Space>q :q!<CR>
  
"If system clipboard copy and paste doesn't work install vim-gtk

"visual mode maps 
  "copy outside vim
  vmap <C-c> "+y
  "better way to normal mode
  vmap <Space><Space> <Esc>
  "space before
  vmap <Space>i I<Space><Esc>

"command line mode maps
  "better way to normal mode
  cmap <Space><Space> <Esc>
  "edit previous commands
  "last line = command executed with enter
  cmap <Space>e <C-f>

"general maps
  "paste from clipboard
  map <C-p> "+P

"no autocomment
  autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
