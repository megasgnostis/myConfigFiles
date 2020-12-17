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
  inoremap <Tab> <C-x><C-n>
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
  "tab back at cursor
  nnoremap <Space>< <C-v><
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
  "copy to clipboard
  vnoremap <Space>y "+y
  "space before
  vnoremap <Space>i I<Space><Esc>
  "replace all occurences of highlighted text
  vnoremap <Space>r "hy:%s/<C-r>h//g<Left><Left>
  "search highlighted text
  vnoremap <Space>sh y/\V<C-R>=escape(@",'/\')<CR><CR>
  "search other
  vnoremap <Space>so /
  "delete and copy to clipboard
  vnoremap <Space>d "+d
  "paste without copying the highlighted text
  vnoremap P "0p
  
"command line mode maps
  "edit previous commands
  "executes last line with enter
  cnoremap <Space>e <C-f>

"general maps
  "paste from clipboard
  noremap <Space>p "+p
  "better down half a page
  noremap <space>j <C-d>
  "better up half a page
  noremap <space>k <C-u>
  "better paragraph down
  noremap <space>J }
  "better paragraph up
  noremap <space>K {

"no autocomment
  autocmd Filetype * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
"enable pressing K for help about word under cursor in vimrc
  autocmd BufRead ~/.vimrc setlocal keywordprg=:help

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'elmcast/elm-vim'

call plug#end()
