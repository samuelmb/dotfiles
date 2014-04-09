"Pathogen
execute pathogen#infect()

set nocompatible
set encoding=utf-8
set nu " show line numbers
set wrap " enable line wrapping
set hlsearch " highlight search results
set showmatch " highlight matching brackets
set autoindent " enable automatic indents
set copyindent " keep indentation convention from line to line
set showcmd " show partial commands at lower right
set noerrorbells " disable error bell
set autoread " autoread from external changes
set showmode " display current mode
set ttyfast " redraw often
set ruler " display current_line,current_column
set clipboard=unnamed " copy/paste to/from system clipboard
set splitright " new vertical splits appear on right
set mouse=a
set noswapfile " disable .swp file generation

" aesthetics
syntax on
set t_Co=256
set background=dark
colorscheme solarized

" tab options
filetype plugin indent on
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
set backspace=indent,eol,start

" 80 character lines
set colorcolumn=80

" navigation
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap G Gzz
nnoremap j gj
nnoremap k gk
inoremap jk <esc>
vnoremap jk <esc>

" try to keep backups and .swp files out of the working directory
set directory=~/.tmp//,/tmp//,.
set backupdir=~/.tmp//,/tmp//,.

" trailing whitespace
highlight TrailingSpaces ctermbg=grey guibg=grey
match TrailingSpaces /\s\+$\| \+\ze\t/
hi NonText guifg=Grey30 guibg=Grey20
autocmd BufWritePre * :%s/\s\+$//e

autocmd FileType ruby setlocal shiftwidth=2 tabstop=2 softtabstop=2

" resize splits when the window is resized.
autocmd VimResized * exe "normal! \<c-w>="

" follow the leader
let mapleader = ","
let g:mapleader = ","

" leader shortcut
nnoremap <leader>r :source ~/.vimrc<cr>
nnoremap <leader>s :w<cr>
nnoremap <leader>S :w!<cr>
nnoremap <leader>p :set paste!<cr>
nnoremap <leader>w q
nnoremap <leader>e :vnew<cr>
nnoremap <leader>f :noh<cr>

nnoremap <leader>gb :Gblame<CR>
nnoremap <leader>ge :Gedit<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gg :Ggrep -n -C 2 --heading<Space>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gw :Gbrowse<CR>
vnoremap <leader>gw :Gbrowse<CR>
nnoremap <leader>gl :Glog<CR><CR><CR>:copen<CR>

