call plug#begin('~/.config/nvim/plugins')
" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

" Autopilot
Plug 'https://github.com/github/copilot.vim.git'

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'

" Coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

runtime ./treesitter.vim
runtime ./telescope.vim
runtime ./coc.vim

