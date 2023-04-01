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

function NoTabs()
  set expandtab
  set softtabstop=0
  set listchars=tab:>~,nbsp:_,trail:.
  set list
endfunction

call NoTabs()

set wildmenu
set path+=**
let g:netrw_liststyle=3

au BufRead,BufNewFile,Bufenter *.cl set syntax=c
au BufRead,BufNewFile,Bufenter *.rb set shiftwidth=2 | set tabstop=2
au BufRead,BufNewFile,Bufenter *.hs set shiftwidth=2 | set tabstop=2

command! MkTags !ctags -R .
command! NoTabs call NoTabs()

" quick format on f5
map <F5> gg=G<C-o>zz
set ttimeoutlen=100

runtime ./plug.vim
