set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp' : 'powerline/bindings/vim'}
Bundle 'Valloric/YouCompleteMe'

call vundle#end()
filetype plugin indent on

let mapleader="-"

"open vimrc
nnoremap <leader>rc :split ~/.vimrc<CR>

"source vimrc
nnoremap <leader>src :!source ~/.vimrc<CR>

"./filename
autocmd Bufread,BufNewFile *.py nnoremap <leader>r :w<CR>:!python3 %<CR>

"chmoding
nnoremap <leader>ch :w<CR>:!chmod +x %<CR>

"moving between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"syntax highlighting
syntax on

"code folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

"Autocompleteness
let g:ycm_autoclose_preview_window_after_completion=1

"line numbering
set nu

"clipboard
set clipboard=unnamed
