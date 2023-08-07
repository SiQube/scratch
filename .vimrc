syntax enable
set nocompatible
set showcmd
filetype off
syntax on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" vundle stuff
Plugin 'gmarik/Vundle.vim'
Plugin 'vim-airline/vim-airline'
" Plugin 'vim-airline/vim-airline-themes'
" Plugin 'powerline/powerline'
Plugin 'vim-scripts/indentpython.vim'
" Plugin 'vim-syntastic/syntastic'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'nvie/vim-flake8'
Plugin 'morhetz/gruvbox'
Plugin 'vim-python/python-syntax'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'preservim/nerdtree'
Plugin 'frazrepo/vim-rainbow'
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'cocopon/iceberg.vim'
Plugin 'Rigellute/shades-of-purple.vim'
Plugin 'tomasiser/vim-code-dark'
Plugin 'catppuccin/catppuccin'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'ghifarit53/tokyonight-vim'

call vundle#end()
" " standard
" autocmd vimenter * colorscheme gruvbox
" " gray purple
" autocmd vimenter * colorscheme dracula 
" " purple
" autocmd vimenter * colorscheme shades_of_purple
" " grayish
" autocmd vimenter *  colorscheme iceberg
" vs code
autocmd vimenter * colorscheme codedark
" " very cool!
" autocmd vimenter * colorscheme PaperColor
" " tokyo
" autocmd vimenter * colorscheme tokyonight
" " jelly
" autocmd vim enter * colorscheme jellybeans

set background=dark
let g:gruvbox_contrast_dark = 'soft'
let g:gruvbox_contrast_light = 'hard'
let g:rainbow_active = 1
let g:airline#extensions#tabline#enabled = 1           " enable airline tabline
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#show_splits = 1
let g:airline#extensions#tagbar#enabled = 0


filetype indent plugin on
set ruler
set nu
set relativenumber
set nowrap


" search thingys
set ignorecase
set smartcase
set hlsearch
set incsearch
set magic
set hid
set showmatch
set mat=2
nnoremap <silent> <CR> :noh<CR><CR>

" annoying sounds
set noerrorbells
set novisualbell
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

" " cursor
" if &term =~ "xterm\\|rxvt"
"   " use an orange cursor in insert mode
"   let &t_SI = "\<Esc>]12;orange\x7"
"   " use a red cursor otherwise
"   let &t_EI = "\<Esc>]12;gray\x7"
"   silent !echo -ne "\033]12;gray\007"
"   " reset cursor when vim exits
"   autocmd VimLeave * silent !echo -ne "\033]112\007"
"   " use \003]12;gray\007 for gnome-terminal
" endif

" tabbing and indentation
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set ai
set si
set wrap
set laststatus=2


" python files
au BufNewFile,BufRead *.py set colorcolumn=105
au BufNewFile,BufRead *.py set expandtab
au BufNewFile,BufRead *.py set shiftwidth=4
au BufNewFile,BufRead *.py set softtabstop=4
au BufNewFile,BufRead *.py set tabstop=4

let g:python_highlight_all = 1
