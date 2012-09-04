" kmurray vimrc file
"
" Largely based off of:
"   https://github.com/derekwyatt/vim-config
"   http://items.sjbach.com/319/configuring-vim-right

" Enable pathogen to manage vim plugins
" call pathogen#infect()

set t_Co=256
colorscheme xoria256

" Tabstops are 4 spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent

" Make command line 1 lines high
set ch=1

" Set the status line
set laststatus=2
set statusline=%<%f\ %h%w%m%r%y%=Line:%l/%L\ (%p%%)\ Col:%c

" Make the 'cw' and like commands put a $ at the end instead of just deleting
" the text and replacing it
set cpoptions=ces$


" Switch on syntax highlighting.
syntax on

" Set up the gui cursor to look nice
set guicursor=n-v-c:block-Cursor-blinkon0,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor,r-cr:hor20-Cursor,sm:block-Cursor-blinkwait175-blinkoff150-blinkon175

" When the page starts to scroll, keep the cursor 8 lines from the top and 8
" lines from the bottom
set scrolloff=3

" Make the command-line completion better
" list:longest means it acts like shell completion
" (only up to the point of ambiguity, rather than first item)
set wildmenu
set wildmode=list:longest

" Enable search highlighting
set hlsearch

" Incremental search as you type. I find this distracting while typeing the search
"set incsearch

" Line numbers!
set number

" Search should wrap around the document
set wrapscan

" XML folding
"   see :help folds for commands (e.g. zo - open, zc - close) 
let g:xml_syntax_folding=1
au FileType xml setlocal foldmethod=syntax

" Turn on plugins
filetype plugin on

" Detect indentation based on file
filetype indent on

" Use coma , as the leader key, much nicer than \
let mapleader = ","

" Try smart case searching... don't know how well this will work
set ignorecase
set smartcase

" Effective buffer management
" Turning this on allows vim to put buffers in the background
" without having to write them to disk, also saves marks and undo history
set hidden

" Allow the % key to switch not only between open/close brackets but also
" among if/elsif/else/end, and xml tags
runtime macros/matchit.vim

" Don't update the display while executing macros
set lazyredraw

" Don't fold anything smaller than this
set foldminlines=3

" Save cursor position and folding in a file when restarting vim
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview 

"Gvim remove menu bar
set guioptions-=m
"Gvim remove toolbar
set guioptions-=T


" Clear highlighting with comma space
nnoremap <leader><space> :noh<cr>

" Good line wrapping?
" Colors text beyond 85 chars
"set wrap
"set textwidth=79
"set formatoptions=qrn1
"set colorcolumn=85
" Use a subtle color fo the column limit
highlight ColorColumn guibg=Gray7
highlight ColorColumn ctermbg=233


" Set the file size (in MB) for the LargeFile plugin
let g:LargeFile=200

" No scrollbars in gvim
set guioptions+=LlRrb "Must set before unsetting (bug workaround)
set guioptions-=LlRrb

" Disable arrowkeys
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

" Move windows
noremap <silent> ,h :wincmd h<CR>
noremap <silent> ,j :wincmd j<CR>
noremap <silent> ,k :wincmd k<CR>
noremap <silent> ,l :wincmd l<CR>
" Previous window
noremap <silent> ,p :wincmd p<CR>
" Resize windows
noremap <silent> <C-F9> :vertical resize -10<CR>
noremap <silent> <C-F10> :resize +10<CR>
noremap <silent> <C-F11> :resize -10<CR>
noremap <silent> <C-F12> :vertical resize +10<CR>
noremap <silent> ,s8 :vertical resize 83<CR>
" Close windows
noremap <silent> ,cj :wincmd j<CR>:close<CR>
noremap <silent> ,ck :wincmd k<CR>:close<CR>
noremap <silent> ,ch :wincmd h<CR>:close<CR>
noremap <silent> ,cl :wincmd l<CR>:close<CR>
noremap <silent> ,cc :close<CR>
"noremap <silent> ,cw :cclose<CR>"What does this do?
" Move windows
noremap <silent> ,ml <C-W>L
noremap <silent> ,mk <C-W>K
noremap <silent> ,mh <C-W>H
noremap <silent> ,mj <C-W>J
