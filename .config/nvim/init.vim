set nocompatible
filetype off
" Plug {{{
  call plug#begin("~/.local/share/nvim/plugged")

  source ~/.config/nvim/plugins.vim

  call plug#end()
" }}}

source ~/.config/nvim/mappings.vim
" auto commands {{{
" augroup reload_vimrc " {
"  autocmd!
"  autocmd bufwritepost $MYVIMRC so $MYVIMRC
" augroup END " }
" autocmd bufwritepre * :normal gg=G
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS

" }}}
" show line numbers
set number
set backspace=eol,start,indent
set listchars=eol:$,tab:>-,trail:·,extends:>,precedes:<,nbsp:¬
set list
set nobackup
set noswapfile
set pastetoggle=<F2>
" hide buffers, do not force to close them
set hidden
" folding {{{
set foldmethod=marker
" }}}
" encoding {{{
set encoding=utf-8
set ffs=unix,dos
" }}}
" tab, spaces, indentation{{{
" in insert mode: use the appropriate number of spaces to insert a <tab>
set expandtab
" number of spaces that a <tab> in the file counts for
set tabstop=2
" how many spaces should be entered for a <tab>
set shiftwidth=2
" how many spaces to delete when using backspace after <tab>
set softtabstop=2
" }}}
" searching {{{
set hlsearch
set ignorecase
set incsearch
set smartcase
" }}}

" file type
filetype plugin indent on
syntax enable
set background=dark
let base16colorspace=256
colorscheme iceberg
set laststatus=2
set clipboard=unnamedplus
set colorcolumn=80
" hardwarp after 79 characters
set textwidth=79
