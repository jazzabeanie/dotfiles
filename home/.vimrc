" Basic Settings --------------------- {{{
" if settings are not behaving as expected, use `:verbose set setting?`
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
" set relativenumber " this is a good options normally, as it usually requires you to press less numbers when jumping around (use 22j instead of 354G). At the moment I am trying to get better at touch typing the number keys.
set ruler
set hlsearch
set nopaste
set colorcolumn=80
" set textwidth=79 " TODO: find out whey textwidth is being overwritten (see
" `:verbose set textwidth?`)
set textwidth=0
set wrap
set backspace=indent,eol,start
set noswapfile
set fileformat=unix
set fileformats=unix,dos
set foldlevelstart=0
set updatetime=250
set incsearch
set softtabstop=2 " Is this related to settings below?
" the 3 settings that follow mean that spaces will always be used for tabs. See
" `:help tabstop` for more info
set shiftwidth=2
set expandtab
set tabstop=2

if $TMUX == '' " TODO: solve this issue. Read more to understand this issue: https://stackoverflow.com/questions/11404800/fix-vim-tmux-yank-paste-on-unnamed-register
  if has('unnamedplus') " for linux
    set clipboard=unnamedplus
  else " for mac
    set clipboard=unnamed
  endif
endif
" TODO: solve the tmux issue here.

" }}}

" Statusline and cursor ------------- {{{
" this is now all taken care of by vim-airline
" set laststatus=2
" set statusline=%.30F " Full filename, to a max of 30 chars
" set statusline+=[%{strlen(&fenc)?&fenc:'none'},%{&ff}] "File enconding?, ??
" set statusline+=%h " Help buffer flag, text is "[help]"
" set statusline+=%m " Modified flag
" set statusline+=%r " Readonly flag [RO]
" set statusline+=%y " filetype
" set statusline+=%= " Separation between left and right
" set statusline+=%c, " Column number
" set statusline+=%l/%L " line number over total number of lines in buffer
" set statusline+=\  " Literal space
" set statusline+=%P " Percentage through file of window
"
" " Cursor ------------- {{{
" " TODO: sort my cursor so that it's a bar for insert mode.
"
" if &term =~ "xterm\\|rxvt"
"   " source: https://stackoverflow.com/questions/7614546/vim-cursorline-color-change-in-insert-mode
"   " see also :help terminal-options
"   " use an orange cursor in insert mode
"   let &t_SI = "\<Esc>]12;orange\x7"
"   " use a red cursor otherwise
"   let &t_EI = "\<Esc>]12;red\x7"
"   silent !echo -ne "\033]12;red\007"
"   " reset cursor when vim exits
"   autocmd VimLeave * silent !echo -ne "\033]112\007"
"   " use \003]12;gray\007 for gnome-terminal
" endif
"
" " }}}
" }}}

" Mappings ------------ {{{
" See key notation for all the key codes:
" http://vimdoc.sourceforge.net/htmldoc/intro.html#notation

let mapleader =","
let maplocalleader = "\\"
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

iabbrev @@ jazzab@gmail.com
iabbrev ssig --<cr>Jared Johnston<cr>jazzab@gmail.com
iabbrev teh the
iabbrev tehn then
iabbrev waht what

inoremap <leader><c-u> <esc>viwUea
nnoremap <leader><c-u> viwUe

" escaping
inoremap jk <esc>l
onoremap jk <esc>
inoremap Jk <esc>l
onoremap Jk <esc>

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

" " surround selection in i __ (this is not needed anymore with vim-surround)
" vnoremap <leader>" <esc>`>a"<esc>`<i"<esc>
" vnoremap <leader>' <esc>`>a'<esc>`<i'<esc>
" vnoremap <leader>( <esc>`>a)<esc>`<i(<esc>
" vnoremap <leader>[ <esc>`>a]<esc>`<i[<esc>
" vnoremap <leader>{ <esc>`>a}<esc>`<i{<esc>

" change in next and last __
onoremap if( :<c-u>normal! f(vi(<cr>
onoremap iF( :<c-u>normal! F)vi(<cr>
onoremap if{ :<c-u>normal! f{vi{<cr>
onoremap iF{ :<c-u>normal! F}vi{<cr>
onoremap if' :<c-u>normal! f'vi'<cr>
onoremap iF' :<c-u>normal! F'vi'<cr>
onoremap if" :<c-u>normal! f"vi"<cr>
onoremap iF" :<c-u>normal! F"vi"<cr>

" TODO: address the clipboard issue accross all OS:
function Paste()
	if &paste
		echom "paste mode already set"
		" TOOD: execute paste here
	else
		echom "setting paste"
		set paste
		" TOOD: execute paste here
		set nopaste
	endif
endfunction

" Linux clipboard commands:
vnoremap <leader>y "+y
vnoremap <leader>p "+p
vnoremap <leader>P "+P
nnoremap <leader>p "+p
nnoremap <leader>P "+P
inoremap <leader>p <c-r>+
" inoremap <leader>p <esc>:call Paste()<cr> " TODO: uncomment when Paste() method is fixed
"
" clipboard commands
nnoremap <leader><c-v> "*P
inoremap <leader><c-v> <esc>"*pa
vnoremap <leader><c-c> "*y
" vnoremap <leader>y "*y

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
  " add Pydiction (python dictionary) to vim autocomplete.
  " see https://github.com/rkulla/pydiction
  let g:pydiction_location = '~/.vim/bundle/pydiction/complete-dict'
augroup END
" }}}

" Javascript files -------------------{{{
augroup filetype_js
  autocmd!
  vnoremap <localleader>B <esc>`>a</strong><esc>`<i<strong><esc>
  " autocmd BufNewFile,BufRead *.js echo "!!!!!" | echo "Don't forget that you can use tern: https://github.com/ternjs/tern_for_vim" | echo "!!!!!"
  autocmd FileType javascript nnoremap <buffer> <localleader>c I// <esc>
  " these lines are commented out because I should start to try to use <c-n>
  " for vim completion
  " autocmd FileType javascript :iabbrev <buffer> func function
  " autocmd FileType javascript :iabbrev <buffer> ret return
  " autocmd FileType javascript :iabbrev <buffer> yi yield
  autocmd BufWritePre *.js :%s/\s\+$//e
  " TODO: add syntax highlighting for 'yield' in javascript
  " TODO: add a command that allows me to mark a line for deletion, perhaps
  " using
  autocmd FileType javascript nnoremap <buffer> ZZ :<c-u>execute "normal! :g_^\\s*//d_d\r:wq\r"<cr>
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

" Functions ---------- {{{

" loads local vim settings. Read move here:
" https://vi.stackexchange.com/questions/77/applying-settings-to-a-directory-tree-only
if filereadable(".local_vimrc")
    source .local_vimrc
endif

" }}}

" new stuff: -------------- {{{
" autocmd BufNewFile,BufRead * echo "don't forget to use vim-surround plugin"
" autocmd BufNewFile,BufRead * nnoremap h <nop>
" autocmd BufNewFile,BufRead * nnoremap j <nop>
" autocmd BufNewFile,BufRead * nnoremap k <nop>
" autocmd BufNewFile,BufRead * nnoremap l <nop>
"
"
"
" TODO: set up Neomake: https://www.gregjs.com/vim/2015/linting-code-with-neovim-and-neomake-eslint-edition/
" }}}
