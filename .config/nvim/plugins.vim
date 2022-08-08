Plug 'scrooloose/nerdtree' " for browsing
Plug 'scrooloose/nerdcommenter' " massing commenting
Plug 'myusuf3/numbers.vim' " intelligent numbering
Plug 'chrisbra/csv.vim' " csv plugin
Plug 'ervandew/supertab' " supertab
Plug 'rking/ag.vim' " search source code
Plug 'pangloss/vim-javascript'
Plug 'jiangmiao/auto-pairs'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Plug 'easymotion/vim-easymotion'
" Plug 'Townk/vim-autoclose'
" Plug 'morhetz/gruvbox'
" Plug 'sheerun/vim-polyglot'
" Plug 'othree/yajs.vim'

" LSP server
Plug 'neoclide/coc.nvim', {'branch': 'release'}"
Plug 'cocopon/iceberg.vim'

" base16-vim | Base16 for Vim {{{
Plug 'chriskempson/base16-vim'
" }}}
" ctrlp | Fuzzy file, buffer, mru, tag, etc finder. {{{
Plug 'ctrlpvim/ctrlp.vim'
let g:ctrlp_use_caching = 0
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
" open a new file
nnoremap <leader>o :CtrlP<cr>
" }}}
" syntastic | Syntax checking hacks for vim {{{
"Plug 'scrooloose/syntastic'
"let g:syntastic_javascript_checkers = ['eslint']
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_c_compiler_options = "-Wall"
" }}}
" vim-airline | lean & mean status/tabline for vim that's light as air {{{
Plug 'vim-airline/vim-airline' " status line
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
" }}}
" vim-airline-themes | A collection of themes for vim-airline {{{
Plug 'vim-airline/vim-airline-themes'
" }}}
" vim-fugitive | A Git wrapper so awesome, it should be illegal {{{
Plug 'tpope/vim-fugitive'
" }}}
" vim-indent-guides | Visually displaying indent levels in code {{{
"
"
Plug 'nathanaelkane/vim-indent-guides'
let g:indent_guides_auto_colors = 0
let g:indent_guides_start_level = 2
" }}}
" Linting
" dense-analysis/ale | Asynchronous Lint Engine {{{
Plug 'dense-analysis/ale'
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'cpp': ['gcc'],
\   'cc': ['gcc'],
\}
let b:ale_fixers = {
\   'javascript': ['eslint']
\}
let g:ale_set_highlights = 0
"highlight ALEError ctermbg=DarkGrey
" }}}
