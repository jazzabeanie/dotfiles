" See key notation for all the key codes: http://vimdoc.sourceforge.net/htmldoc/intro.html#notation

" Basic Settings --------------------- {{{
execute pathogen#infect()
syntax on
filetype plugin indent on
colors zenburn
behave xterm
set runtimepath^=~/.vim/bundle/ctrlp.vim
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
" set textwidth=79
set textwidth=0
set wrap
set backspace=indent,eol,start
set noswapfile
set fileformat=unix
set fileformats=unix,dos
set shiftwidth=2
set softtabstop=2
set tabstop=2
set foldlevelstart=0

if has('unnamedplus') " for linux
  set clipboard=unnamedplus
else " for mac
  set clipboard=unnamed
endif

" add Pydiction (python dictionary) to vim autocomplete.
" see https://github.com/rkulla/pydiction
let g:pydiction_location = '~/.vim/bundle/pydiction/complete-dict'
" }}}

" Statusline ------------- {{{
set laststatus=2
set statusline=%.30F " Full filename, to a max of 30 chars
set statusline+=[%{strlen(&fenc)?&fenc:'none'},%{&ff}] "File enconding?, ??
set statusline+=%h " Help buffer flag, text is "[help]"
set statusline+=%m " Modified flag
set statusline+=%r " Readonly flag [RO]
set statusline+=%y " filetype
set statusline+=%= " Separation between left and right
set statusline+=%c, " Column number
set statusline+=%l/%L " line number over total number of lines in buffer
set statusline+=\  " Literal space
set statusline+=%P " Percentage through file of window
" }}}

" Mappings ------------ {{{

let mapleader =","
let maplocalleader = "\\"

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

" Search case insensitive by deault
nnoremap / /\c
nnoremap ? ?\c

" Find next selection
" TODO
" vnoremap <leader>

" Format selection
vnoremap <leader>f gq


" Navigation
nnoremap H ^
nnoremap L $
nnoremap <leader>H H
nnoremap <leader>L L
vnoremap H ^
vnoremap L $
vnoremap <leader>H H
vnoremap <leader>L L
onoremap H ^
onoremap L $
onoremap <leader>H H
onoremap <leader>L L

" make Backspace useful in normal mode
" nnoremap <BS> i<BS><esc>l
nnoremap <BS> hx

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
" Linux paste commands:
vnoremap <leader>y "+y
inoremap <leader>p <c-r>+
nnoremap <leader>p "+p
nnoremap <leader>P "+P

" }}}

" Autogroup commands ---------- {{{

" Guitar tabs -------------------{{{
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
" }}}

" Python files -------------------{{{
augroup filetype_python
	autocmd!
	autocmd FileType python nnoremap <buffer> <localleader>c I# <esc>
	autocmd FileType python :inoremap <buffer> if if:<left>
augroup END
" }}}

" Javascript files -------------------{{{
augroup filetype_js
	autocmd!
  vnoremap <localleader>B <esc>`>a</strong><esc>`<i<strong><esc>
	" autocmd BufNewFile,BufRead *.js echo "!!!!!" | echo "Don't forget that you can use tern: https://github.com/ternjs/tern_for_vim" | echo "!!!!!" 
	autocmd FileType javascript nnoremap <buffer> <localleader>c I// <esc>
	autocmd FileType javascript :iabbrev <buffer> if if (
  " these lines are commented out because I should start to try to use <c-n>
  " for vim completion
	" autocmd FileType javascript :iabbrev <buffer> func function
	" autocmd FileType javascript :iabbrev <buffer> ret return
  " autocmd FileType javascript :iabbrev <buffer> yi yield
	autocmd BufWritePre *.js :%s/\s\+$//e
  " TODO: add syntax highlighting for 'yield' in javascript
  " TODO: add a command that allows me to mark a line for deletion, perhaps
  " using 
augroup END
" }}}

" html files -------------------{{{
augroup filetype_html
	autocmd!
  vnoremap <localleader>B <esc>`>a</strong><esc>`<i<strong><esc>
	autocmd FileType html nnoremap <buffer> <localleader>f Vatzf
	autocmd FileType html :iabbrev <buffer> div <div></div><left><left><left><left><left><left>
	autocmd FileType html :iabbrev <buffer> <div> NOPENOPENOPE
	autocmd FileType html :iabbrev <buffer> divc <div class=""></div><left><left><left><left><left><left><left><left>
augroup END
" }}}

" hbs files -------------------{{{
augroup filetype_hbs
	autocmd!
	autocmd BufNewFile,BufRead *.hbs nnoremap <buffer> <localleader>f Vatzf
	autocmd BufNewFile,BufRead *.hbs :iabbrev <buffer> div <div></div><left><left><left><left><left><left>
	autocmd BufNewFile,BufRead *.hbs :iabbrev <buffer> <div> NOPENOPENOPE
	autocmd BufNewFile,BufRead *.hbs :iabbrev <buffer> divc <div class=""></div><left><left><left><left><left><left><left><left>
augroup END
" }}}

" batch files -------------------{{{
augroup filetype_bat
	autocmd!
	autocmd FileType dosbatch nnoremap <buffer> <localleader>c Irem <esc>
	autocmd FileType dosbatch vnoremap <buffer> <localleader>c Irem <esc>
augroup END
" }}}

" markdown files ------------------ {{{
augroup filetype_markdown
	autocmd!
	autocmd FileType markdown onoremap ih :<c-u>execute "normal! ?^[-=][-=]\\+$\r:nohlsearch\rkvg_"<cr>
	autocmd FileType markdown onoremap ah :<c-u>execute "normal! ?^[-=][-=]\\+$\r:nohlsearch\rg_vk0"<cr>
augroup END
" }}}

" Vimscript file settings ------------------ {{{
augroup filetype_vim
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

" }}}

" new stuff: -------------- {{{
"
"
"
"
" TODO: set up Neomake: https://www.gregjs.com/vim/2015/linting-code-with-neovim-and-neomake-eslint-edition/
" }}}
