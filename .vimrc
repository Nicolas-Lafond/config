set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'vim-syntastic/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'mattn/emmet-vim'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" disable emmet in non-HTML file
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

set tabstop=4
set shiftwidth=4
set expandtab
syntax on
set number

nnoremap <Up> <C-y>
vnoremap <Up> <C-y>
nnoremap <Down> <C-e>
vnoremap <Down> <C-e>
nnoremap ; :
vnoremap ; :
nnoremap <C-j> <C-w><C-w>
vnoremap <C-j> <C-w><C-w>
nnoremap < <<
vnoremap < <<
nnoremap > >>
vnoremap > >>
nnoremap <PageUp> <C-u>
vnoremap <PageUp> <C-u>
nnoremap <PageDown> <C-d>
vnoremap <PageDown> <C-d>

""allow easy copy/paste from/to clipboard
vnoremap <C-c> "+y
vnoremap <C-v> "+p

if has('nvim')
    tnoremap <Esc> <C-\><C-n>
    tnoremap <C-j> <C-\><C-n><C-w><C-w>
endif
