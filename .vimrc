set nocompatible

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Bundle 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Bundle 'tpope/vim-sensible' 
Bundle 'tpope/vim-surround' 
Bundle 'tpope/vim-rails' 
Bundle 'tpope/vim-rake'
Bundle 'nanotech/jellybeans.vim' 
Bundle 'Lokaltog/vim-powerline' 
Bundle 'scrooloose/syntastic' 
Bundle 'scrooloose/nerdtree' 
Bundle 'rking/ag.vim'
Bundle 'slim-template/vim-slim'
Bundle 'sjurgemeyer/vim-grails-import'
Bundle 'mileszs/ack.vim'
Bundle 'tfnico/vim-gradle'
Bundle 'bpdp/vim-java'
Bundle 'kien/ctrlp.vim'
Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'

call vundle#end()

filetype plugin indent on
filetype indent on

set number        " Show line numbers
syntax enable     " Use syntax highlighting
set background=dark
colorscheme solarized
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

set cursorline 
set expandtab 
set modelines=0 
set shiftwidth=2 
set clipboard=unnamed 
set synmaxcol=128 
set ttyscroll=10 
set encoding=utf-8 
set tabstop=4 
set nowrap 
set number 
set expandtab 
set nowritebackup 
set noswapfile 
set nobackup 
set hlsearch 
set ignorecase 
set smartcase
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " Linux/MacOSX
let mapleader=","
let g:grails_import_search_path="~/source"
set paste
set showcmd

let g:tagbar_type_groovy = {
    \ 'ctagstype' : 'groovy',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'c:class',
        \ 'i:interface',
        \ 'f:function',
        \ 'v:variables',
    \ ]
    \ }
set tabstop=4
set shiftwidth=4
set expandtab
""""""""""""""""""""""""""""""
" => Python section
""""""""""""""""""""""""""""""
let python_highlight_all = 1
au FileType python syn keyword pythonDecorator True None False self

au BufNewFile,BufRead *.jinja set syntax=htmljinja
au BufNewFile,BufRead *.mako set ft=mako

au FileType python map <buffer> F :set foldmethod=indent<cr>

au FileType python inoremap <buffer> $r return 
au FileType python inoremap <buffer> $i import 
au FileType python inoremap <buffer> $p print 
au FileType python inoremap <buffer> $f # --- <esc>a
au FileType python map <buffer> <leader>1 /class 
au FileType python map <buffer> <leader>2 /def 
au FileType python map <buffer> <leader>C ?class 
au FileType python map <buffer> <leader>D ?def 

