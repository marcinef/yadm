
"Version 5.5

"type ":help X" for help on a command, e.g. ":help ts" for tabstop

set nocp

set expandtab   "replace <Tab> with spaces (except in Makefiles, see below)
set smarttab    "better behaviour when you type <Tab>
set ts=4        "set tabstop to 4 chars
set sw=4        "set shiftwidth (size of indentation) to 4 chars
set ai          "autoindent
set sm          "show mode in bottom line of screen
set bs=2        "make <BS> key more powerful
set ruler       "show screen position
set mouse=v          "and now we have mouse goodness
"temporarily disable mouse

set path=.,/usr/include,~/include
set background=dark
"fixdel          "correct behaviour of <BS> / <Del> (if needed)
"Quit all, no save - WHY WONT <C-q> work?
"ap <C-e> <Esc><Esc>:qa!<CR>
"make <CR> work in Normal mode
nmap <CR> i<CR><Esc>
"make <BS> work in Normal mode
nmap <BS> X
nmap <C-\> 0i# <Esc>
"comment out line when # pressed in normal mode
"nmap <F1> :qa!<CR>
" surround the character under the cursor in single-quotes
" surround the visual selection in single-quotes

" replace an uppercase char with underscore then lower case char

if version < 600
  "custom syntax highlighting
  let mysyntaxfile = "~/.vim/compat/syntax.vim"
endif
syntax on       "turn on highlighting

" autocompletion shows matching
set wildmode=longest,list

" Move text, but keep highlight
vnoremap > ><CR>gv
vnoremap < <<CR>gv

filetype plugin on

" Only do this part when compiled with support for autocommands.
if has("autocmd")

 " In text files, always limit the width of text to 78 characters
 autocmd BufRead *.txt set tw=78

 augroup cprog

  " Remove all cprog autocommands
  au!
  " When starting to edit a file:
  "   For C and C++ files set formatting of comments and set C-indenting on.
  "   For other files switch it off.
  "   Don't change the order, it's important that the line with * comes first.
  autocmd FileType *      set formatoptions=tcql nocindent comments&
  autocmd FileType c,cpp  set formatoptions=croql cindent comments=sr:/*,mb:*,el:*/,://

  "make Ctrl-\ comment out a line (either C or C++ stylee)
  autocmd FileType c      nmap <C-\> I/* <Esc>A */<Esc>
  autocmd FileType cpp    nmap <C-\> I// <Esc>

  " fold functions (vim6)
  autocmd FileType c,cpp  nmap f v/^\s*{\s*$<CR>%zf

  autocmd FileType cpp    ia   ::S std::string
  autocmd FileType cpp    ia   tmpl template <typename
  "autocmd FileType c,cpp  ia   cnost const
  autocmd FileType c,cpp  ia   cosnt const
  autocmd FileType c,cpp  ia   unsigend unsigned
  autocmd FileType c,cpp  ia   unisgned unsigned

  " replace "char*" with "std::string" (actually, replace any 5 chars)
  autocmd FileType cpp    nmap c2s c5lstd::string
  
  "shortcuts to toggle between #include <...> and #include "..."
  autocmd FileType c,cpp  ca syshdr s/^#include "\([^"]*\)"/#include <\1>/
  autocmd FileType c,cpp  ca localhdr s/^#include <\([^>]*\)>/#include "\1"/

 augroup END

 "au FileType python source ~/.vim/syntax/python.vim
 autocmd FileType make  set noexpandtab   "use hard tabs in Makefiles
 autocmd FileType changelog  set noexpandtab   "use hard tabs in ChangeLogs
 autocmd FileType crontab  set noexpandtab   "use hard tabs in crontab

 "make Ctrl-\ comment out a line
 autocmd FileType vim     nmap <C-\> I" <Esc>
 autocmd FileType shellscript,makefile     nmap <C-\> I# <Esc>
 autocmd FileType xml,xslt,dtd,xsd     nmap <C-\> I<!-- <Esc>A --><Esc>
 autocmd FileType sql     nmap <C-\> I-- <Esc>

 "set ts|sw differently for xml/xslt/html
 autocmd FileType xml,xslt,xsl,dtd,xsd,rng,html,htm     set ts=2
 autocmd FileType xml,xslt,xsl,dtd,xsd,rng,html,htm     set sw=2

 autocmd FileType css vmap f :!ppstyles.pl<CR>

endif " has("autocmd")

"enable <Home>, <End>, <PgUp> and <PgDn> keys (<End> is broken)
" map [1~ g<Home>
" imap [1~ g<Home>
"map [4~  g<kEnd>
"imap [4~ g<kEnd>
" map [5~ <PageUp>
" imap [5~ <PageUp>
" map [6~ <PageDown>
" imap [6~ <PageDown>

"make <Insert> change mode
" nmap [2~ i
" imap [2~ 




"make it easier to save and exit
"cmap W	w
"cmap Q q
" ca Q	q
" ca W	w
" ca WQ	wq
" ca Wq	wq
" ca wQ	wq


" hack to get cursors to work at home
"so ~/.vim/cursor_maps


" command! Make3 make PATH=~/bin/gcc3/bin:$PATH
" Common command line typos
"cmap W w
"cmap Q q

" above isnt great, as it stops you being able to use W or Q in :s
"com! -bang Wq :wq<bang>
"com! -bang Qa :qa<bang>
"com! -bang WQ :wq<bang>
"com! -bang QA :qa<bang>
ca Qa qa
ca QA qa
ca Wq wq
ca WQ wq
ca wQ wq
ca qA qa
ca Q q
ca W w

" resize windows
nmap <Esc>Or :res -2<CR>
nmap <Esc>Ot :vert res -2<CR>
nmap <Esc>Ou <C-w>=
nmap <Esc>Ov :vert res +2<CR>
nmap <Esc>Ox :res +2<CR>


" Keyboard mapping for numeric keypad
imap <Esc>OM <c-m>
map <Esc>OM <c-m>
imap <Esc>OP <nop>
map <Esc>OP <nop>
imap <Esc>OQ /
map <Esc>OQ /
imap <Esc>OR *
map <Esc>OR *
imap <Esc>OS -
map <Esc>OS -

imap <Esc>Ol +
imap <Esc>Om -
imap <Esc>On .
imap <Esc>Op 0
imap <Esc>Oq 1
imap <Esc>Or 2
imap <Esc>Os 3
imap <Esc>Ot 4
imap <Esc>Ou 5
imap <Esc>Ov 6
imap <Esc>Ow 7
imap <Esc>Ox 8
imap <Esc>Oy 9
imap <Esc>Oz 0




au BufRead,BufNewFile *.cf set ft=cf3
au BufRead,BufNewFile *.cf3 set ft=cf3

