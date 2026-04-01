let g:python_recommended_style = 0

filetype plugin indent on
syntax on
set visualbell
set tabstop=2
set shiftwidth=2
set expandtab
set number

" automatic hybrid toggle
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END


set ai
set ruler
set hlsearch
set ignorecase smartcase
set incsearch hlsearch
set mouse=a
set clipboard=unnamed
set formatoptions-=cro
set formatoptions-=c formatoptions-=r formatoptions-=o
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

set backspace=2 " i have no clue if this works lol

colorscheme vim
