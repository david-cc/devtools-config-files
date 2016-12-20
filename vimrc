execute pathogen#infect()

filetype plugin indent on

" enable syntax highlighting
syntax enable

" show line numbers
set number

" Tab 2
set tabstop=2
set shiftwidth=2
" indent when moving to the next line while writing code
set autoindent

" show a visual line under the cursor's current line
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

" show max line col width
set colorcolumn=80

" search
set ignorecase
set smartcase

" toggle paste mode
set pastetoggle=<F2>

" highlight matches
set hlsearch

" Press Space to turn off highlighting and clear any message already displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" set status line always
set laststatus=2

" theme
colorscheme monokai
set background=dark

" couleur de la recherche: fg=blanc bg=rose
hi Search cterm=NONE ctermfg=255 ctermbg=197

" Show hidden characters
set listchars=eol:¬,tab:\|\ ,trail:~,extends:>,precedes:<,space:·
set list

" SpecialKey color (whitespace)
highlight SpecialKey ctermfg=236

" NonText color
highlight NonText ctermfg=236

" Buffer management
nnoremap <F5> :buffers<CR>:buffer<Space>
nmap <silent> <F6> :bp<CR>
nmap <silent> <C-n> :bp<CR>
nmap <silent> <F7> :bn<CR>

" Select matching text in brackets, parenthesis
noremap % v%

" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Bundle EasyMotion
let g:EasyMotion_leader_key = '<Leader>'

" Bundle Move
let g:move_key_modifier = 'C'

" Bundle Emmet
let g:user_emmet_leader_key='<C-x>'

" Bundle NERDTree
set splitright
nmap <silent> <F3> :NERDTreeToggle<CR>
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

" Bundle Airline
let g:airline_exclude_preview = 1

" Map jj to Esc in INSERT mode
imap jj <Esc>

" Remap line wrapping cursor moving
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk

" Remap scroll up and down
nmap K <C-u>
nmap J <C-d>

