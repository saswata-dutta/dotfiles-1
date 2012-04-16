" No need for vi compatibility
set nocompatible

" Encoding
set encoding=utf-8

" Line numbering
set number
set numberwidth=4
set ruler

" We want colors!
syntax on

" Whitespace stuff
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set list listchars=tab:�\ ,trail:�,nbsp:�

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc

" Status bar
set laststatus=2

" Say no to welcome screen
set shortmess+=I

" History & backups
set nobackup
set nowritebackup
set noswapfile
set history=1000

" Highlight characters in column >80
set colorcolumn=80

" CTags
map <Leader>rt :!ctags --extra=+f -R *<CR><CR>

" Thorfile, Rakefile and Gemfile are Ruby
au BufRead,BufNewFile {Gemfile,Gemfile.local,Rakefile,Thorfile,config.ru} set ft=ruby

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" load the plugin and indent settings for the detected filetype
filetype plugin indent on

" Use modeline overrides
set modeline
set modelines=10

" ~~~~~~~~~~~~ key bindings ~~~~~~~~~~~~~~

" Leader key
let mapleader=","

" Easy window switching
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Hide search highlighting
nnoremap <silent> <Space> <CR> :noh<CR><CR>

" Move line(s) of text using Alt+j/k
nnoremap <silent> <A-j> :m+<CR>==
nnoremap <silent> <A-k> :m-2<CR>==
inoremap <silent> <A-j> <Esc>:m+<CR>==gi
inoremap <silent> <A-k> <Esc>:m-2<CR>==gi
vnoremap <silent> <A-j> :m'>+<CR>gv=gv
vnoremap <silent> <A-k> :m-2<CR>gv=gv

" allow moving with j/k in insert mode
inoremap <c-j> <Down>
inoremap <c-k> <Up>
inoremap <c-h> <Left>
inoremap <c-l> <Right>

" Indenting with Alt + [ and ]
nmap <A-[> <<
nmap <A-]> >>
nmap <A-h> <<
nmap <A-l> >>
vmap <A-[> <gv
vmap <A-]> >gv

" Auto indent whole file
nnoremap <silent> <leader>=call("normal gg=G")<CR>

" disable arrow keys
inoremap <Up>    <NOP>
inoremap <Down>  <NOP>
inoremap <Left>  <NOP>
inoremap <Right> <NOP>
noremap  <Up>    <NOP>
noremap  <Down>  <NOP>
noremap  <Left>  <NOP>
noremap  <Right> <NOP>

" smart file rename
" stolen from: https://github.com/garybernhardt/dotfiles/blob/master/.vimrc
function! RenameFile()
  let old_name = expand('%')
  let new_name = input('New file name: ', expand('%'))
  if new_name != '' && new_name != old_name
    exec ':saveas ' . new_name
    exec ':silent !rm ' . old_name
    redraw!
  endif
endfunction
map <leader>m :call RenameFile()<cr>

" convert var assignment to rspec let
" stolen from: https://github.com/garybernhardt/dotfiles/blob/master/.vimrc
function! PromoteToLet()
  :normal! dd
  :exec '?^\s*it\>'
  :normal! P
  :.s/\(\w\+\) = \(.*\)$/let(:\1) { \2 }/
  :normal ==
endfunction
:command! PromoteToLet :call PromoteToLet()
:map <leader>p :PromoteToLet<cr>

" ~~~~~~~~~~~~ plugins ~~~~~~~~~~~~~~

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle "gmarik/vundle"

" vimscript extensions
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"

" the best color scheme ever
Bundle "altercation/vim-colors-solarized"
colorscheme solarized
set background=dark

" NERDTree
Bundle "scrooloose/nerdtree"
Bundle "scrooloose/nerdcommenter"

nmap <silent> <leader>n :NERDTreeToggle<CR>

let NERDTreeMapOpenSplit = "s"
let NERDTreeMapOpenVSplit = "v"
let NERDTreeMinimalUI = 1
let NERDTreeIgnore=['\.rbc$', '\~$']

" various utils
Bundle "kien/ctrlp.vim"
Bundle "mileszs/ack.vim"
Bundle "garbas/vim-snipmate"
Bundle "honza/snipmate-snippets"
Bundle "BufOnly.vim"
Bundle "tpope/vim-abolish"
Bundle "tpope/vim-surround"
Bundle "vim-scripts/taglist.vim"
Bundle "sickill/vim-pasta"
Bundle "kana/vim-smartinput"

Bundle "sjl/vitality.vim"
:au FocusLost * silent! wa

Bundle "mattn/gist-vim"
let g:github_token = $GITHUB_TOKEN
let g:gist_clip_command = 'pbcopy'

Bundle "scrooloose/syntastic"
let g:syntastic_check_on_open=1

Bundle "Lokaltog/vim-powerline"

" git-related plugins
Bundle "tpope/vim-git"
Bundle "tpope/vim-fugitive"
Bundle "gregsexton/gitv"

" language/markup support plugins
Bundle "pangloss/vim-javascript"
Bundle "tpope/vim-haml"
Bundle "tpope/vim-markdown"
Bundle "timcharper/textile.vim"

" ruby-related plugins
Bundle "vim-ruby/vim-ruby"
Bundle "jgdavey/vim-blockle"
Bundle "tpope/vim-rails"

" ~~~~~~~~~~~~ include local config  ~~~~~~~~~~~~~~

if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif

