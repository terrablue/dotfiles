" define leader
let mapleader = ","
" general {{{
" easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

map <leader><C-c> "+y
map <leader><C-v> "+gP
map <leader><C-a> ggVG"+y
" }}}
" visual mode {{{
" keep selection after identing
vnoremap > >gv
vnoremap < <gv
" use tab to indent and unindent
vmap <tab> >
vmap <S-tab> <
" }}}
" normal mode {{{
" fast saving
nmap <leader>w :w!<cr>
" close a window
nmap <leader>q :q<cr>
nmap <leader>l :set list!<cr>
nmap <leader>ev :e $MYVIMRC<cr>
nmap <leader>er :w!<cr>:so $MYVIMRC<cr>
nmap <leader>b :BundleInstall<cr>
nmap <silent> ,<Space> :nohlsearch<cr>
" fix broken documents: retabbing, reindenting
nnoremap <leader>r :retab<cr> gg=G<cr>
" align current paragraph
" nnoremap <leader>a =ip
" block bad habits
nnoremap <down> <nop>
nnoremap <up> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
" qq to start recording, q to stop, Q to play back
nnoremap Q @q
" copy an entire line and paste it before the current line
nnoremap _ ggY``P
" remap j and k to scroll by visual line
nnoremap j gj
nnoremap k gk
" remap . to avoid hitting shift to switch to command mode
nnoremap . :
" shift director to change tabs
nnoremap gl gt
nnoremap gh gT
" window navigation with tab
nnoremap <leader><tab> <C-W>w
nnoremap <leader><S-tab> <C-W>W
" toggle folding
nnoremap <tab> :bn<cr>
nnoremap <S-tab> :bp<cr>
" remap enter
" define leader
nnoremap <return> o<esc>
" open ag.vim
nnoremap <leader>a :Ag
" open fuzzy search
nnoremap <leader>o :CtrlP<cr>
" open fold spaces when applicable, otherwise start searching
nnoremap <silent> <space> @=(foldlevel('.')?'za':"/")<cr>
" jump to previous ale error
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
" jump to next ale error
nmap <silent> <C-j> <Plug>(ale_next_wrap)
inoremap <silent><expr> <c-space> coc#refresh()
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)
" }}}
" insert mode {{{
inoremap <expr><tab> pumvisible() ? "\<C-n>" : "\<tab>"
" get to normal mode fast
inoremap jk <esc>
" enter closing { brackets
inoremap { {<CR>}<Esc>ko
" }}}
" plugins {{{
" nerdtree {{{
map <leader><leader> :NERDTreeToggle<cr>
" }}}
" }}}
let g:rust_recommended_style = 0
