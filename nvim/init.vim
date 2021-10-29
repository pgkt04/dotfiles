let g:python_recommended_style = 0
filetype plugin indent on
syntax on
set visualbell
set tabstop=2
set shiftwidth=2
set expandtab
set number
set ai
set ruler
set hlsearch
set ignorecase smartcase
set incsearch hlsearch
set mouse=a
colorscheme peachpuff
highlight Comment ctermfg=green
set clipboard=unnamed
set formatoptions-=cro
set formatoptions-=c formatoptions-=r formatoptions-=o
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

runtime ./plug.vim
