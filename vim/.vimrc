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

"indent of new line same as current line
  set autoindent

":help key-notation

"insert mode maps 
  "autocomplete
  imap <Space><Tab> <C-n>
  "easier way to go to normal mode
  imap <Space><Space> <Esc>
  "j k navigation in autocomplete
  imap <expr> j pumvisible() ? "\<C-N>" : "j"
  imap <expr> k pumvisible() ? "\<C-P>" : "k"

"normal mode maps 
  "easy file-wide substitution
  nmap <Space>s :%s//g<Left><Left>
  "add empty line after
  nmap <Space>o o<Esc>0
  "add empty line before
  nmap <Space>O O<Esc>0
  "latex reload
  nmap <Space>l :! pdflatex -output-directory ../2_pdf %<CR><CR>
  "better save
  nmap <Space>z :w<CR>
  "add space before cursor
  nmap <Space>i i<Space><Esc>
  "add space after cursor
  nmap <Space>a a<Space><Esc>
  "add tab at cursor
  nmap <Space>m <C-v>>
  "add space after cursor
  nmap <Space>e :e<Space>
  "remove highlighting after search
  nmap <Space>h :noh<CR>
  
"If system clipboard copy and paste doesn't work install vim-gtk

"visual mode maps 
  "copy to clipboard
  vmap <C-c> "+y
  "easier way to go to normal mode
  vmap <Space><Space> <Esc>
  "put space before
  vmap <Space>i I<Space><Esc>
  "add space after cursor
  vmap <Space>m >

"command line mode maps
  "easier way to go to normal mode
  cmap <Space><Space> <Esc>

"general maps
  "paste from clipboard
  map <C-p> "+P

"no autocomment
  autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
