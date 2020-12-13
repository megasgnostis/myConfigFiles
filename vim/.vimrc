"syntax highlihting
syntax on

"encoding
set encoding=utf-8

"searh options
set hlsearch incsearch ignorecase smartcase

"tab options
set expandtab tabstop=2 shiftwidth=2

"autocomplete
set wildmode=full

"indent same as previous line
set autoindent

"You'll probably need
":help key-notation 


"insert mode maps 
  "autocomplete
  inoremap <Tab><Tab> <C-x><C-n>
  "j k navigation in autocomplete
  inoremap <expr> j pumvisible() ? "\<C-N>" : "j"
  inoremap <expr> k pumvisible() ? "\<C-P>" : "k"

"normal mode maps 
  "empty line after
  nnoremap <Space>o o<Esc>0
  "empty line before
  nnoremap <Space>O O<Esc>0
  "latex reload
  nnoremap <Space>l :w<CR> :! pdflatex -output-directory ../2Pdf %<CR><CR>
  "better save
  nnoremap <Space>z :w<CR>
  "space at cursor
  nnoremap <Space>i i<Space><Esc>
  "space after cursor
  nnoremap <Space>a a<Space><Esc>
  "tab at cursor
  nnoremap <Space>> <C-v>>
  "save and edit other file
  nnoremap <Space>e :w<CR>:e<Space>
  "remove highlighting
  nnoremap <Space>h :noh<CR>
  "better quitting without saving
  nnoremap <Space>q :q!<CR>
  "replace all occurences of word under cursor
  nnoremap <Space>r :%s/\<<C-r><C-w>\>//g<Left><Left>
  "better search
  nnoremap <Space>s /

"If system clipboard copy and paste don't work install vim-gtk

"visual mode maps 
  "copy outside vim
  vnoremap <C-c> "+y
  "space before
  vnoremap <Space>i I<Space><Esc>
  "replace all occurences of highlighted text
  vnoremap <Space>r "hy:%s/<C-r>h//g<Left><Left>
  "search highlighted text
  vnoremap <Space>s y/\V<C-R>=escape(@",'/\')<CR><CR>

"command line mode maps
  "edit previous commands
  "executes last line with enter
  cnoremap <Space>e <C-f>

"general maps
  "paste from clipboard
  noremap <C-p> "+p
  "vim window down
  noremap <space>J <C-d>
  "vim window up
  noremap <space>K <C-u>
  "paragraph down
  noremap <space>j }
  "paragraph up
  noremap <space>k {

"no autocomment
  autocmd Filetype * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
  autocmd BufRead ~/.vimrc setlocal keywordprg=:help
