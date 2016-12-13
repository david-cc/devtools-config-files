execute pathogen#infect()

" filetype plugin on

" enable syntax highlighting
syntax enable

" indent when moving to the next line while writing code
set autoindent

" show line numbers
set number

" show existing tab with 2 spaces width
set tabstop=2

" when indenting with '>', use 2 spaces width
set shiftwidth=2

" On pressing tab, insert 2 spaces
set expandtab

" smarttab and smartindent
set smarttab
set smartindent

" show a visual line under the cursor's current line
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

" add matching bracket and CR
inoremap { {<CR><BS>}<Esc>ko

" Show max line col width
" set colorcolumn=80

" search as characters are entered
" set incsearch

" smart search: if uppercase used, search will look for uppercase else it will search for insensitive case
set ignorecase
set smartcase

" highlight matches
set hlsearch

" Press Space to turn off highlighting and clear any message already displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" set status line always
set laststatus=2

" theme
" let base16colorspace=256
colorscheme monokai

" couleur de la recherche: fg=blanc bg=rose
hi Search cterm=NONE ctermfg=255 ctermbg=197

" Show hidden characters
" set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:·
" set listchars=eol:¬
set listchars=eol:$,tab:>·,trail:~,extends:>,precedes:<,space:·
" set list

" Buffer management
nnoremap <F5> :buffers<CR>:buffer<Space>
nmap <silent> <F6> :bp<CR>
nmap <silent> <C-n> :bp<CR>
nmap <silent> <F7> :bn<CR>

" Select matching text in brackets, parenthesis
noremap % v%

let g:EasyMotion_leader_key = '<Leader>'

" Bundle Indent line
let g:indentLine_enabled = 0
" let g:indentLine_char = '┆'
" let g:indentLine_char = '¦'
" let g:indentLine_char = '|'

" let g:indentLine_color_term = 239
" let g:indentLine_color_term = 236

" Bundle Move
let g:move_key_modifier = 'C'

" Bundle Emmet
let g:user_emmet_leader_key='<C-x>'

" Bundle NERDTree
set splitright
nmap <silent> <F3> :NERDTreeToggle<CR>
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Bundle Syntastic
let g:syntastic_javascript_checkers = ['eslint']

" Bundle CtrlP
" Setup some default ignores
let g:ctrlp_match_window = 'bottom,order:btt'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site)$',
  \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
\}

" Remap line wrapping cursor moving
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk

" Remap scroll up (AltGr-i) and scroll down (AltGr-u)
nmap → <C-u>
nmap ↓ <C-d>
