" Setup Vundle to manage plugins
set nocompatible              " required by Vundle
filetype off                  " required by Vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Now list the plugins required

" Colour scheme
Plugin 'vim-scripts/xoria256.vim'

" Better commenting
Plugin 'scrooloose/nerdcommenter'

" Improved handling of large files
Plugin 'LargeFile'

" Integrated File browser
Plugin 'scrooloose/nerdtree'

" Quickly add/remove surounding quotes/braces etc.
Plugin 'tpope/vim-surround'

" Handle . repeats more robustly (for surround)
Plugin 'tpope/vim-repeat'

" Code auto-completion
Plugin 'Valloric/YouCompleteMe'

" Finally finish things off
" All of your Plugins must be added before the following line
call vundle#end()            " required

" Turn on plugins
filetype plugin on

" Detect indentation based on file
filetype indent on
