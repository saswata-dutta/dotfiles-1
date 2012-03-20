set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle "gmarik/vundle"
Bundle "altercation/vim-colors-solarized"
Bundle "mileszs/ack.vim"
Bundle "tpope/vim-fugitive"
Bundle "tpope/vim-git"
Bundle "tpope/vim-haml"
Bundle "michaeljsmith/vim-indent-object"
Bundle "pangloss/vim-javascript"
Bundle "scrooloose/nerdtree"
Bundle "scrooloose/nerdcommenter"
Bundle "tpope/vim-surround"
Bundle "vim-scripts/taglist.vim"
Bundle "tpope/vim-vividchalk"
Bundle "timcharper/textile.vim"
Bundle "tpope/vim-rails"
Bundle "taq/vim-rspec"
Bundle "tpope/vim-markdown"
Bundle "Raimondi/delimitMate"
Bundle "kien/ctrlp.vim"
Bundle "bronson/vim-ruby-block-conv"
Bundle "gregsexton/gitv"
Bundle "garbas/vim-snipmate"
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "honza/snipmate-snippets"
Bundle "BufOnly.vim"

" No need for vi compatibility
set nocompatible

" Encoding
set enc=utf-8

" Line numbering
set number
set numberwidth=4
set ruler

" We want colors!
syntax on

" Default color scheme
colorscheme solarized
set background=dark

" Whitespace stuff
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set list listchars=tab:»\ ,trail:·,nbsp:·

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

" Status line
set statusline=%f
set statusline+=\ 
set statusline+=%1*%m%*
set statusline+=%=
set statusline+=\ 
set statusline+=\ 
set statusline+=%-10.(%l,%c%V%)\ %P

" History & backups
set nobackup
set nowritebackup
set noswapfile
set history=1000

" save all buffers when (g)vim looses focus
au FocusLost * :wa

" Highlight characters in column >80
set colorcolumn=80

" Leader key
let mapleader=","

" NERD tree
map <F2> <ESC>:NERDTreeToggle<CR>
nmap <Leader>ft :NERDTreeFind<CR>

let NERDTreeIgnore=['\.rbc$', '\~$']

" CTags
map <Leader>rt :!ctags --extra=+f -R *<CR><CR>

" Remember last location in file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

" make and python use real tabs
au FileType make   set noexpandtab
au FileType python set noexpandtab

" Thorfile, Rakefile and Gemfile are Ruby
au BufRead,BufNewFile {Gemfile,Gemfile.local,Rakefile,Thorfile,config.ru} set ft=ruby

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" load the plugin and indent settings for the detected filetype
filetype plugin indent on

" Use modeline overrides
set modeline
set modelines=10

" Key bindings

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

" Include user's local vim config
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif

