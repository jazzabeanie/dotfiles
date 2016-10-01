execute pathogen#infect()
syntax on
filetype plugin indent on

set runtimepath^=~/.vim/bundle/ctrlp.vim
behave xterm

set laststatus=2
set statusline=%F[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
set autoread
set cursorline
set hidden
set nocompatible
set number
set ruler
set hlsearch
set nopaste
set expandtab
set colorcolumn=80
set textwidth=79
set wrap
set backspace=indent,eol,start
set noswapfile
set fileformat=unix
set fileformats=unix,dos
set shiftwidth=2
set softtabstop=2
set tabstop=2
set clipboard=unnamedplus

" See key notation: http://vimdoc.sourceforge.net/htmldoc/intro.html#notation

let mapleader =","
let maplocalleader = "\\"

" TODO: map a command to yank selection, start a search and replace with the
" current selection

noremap <leader>- ddp
noremap <leader>_ ddkP
inoremap <leader><c-u> <esc>viwUea
nnoremap <leader><c-u> viwUe
nnoremap <leader><c-v> "*P
inoremap <leader><c-v> <esc>"*pa
vnoremap <leader><c-c> "*y
vnoremap <leader>y "*y
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

iabbrev @@ jazzab@gmail.com
iabbrev ssig --<cr>Jared Johnston<cr>jazzab@gmail.com
iabbrev teh the
iabbrev tehn then
iabbrev waht what

" escaping
inoremap jk <esc>l
onoremap jk <esc>

" Search and replace selection
vnoremap <leader>s y:.,$s/\V<c-r>"//gc\|1,''-&&\|'<<left><left><left><left><left><left><left><left><left><left><left><left><left><left>

" Format selection
vnoremap <leader>f gq

colors zenburn

" Navigation
nnoremap L $
nnoremap H ^
nnoremap <leader>H H
nnoremap <leader>L L
vnoremap L $
vnoremap H ^
vnoremap <leader>H H
vnoremap <leader>L L

" make Backspace useful in normal mode
nnoremap <BS> a<BS><esc>

" surround selection in i __
vnoremap <leader>" <esc>`>a"<esc>`<i"<esc>
vnoremap <leader>' <esc>`>a'<esc>`<i'<esc>
vnoremap <leader>( <esc>`>a)<esc>`<i(<esc>

" change in next and last __
onoremap if( :<c-u>normal! f(vi(<cr>
onoremap iF( :<c-u>normal! F)vi(<cr>
onoremap if{ :<c-u>normal! f{vi{<cr>
onoremap iF{ :<c-u>normal! F}vi{<cr>
onoremap if' :<c-u>normal! f'vi'<cr>
onoremap iF' :<c-u>normal! F'vi'<cr>
onoremap if" :<c-u>normal! f"vi"<cr>
onoremap iF" :<c-u>normal! F"vi"<cr>

" surround selection in parenthesis
vnoremap <leader>( <esc>`>a)<esc>`<i(<esc>
"
" For linux:
vnoremap <leader>y "+y
inoremap <leader>p <c-r>*
vnoremap "+y <esc>:echo "!!!! NOPE try ',y' instead !!!!"<cr>
nnoremap <leader>p "+p
nnoremap <leader>P "+P

augroup filetype_guitar_tab
	" Guitar tab setting.
	" these apply to files with a .gtab extention
	" TODO: change these autocmds to appy to guitar tab filetypes. This would mean
	" programming vim to recognise guitar tabs. See this link:
	" http://vi.stackexchange.com/questions/2529/how-does-vim-know-how-to-syntax-highlight-some-files-with-strange-extension-or-w
	:autocmd BufNewFile,BufRead *.gtab setlocal nowrap
	:autocmd BufNewFile,BufRead *.gtab setlocal nonumber
	:autocmd BufNewFile,BufRead *.gtab nnoremap x s-<esc>l
	" TODO:
	" map backspace key to actually delete a character
	:autocmd BufNewFile,BufRead *.gtab nnoremap <buffer> 1 s1<esc>l
	:autocmd BufNewFile,BufRead *.gtab nnoremap <buffer> 2 s2<esc>l
	:autocmd BufNewFile,BufRead *.gtab nnoremap <buffer> 3 s3<esc>l
	:autocmd BufNewFile,BufRead *.gtab nnoremap <buffer> 4 s4<esc>l
	:autocmd BufNewFile,BufRead *.gtab nnoremap <buffer> 5 s5<esc>l
	:autocmd BufNewFile,BufRead *.gtab nnoremap <buffer> 6 s6<esc>l
	:autocmd BufNewFile,BufRead *.gtab nnoremap <buffer> 7 s7<esc>l
	:autocmd BufNewFile,BufRead *.gtab nnoremap <buffer> 8 s8<esc>l
	:autocmd BufNewFile,BufRead *.gtab nnoremap <buffer> 9 s9<esc>l
	:autocmd BufNewFile,BufRead *.gtab nnoremap <buffer> 0 s0<esc>l
	:autocmd BufNewFile,BufRead *.gtab nnoremap <buffer> <localleader>1 1
	:autocmd BufNewFile,BufRead *.gtab nnoremap <buffer> <localleader>2 2
	:autocmd BufNewFile,BufRead *.gtab nnoremap <buffer> <localleader>3 3
	:autocmd BufNewFile,BufRead *.gtab nnoremap <buffer> <localleader>4 4
	:autocmd BufNewFile,BufRead *.gtab nnoremap <buffer> <localleader>5 5
	:autocmd BufNewFile,BufRead *.gtab nnoremap <buffer> <localleader>6 6
	:autocmd BufNewFile,BufRead *.gtab nnoremap <buffer> <localleader>7 7
	:autocmd BufNewFile,BufRead *.gtab nnoremap <buffer> <localleader>8 8
	:autocmd BufNewFile,BufRead *.gtab nnoremap <buffer> <localleader>9 9
	:autocmd BufNewFile,BufRead *.gtab nnoremap <buffer> <localleader>0 0
	:autocmd BufNewFile,BufRead *.gtab nnoremap <buffer> <localleader>h sh<esc>l
	:autocmd BufNewFile,BufRead *.gtab nnoremap <buffer> <localleader>p sp<esc>l
	:autocmd BufNewFile,BufRead *.gtab nnoremap <buffer> -- C-------------------------------------------------------<esc>b
augroup END

augroup filetype_python
	autocmd!
	autocmd FileType python nnoremap <buffer> <localleader>c I# <esc>
	autocmd FileType python :inoremap <buffer> if if:<left>
	autocmd FileType python :iabbrev <buffer> ret return
	autocmd FileType python :iabbrev <buffer> return NOPE
augroup END

augroup filetype_js
	autocmd!
	autocmd FileType javascript nnoremap <buffer> <localleader>c I// <esc>
	autocmd FileType javascript :iabbrev <buffer> if if (
	autocmd FileType javascript :iabbrev <buffer> func function
	autocmd FileType javascript :iabbrev <buffer> function NOPE
	autocmd FileType javascript :iabbrev <buffer> ret return
	autocmd FileType javascript :iabbrev <buffer> return NOPE
  autocmd FileType javascript :iabbrev <buffer> yi yield
  " TODO: add syntax highlighting for 'yield' in javascript
augroup END

augroup filetype_html
	autocmd!
	autocmd FileType html nnoremap <buffer> <localleader>f Vatzf
	autocmd FileType html :iabbrev <buffer> div <div></div><left><left><left><left><left><left>
	autocmd FileType html :iabbrev <buffer> <div> NOPENOPENOPE
	autocmd FileType html :iabbrev <buffer> divc <div class=""></div><left><left><left><left><left><left><left><left>
augroup END

augroup filetype_hbs
	autocmd!
	autocmd BufNewFile,BufRead *.hbs nnoremap <buffer> <localleader>f Vatzf
	autocmd BufNewFile,BufRead *.hbs :iabbrev <buffer> div <div></div><left><left><left><left><left><left>
	autocmd BufNewFile,BufRead *.hbs :iabbrev <buffer> <div> NOPENOPENOPE
	autocmd BufNewFile,BufRead *.hbs :iabbrev <buffer> divc <div class=""></div><left><left><left><left><left><left><left><left>
augroup END

augroup filetype_bat
	autocmd!
	autocmd FileType dosbatch nnoremap <buffer> <localleader>c Irem <esc>
	autocmd FileType dosbatch vnoremap <buffer> <localleader>c Irem <esc>
augroup END

augroup filetype_markdown
	autocmd!
	autocmd FileType markdown onoremap ih :<c-u>execute "normal! ?^[-=][-=]\\+$\\r:nohlsearch\\rkvg_"<cr>
	autocmd FileType markdown onoremap ah :<c-u>execute "normal! ?^[-=][-=]\\+$\\r:nohlsearch\\rg_vk0"<cr>
augroup END

