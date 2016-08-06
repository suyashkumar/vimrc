set nocompatible 
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
call vundle#end()
filetype plugin on 
syntax enable
colorscheme molokai
let g:rehash256=1
set number
set guifont=Menlo:h12
execute pathogen#infect()
imap <C-Return> <CR><CR><C-o>k<Tab>
set autoindent
set tabstop=4 
map! <D-C> <F5>
let g:vim_arduino_library_path = "/Applications/Arduino.app/Contents/MacOS"
autocmd BufNewFile,BufRead *.md set filetype=markdown
autocmd BufNewFile,BufRead *.md let pdfF = expand("%:r") . ".pdf" 
autocmd BufNewFile,BufRead *.tex let fi = expand("%:r")  
autocmd BufNewFile,BufRead *.md map <buffer> <C-b> :w <CR> :execute ':!pandoc % -V geometry:margin=1in -o ' . pdfF  <CR> 
autocmd BufNewFile,BufRead *.m map <buffer> <C-b> :w <CR> :execute ':!octave --no-gui %' <CR>
autocmd BufNewFile,BufRead *.tex map <buffer> <C-b> :w <CR> :execute ':!bibtex ' . fi <CR>  :! pdflatex % <CR>
autocmd BufNewFile,BufRead *.tex map <buffer> <C-n> :execute ':!aspell --lang=en --mode=tex check %' 
set sw=4
