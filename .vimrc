set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Airline Madness
let g:airline_powerline_fonts = 1
let g:airline_theme = 'solarized'
let g:airline#extensions#tabline#enabled = 1

" PowerLine Magic
set encoding=utf-8 " Necessary to show unicode glyphs
set t_Co=256 " Explicitly tell vim that the terminal supports 256 colors

" Tab Control: alt+#
map <A-1> 1gt
map <A-2> 2gt
map <A-3> 3gt
map <A-4> 4gt
map <A-5> 5gt
map <A-6> 6gt
map <A-7> 7gt
map <A-8> 8gt
map <A-9> 9gt

" Tab Control: Alt+L / Alt+R 
map <A-Left> gT
map <A-Right> gt


" Indentation
set noautoindent
set smartindent
set textwidth=78

" Backspaces
set backspace=indent,eol,start

" Syntax Highlighting
syntax on
set showmatch " Jump to matching brackets

" Colors
set background=dark
colorscheme slate

" Tabulators
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab

" Display history for fifty lines and always show my ruler
set history=50
set ruler

" Show incomplete commands and incremental searching
set showcmd
set incsearch

" Visual Bells Off
set novisualbell
set noerrorbells
set vb t_vb=

" Swapfile stuff
set dir=/home/$USER/.vim/swaps//
set backupdir=/home/$USER/.vim/backups//

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'bling/vim-airline'

" Code completion.
Bundle 'Valloric/YouCompleteMe'

Bundle 'git://git.wincent.com/command-t.git'
filetype plugin indent on     " required!
