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
  "k l navigation in autocomplete
  inoremap <expr> k pumvisible() ? "\<C-N>" : "k"
  inoremap <expr> l pumvisible() ? "\<C-P>" : "l"
  "better way to go to normal mode
  inoremap <A-Space> <Esc>

"normal mode maps 
  "copy word under cursor
  nnoremap <Space>c "+yiw
  "empty line after
  nnoremap <Space>o o<Esc>0
  "empty line before
  nnoremap <Space>O O<Esc>0
  "latex reload
  nnoremap <Space>p :w<CR> :! pdflatex -output-directory ../Pdf %<CR><CR>
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
  nnoremap r :%s/\<<C-r><C-w>\>//g<Left><Left>
  "replace all occurences of word under cursor
  nnoremap <Space>s /<C-r><C-w><CR>
  "better delete line
  nnoremap D "+dd
  "better delete single character
  nnoremap d "+x
  "better copy line
  nnoremap c "+yy
  "better help
  nnoremap h K

"If system clipboard copy and paste don't work install vim-gtk

"visual mode maps 
  "space before
  vnoremap <Space>i I<Space><Esc>
  "replace all occurences of highlighted text
  vnoremap r "hy:%s/<C-r>h//g<Left><Left>
  "search highlighted text
  vnoremap <Space>s y/\V<C-R>=escape(@",'/\')<CR><CR>
  "paste without copying the highlighted text
  vnoremap P "0p
  "better delete
  vnoremap d "+d
  "better copy
  vnoremap c "+y

"command line mode maps
  "edit previous commands
  "executes last line with enter
  cnoremap <Space>e <C-f>

"general maps
  "better paste
  noremap p "+p
  "better down half a page
  noremap <space>k <C-d>
  "better up half a page
  noremap <space>l <C-u>
  "better paragraph down
  noremap K }
  "better paragraph up
  noremap L {
  "better search
  noremap s /
  "better left
  noremap j h
  "better down
  noremap k j
  "better up
  noremap l k
  "better right
  noremap ; l
  "better substitute
  noremap x s

"no autocomment
  autocmd Filetype * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
  "set formatoptions-=cro
"enable pressing K for help about word under cursor in vimrc
  autocmd BufRead ~/.vimrc setlocal keywordprg=:help
"disable syntax for alex/happy files
  autocmd BufRead ~/*.x syntax off
  autocmd BufRead ~/*.y syntax off
