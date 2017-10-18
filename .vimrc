set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp' : 'powerline/bindings/vim'}
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Bundle 'Valloric/YouCompleteMe'

call vundle#end()
filetype plugin indent on

let mapleader="-"

"sets autocompletion environment
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

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
let python_highlight_all=1
syntax on

"code folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

"Autocompleteness
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"line numbering
set nu

"clipboard
set clipboard=unnamed

"syntax
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix 

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 

