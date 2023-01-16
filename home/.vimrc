" Plugin Manager settings --------------------- {{{
execute pathogen#infect()
" I think these are optional:
set nocompatible
filetype plugin indent on " also required for python-mode
" }}}

" Basic Settings --------------------- {{{
" if settings are not behaving as expected, use `:verbose set setting?`
syntax on
" let g:ctrlp_custom_ignore = '\v[\/]\.(compiled|node_modules|cdk.out|conda-env)$'
let g:ctrlp_custom_ignore = {'dir':  'conda-env$\|node_modules$\|compiled$\|cdk.out$' }
  " can also ignore files like so: 'file': '\.exe$\|\.so$\|\.dat$'
if executable('ag')
  " https://github.com/mileszs/ack.vim#can-i-use-ag-the-silver-searcher-with-this
  let g:ackprg = 'ag --vimgrep'
  cnoreabbrev ag Ack
  cnoreabbrev aG Ack
  cnoreabbrev Ag Ack
  cnoreabbrev AG Ack
endif
colors solarized
" colors zenburn
" colors badwolf
" colors vividchalk
let hour = strftime("%H") 
" Not sure if this will work with themes other than solarized
if 6 <= hour && hour < 18
  set background=light
else 
  set background=dark
endif
behave xterm
set runtimepath^=~/.vim/bundle/ctrlp.vim
set laststatus=2
set statusline=%F[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
set autoread
set cursorline
set hidden
set number
set relativenumber " this is a good options normally, as it usually requires you to press less numbers when jumping around (use 22j instead of 354G). At the moment I am trying to get better at touch typing the number keys.
set ruler
set hlsearch
set nopaste
set colorcolumn=80
" set textwidth=79 " TODO: find out whey textwidth is being overwritten on mac (see
" `:verbose set textwidth?`)
set textwidth=0
set wrap
set linebreak
set showbreak=↪
set breakindent
set backspace=indent,eol,start
set noswapfile
set fileformat=unix
set fileformats=unix,dos
set foldlevelstart=0
set updatetime=250
set incsearch
set softtabstop=2 " This will deleted two space when I backspace on space characters. Related to settings below.
" the 3 settings that follow mean that spaces will always be used for tabs. See
" `:help tabstop` for more info
set shiftwidth=2
set expandtab
set tabstop=2
" ignores
set wildignore+=*/node_modules/*,.git,*/target/*

" Creates a $VIMHOME variable (currently used for spellfile)
if has('win32') || has ('win64')
    let $VIMHOME = $HOME."\\vimfiles"
else
    let $VIMHOME = $HOME."/.vim"
endif

" So that delete operations gets put into clipboard history. Required for cut / move command from cutlass plugin (which I was using at some point if using).
" let g:yoinkIncludeDeleteOperations=1 

" ALE settings:
" let g:ale_linters = {'html': ['htmlhint']}
let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'css': ['prettier'],
\   'html': ['prettier'],
\}
" make ALE take precendence over gitgutter: https://github.com/dense-analysis/ale/issues/569#issuecomment-534975062
let g:ale_sign_priority = 11
let g:gitgutter_sign_priority=5
let g:syntastic_sign_priority=10

" Warewolf plugin setttings (changes color scheme based on time of day)
" https://github.com/jonstoler/werewolf.vim
" default 8, use 24 hour format
let g:werewolf_day_start = 7
" default 20, 24 hour format
let g:werewolf_day_end = 18

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
" " TODO: make cursor a bar for insert mode.
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
" quickly edit .vimrc:
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source! $MYVIMRC<cr>

iabbrev @@ jazzab@gmail.com
iabbrev ssig --<cr>Jared Johnston<cr>jazzab@gmail.com
iabbrev teh the
iabbrev taht that
iabbrev tehn then
iabbrev waht what

" quitting
nnoremap command! Wq wq
nnoremap command! WQ wq
nnoremap command! W w
nnoremap command! Q q
" this doesn't work anymore since `cnoremap <expr> <CR> getcmdtype() == '/' ? '<CR>zz' : '<CR>'` was implemented
cabbrev Wq wq
cabbrev WQ wq
cabbrev Q q
cabbrev W w

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

" Find next selection (/ and \ still need to be escaped) TODO: fix this
vnoremap <leader>f y/\V<c-r>"<cr>

" put search matches at centre screen
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz

" Formatting:
" Format selection
vnoremap <leader>F gq
" run autoformat
noremap <F3> :Autoformat<CR>

" Navigation
nnoremap H ^
nnoremap L g_
nnoremap <leader>H H
nnoremap <leader>L L
vnoremap H ^
vnoremap L g_
vnoremap <leader>H H
vnoremap <leader>L L
onoremap H ^
onoremap L g_
onoremap <leader>H H
onoremap <leader>L L

" make Backspace useful in normal mode
nnoremap <BS> hx

" change in next and last __
onoremap if( :<c-u>normal! f(vi(<cr>
onoremap iF( :<c-u>normal! F)vi(<cr>
onoremap if[ :<c-u>normal! f[vi[<cr>
onoremap iF[ :<c-u>normal! F]vi[<cr>
onoremap if{ :<c-u>normal! f{vi{<cr>
onoremap iF{ :<c-u>normal! F}vi{<cr>
onoremap if< :<c-u>normal! f<vi<<cr>
onoremap iF< :<c-u>normal! F>vi<<cr>
onoremap if' :<c-u>normal! f'vi'<cr>
onoremap iF' :<c-u>normal! F'vi'<cr>
onoremap if" :<c-u>normal! f"vi"<cr>
onoremap iF" :<c-u>normal! F"vi"<cr>
onoremap if` :<c-u>normal! f`vi`<cr>
onoremap iF` :<c-u>normal! F`vi`<cr>

let os = substitute(system('uname'), "\n", "", "")
if os == "Linux"
  " Setting linux specific settings:"
  set clipboard=unnamed
  vnoremap <leader>y "+y
  vnoremap <leader>p "+p
  vnoremap <leader>P "+P
  nnoremap <leader>p "+p
  nnoremap <leader>P "+P
  inoremap <leader>p <c-r>+
  " Copy all
  nnoremap <leader>a ggVG"+y
  " Clipboard contents persists after vim session:
  autocmd VimLeave * call system("xsel -ib", getreg('+'))
elseif os == "Darwin"
  " Setting Mac specific settings:"
  if $TMUX == '' 
    set clipboard+=unnamed
  endif
  nnoremap <leader><c-v> "*P
  inoremap <leader><c-v> <esc>"*pa
  vnoremap <leader><c-c> "*y
  vnoremap <leader>y "*y
  vnoremap <leader>p "*p
  vnoremap <leader>P "*P
  nnoremap <leader>p "*p
  nnoremap <leader>P "*P
  inoremap <leader>p <c-r>+
  " Copy all
  nnoremap <leader>a ggVG"*y
else
  " echom "OS variable = " . os
  vnoremap <leader>y "*y
  vnoremap <leader>p "*p
  vnoremap <leader>P "*P
  nnoremap <leader>p "*p
  nnoremap <leader>P "*P
  inoremap <leader>p <c-r>+
  " Copy all
  nnoremap <leader>a ggVG"*y
  source C:/Program\ Files\ (x86)/Vim/_vimrc
endif

" requires Tabluarize plugin. Came from
" http://vimcasts.org/episodes/aligning-text-with-tabular-vim/
nnoremap <leader>t :Tabularize /
vnoremap <leader>t :Tabularize /

" quick set syntax
nnoremap <localleader>sql :set syntax=sql<cr>
" I think this might have been for pebble template files that Wherescape uses at TCC
nnoremap <localleader>peb :syn match Folded /{#.*#}/<cr>:syn match PmenuSel /{{.*}}/<cr>:syn match SignColumn /{%.*%}/<cr>

" format SQL - requires https://pypi.org/project/sqlparse/
" TOOD: improve this
vnoremap <localleader>fsql :%!sqlformat --reindent --keywords upper --identifiers lower -<CR>
" format json - requires jq
noremap <localleader>fjson :%!jq .<CR>

" inoremap <leader>p <esc>:call Paste()<cr> " TODO: implement when Paste() method is fixed

" toggle wrap
nnoremap <localleader>w :set wrap!<CR>

" " cutlass shortcuts: https://github.com/svermeulen/vim-cutlass
" nnoremap m d
" xnoremap m d
" nnoremap mm dd
" nnoremap M D
" 
" " remapping the mark key because m is remaped to be a cutlass shortcut
" nnoremap <leader>m m

" vim-yoink mappings - https://github.com/svermeulen/vim-yoink
nmap <c-n> <plug>(YoinkPostPasteSwapBack)
nmap <c-p> <plug>(YoinkPostPasteSwapForward)
nmap p <plug>(YoinkPaste_p)
nmap P <plug>(YoinkPaste_P)
" Also replace the default gp with yoink paste so we can toggle paste in this case too
nmap gp <plug>(YoinkPaste_gp)
nmap gP <plug>(YoinkPaste_gP)
" Keeping autoformat stuff together:
let g:yoinkAutoFormatPaste=1
nmap <c-=> <plug>(YoinkPostPasteToggleFormat)
" Allows yoink to be used in cojunction with ctrlp, but using p and P (instead
" of <c-p> and <c-P> to cycle the register stack:
nmap <expr> p yoink#canSwap() ? '<plug>(YoinkPostPasteSwapBack)' : '<plug>(YoinkPaste_p)'
nmap <expr> P yoink#canSwap() ? '<plug>(YoinkPostPasteSwapForward)' : '<plug>(YoinkPaste_P)'
" Note: yoink doesn't work when pasting from visual mode. Could I make it work
" with the mapping below? No, it doesn't work. I think the mapping interrupts
" the action so Yoink doesn't realise something has just been pasted.
" xnoremap d dP

" NERDTree
nnoremap <leader>nt :NERDTreeFocus<CR>
let NERDTreeCustomOpenArgs = {'file':{'where':'p','keepopen':0}} " when pressing <CR> in NERDTree, open the file and close NERDTree

" Vim Codex
nnoremap <leader>c <Esc>:CreateCompletionLine<CR>
 
" }}}

" Autogroup commands ---------- {{{

" Guitar tabs -------------------{{{
augroup filetype_guitar_tab
  autocmd!
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
  :autocmd BufNewFile,BufRead *.gtab nnoremap <buffer> 1 s1<esc>
  :autocmd BufNewFile,BufRead *.gtab nnoremap <buffer> 2 s2<esc>
  :autocmd BufNewFile,BufRead *.gtab nnoremap <buffer> 3 s3<esc>
  :autocmd BufNewFile,BufRead *.gtab nnoremap <buffer> 4 s4<esc>
  :autocmd BufNewFile,BufRead *.gtab nnoremap <buffer> 5 s5<esc>
  :autocmd BufNewFile,BufRead *.gtab nnoremap <buffer> 6 s6<esc>
  :autocmd BufNewFile,BufRead *.gtab nnoremap <buffer> 7 s7<esc>
  :autocmd BufNewFile,BufRead *.gtab nnoremap <buffer> 8 s8<esc>
  :autocmd BufNewFile,BufRead *.gtab nnoremap <buffer> 9 s9<esc>
  :autocmd BufNewFile,BufRead *.gtab nnoremap <buffer> 0 s0<esc>
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
  au BufReadPost *.gtab if getline(1) =~ "BPM" | call SetBPM(getline(1)) | else | echom "no BPM set. put BPM=xxx in the first line" | endif

  function! SetBPM(firstLine)
    let g:bpm = substitute(a:firstLine, "BPM=", "", "")
    echom "Autoscroll supported. Press Ctrl-a to start"
    " TODO: set buffer local value for BPM to pass into ScrollDown
  endfunction

  :autocmd BufNewFile,BufRead *.gtab nmap <buffer> <c-a> i<c-a>
  :autocmd BufNewFile,BufRead *.gtab imap <buffer> <silent> <expr> <c-a> ScrollDown("\<c-a>", g:bpm)
  
  function! ScrollDown(playMap, speed)
    try " source: http://vim.wikia.com/wiki/Capture_all_keys
      let char = getchar()
    endtry
    if char == 100 " u is pressed -> jump up 8 lines
      let s:movement = "\<C-O>\<C-E>\<C-O>\<C-E>\<C-O>\<C-E>\<C-O>\<C-E>\<C-O>\<C-E>\<C-O>\<C-E>\<C-O>\<C-E>\<C-O>\<C-E>"
    elseif char == 117 " d is pressed -> jump down 8 lines
      let s:movement = "\<C-O>\<C-Y>\<C-O>\<C-Y>\<C-O>\<C-Y>\<C-O>\<C-Y>\<C-O>\<C-Y>\<C-O>\<C-Y>\<C-O>\<C-Y>\<C-O>\<C-Y>"
    else " just move down one line
      let s:movement = "\<C-O>\<C-E>"
    endif
    if char == "\<Esc>"
      return ''
    endif
    echo "Autoscroll enabled (press Ctrl-c to cancel)"
    let s:waitTime = float2nr(60.0 / a:speed * 4)
    execute "sleep " . s:waitTime
    redraw
    return s:movement."\<C-R>=Redraw()\<CR>".a:playMap
  endfunction

  function! Redraw()
    redraw
    return ''
  endfunction
augroup END
" }}}

" Python -------------------{{{
augroup filetype_python
  autocmd!
  autocmd FileType python set wrap
  autocmd FileType python nnoremap <buffer> <localleader>c I# <esc>
  " AIMS commend to quickly deploy the update_sites lambda:
  autocmd FileType python nnoremap <buffer> <localleader>D :! sam build && sam deploy<CR>
  " add Pydiction (python dictionary) to vim autocomplete.
  " see https://github.com/rkulla/pydiction
  let g:pydiction_location = '~/.vim/bundle/pydiction/complete-dict'
  " sets foldable sections to code blocks:
  autocmd FileType python setlocal foldmethod=indent
  autocmd FileType python let g:pymode_lint_ignore=['E501']
  autocmd BufWritePre *.py :%s/\s\+$//e
  autocmd BufWritePost *.py :PymodeLint
augroup END
" }}}
"
" Sonic_pi -------------------{{{
augroup filetype_sonic_py
  autocmd!
  " could check to see if sonic_pi is open here first. Try sonicpi#detect()
  " function in plugin/sonicpi.vim
  autocmd BufNewFile,BufRead *.rb let g:vim_redraw=1
augroup END
" }}}

" Javascript -------------------{{{
augroup filetype_js
  autocmd!
  vnoremap <localleader>B <esc>`>a</strong><esc>`<i<strong><esc>
  " autocmd BufNewFile,BufRead *.js echo "!!!!!" | echo "Don't forget that you can use tern: https://github.com/ternjs/tern_for_vim" | echo "!!!!!"
  " autocmd BufNewFile,BufRead *.js echo "!!!!!" | echo "Don't forget to use <c-n> for vim completion" | echo "!!!!!"
  autocmd FileType javascript nnoremap <buffer> <localleader>c I// <esc>
  autocmd FileType javascript nnoremap <buffer> <localleader>d I// d: <esc>
  autocmd BufWritePre *.js :%s/\s\+$//e
  " TODO: add syntax highlighting for 'yield' in javascript
  " mark a line for deletion by commenting with `// d:`
  autocmd FileType javascript nnoremap <buffer> <localleader>d I// d: <esc>
  autocmd FileType javascript nnoremap <buffer> ZZ :<c-u>execute "normal! :g_^\\s*// d:_d\r:wq\r"<cr>
augroup END
" }}}

" html -------------------{{{
augroup filetype_html
  autocmd!
  " make selection bold:
  vnoremap <localleader>B <esc>`>a</strong><esc>`<i<strong><esc>
  " fold tags with `\f`
  autocmd FileType html nnoremap <buffer> <localleader>f Vatzf
  " does this fold method conflict with the <localleader>f command above?
  autocmd FileType html setlocal foldmethod=indent
  " TODO: find an html plugin to autocomplete tags
augroup END
" }}}

" hbs -------------------{{{
augroup filetype_hbs
  autocmd!
  " fold tags with `\f`
  autocmd BufNewFile,BufRead *.hbs nnoremap <buffer> <localleader>f Vatzf
augroup END
" }}}

" Sass -------------------{{{
augroup filetype_sass
  autocmd!
  autocmd BufNewFile,BufRead *.sass set noexpandtab
  autocmd BufNewFile,BufRead *.sass set tabstop=2
  autocmd BufNewFile,BufRead *.sass set softtabstop=0
augroup END
" }}}

" batch -------------------{{{
augroup filetype_bat
  autocmd!
  autocmd FileType dosbatch nnoremap <buffer> <localleader>c Irem <esc>
  autocmd FileType dosbatch vnoremap <buffer> <localleader>c Irem <esc>
augroup END
" }}}

" markdown ------------------ {{{
augroup filetype_markdown
  autocmd!
  " operate on headding of current section:
  autocmd FileType markdown onoremap ih :<c-u>execute "normal! ?^[-=][-=]\\+$\r:nohlsearch\rkvg_"<cr>
  autocmd FileType markdown onoremap ah :<c-u>execute "normal! ?^[-=][-=]\\+$\r:nohlsearch\rg_vk0"<cr>
  autocmd FileType markdown set spell spelllang=en_au
  autocmd FileType markdown setlocal spellfile+=$VIMHOME/spell/en.utf-8.add
  autocmd FileType markdown setlocal spellfile+=oneoff.utf-8.add
  autocmd FileType markdown :iabbrev <buffer> fc feature class
  " TODO: add a shortcut to search for non ASCII characters. Ie, do this
  " `/[^\x00-\x7F]`
  " let g:vim_markdown_folding_disabled=1
  let g:vim_markdown_folding_style_pythonic = 1
augroup END
" }}}

" Vim files ------------------ {{{
augroup filetype_vim
  autocmd!
  " sets foldable sections to those identified by the marker:
  autocmd FileType vim setlocal foldmethod=marker
  autocmd FileType vim nnoremap <buffer> <localleader>c I" <esc>
  autocmd FileType vim :iabbrev <buffer> == ==#
augroup END
" }}}

" JSON -------------------{{{
augroup filetype_json
  autocmd!
  autocmd FileType json setlocal foldmethod=syntax
augroup END
" }}}

" PSQL temp files -------------------{{{
au BufRead /tmp/psql.edit.* set syntax=sql
" }}}

" }}}

" Functions ---------- {{{

" loads local vim settings. Read move here:
" https://vi.stackexchange.com/questions/77/applying-settings-to-a-directory-tree-only
if filereadable(".local_vimrc")
    source .local_vimrc
endif

function Paste()
  " sets paste mode before pasting
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

" }}}

" new stuff: -------------- {{{
" autocmd BufNewFile,BufRead * echo "don't forget to use vim-surround plugin"
" these remappings set a mark so I can jump back to a previous location with `` or '' or <c-o>. " doesn't work in intelliJ
nnoremap <silent> k :<C-U>execute 'normal!' (v:count > 1 ? "m'" . v:count : '') . 'k'<CR>
nnoremap <silent> j :<C-U>execute 'normal!' (v:count > 1 ? "m'" . v:count : '') . 'j'<CR>
"
" TODO: apply this instead: https://www.reddit.com/r/vim/comments/49kvaf/making_n_and_n_more_consistent/
" Makes search matches appear centre screen, but breaks other functionality
" above (cabbrev). get more info here with possable alternatvie (TODO): https://vi.stackexchange.com/questions/10775/how-can-i-automatically-center-first-search-result
cnoremap <expr> <CR> getcmdtype() == '/' ? '<CR>zz' : '<CR>'
" Makes n and N search direction consistent regardless of whether ? or / was
" used. see for more info: https://www.reddit.com/r/vim/comments/49kvaf/making_n_and_n_more_consistent/
noremap <expr> n 'Nn'[v:searchforward]
noremap <expr> N 'nN'[v:searchforward]
" TODO: look into another option that shows context for matches, making the
" need to centre after matching redundant.
set scrolloff=5 " did this break something? I remember having it enabled once before, so why was not enabled?
"
"
" check this out: https://superuser.com/questions/399296/256-color-support-for-vim-background-in-tmux
" cmap w!! %!sudo tee > /dev/null %
"
"
" TODO: set up Neomake: https://www.gregjs.com/vim/2015/linting-code-with-neovim-and-neomake-eslint-edition/
" }}}
