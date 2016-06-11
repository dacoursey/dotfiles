

" Vundle configuration
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/vim-colors-solarized
call vundle#begin()
" Add plugins now
Plugin 'VundleVim/Vundle.vim' "required


" Add all plugins before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Color scheme
set background=dark
colorscheme solarized

" Personal behavior preferences
set number
set relativenumber
set ruler
syntax on

" Stuff I copied from other people
set autoindent
set cindent
set tabstop=4
set expandtab
set shiftwidth=4
set showtabline=2
let python_space_error_highlight = 1
let python_highlight_all = 1
