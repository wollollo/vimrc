" Recognise format, use sensible indentation
filetype plugin on
filetype indent on

" Syntax highlighting
syntax enable

set shellslash

set grepprg=grep\ -nH\ $*

let g:tex_flavor='latex'

" Search options
set ignorecase
set incsearch

" Highlight matching bracket
set showmatch

" show cursor location
set ruler

" Tab options
set expandtab
set shiftwidth=2
set tabstop=2

" Backspace anywhere
set backspace=eol,indent,start

" Indent options
set ai
set si

" Wrap lines
set wrap

" Make jk move on visual lines (wrapped)
map j gj
map k gk

" Window switching
map <C-j> <C-w><C-j>
map <C-k> <C-w><C-k>

" wildmenu (completion menu)
set wildmenu
" wildmenu ignores logs etc
set wildignore=*.aux,*.log,*.idx,*.pdf

" create blank newlines but stay in normal mode
nnoremap <silent> zj o<Esc>
nnoremap <silent> zk O<Esc>

" space toggles folds " might interfere with abbr?
noremap <space> za

" save and compile, latex
map <Leader>w :w <Enter> \ll

" reload this file
map <Leader>s :so $MYVIMRC <Enter>

" some window sizes
map <Leader>ww :set lines=20 columns=300 <Enter>
map <Leader>wh :set lines=200 columns=80 <Enter>

" Stuff for sumatra forward/reverse search " Is in ftplugin/tex.vim
" let g:Tex_CompileRule_pdf='pdflatex --synctex=-1 -src-specials -interaction=nonstopmode $*'
" let g:Tex_ViewRule_pdf = 'SumatraPDF -inverse-search "gvim -c \":RemoteOpen +\%] \%f\""'

" some abbreviations
abbreviate iso isomorphism
abbreviate isos isomorphisms
abbreviate isic isomorphic
abbreviate TFAE the following are equivalent
abbreviate wrt with respect to

" sources:
" stackoverflow, what is in your .vimrc?
" amix.dk/vim/vimrc.html
