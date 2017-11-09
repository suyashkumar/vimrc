set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
call vundle#end()
filetype plugin on
let g:rehash256=1
set number
set guifont=Menlo:h12
imap <C-Return> <CR><CR><C-o>k<Tab>
set autoindent
set tabstop=4
set backspace=2
set background=dark
let g:solarized_termtrans = 1
colorscheme solarized
syntax enable
map! <D-C> <F5>
map <silent> <C-n> :NERDTreeFocus<CR>
autocmd BufNewFile,BufRead *.md set filetype=markdown
autocmd BufNewFile,BufRead *.md let pdfF = expand("%:r") . ".pdf"
autocmd BufNewFile,BufRead *.tex let fi = expand("%:r")
autocmd BufNewFile,BufRead *.md map <buffer> <C-b> :w <CR> :execute ':!pandoc % -V geometry:margin=1in -o ' . pdfF  <CR>
autocmd BufNewFile,BufRead *.m map <buffer> <C-b> :w <CR> :execute ':!octave --no-gui %' <CR>
autocmd BufNewFile,BufRead *.m map <buffer> <C-n> :w <CR> :execute ":!octave --no-gui --eval \"submit(); pause\"" <CR>
autocmd BufNewFile,BufRead *.tex map <buffer> <C-b> :w <CR> :execute ':!bibtex ' . fi <CR>  :! pdflatex % <CR>
autocmd BufNewFile,BufRead *.tex map <buffer> <C-n> :execute ':!aspell --lang=en --mode=tex check %'
set sw=4
