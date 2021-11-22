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

" Autocomplete
Plug 'hrsh7th/nvim-cmp'

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

" For vsnip users.
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'


" Vinegar
Plug 'tpope/vim-vinegar'

" Ocean-Next
Plug 'mhartington/oceanic-next'

" Autopairs
Plug 'jiangmiao/auto-pairs'

call plug#end()

runtime ./treesitter.vim
runtime ./telescope.vim
runtime ./copilot.vim
runtime ./completion.vim
runtime ./lsp.vim


colorscheme OceanicNext

hi Normal guibg=NONE ctermbg=NONE
hi LineNr guibg=NONE ctermbg=NONE
hi SignColumn guibg=NONE ctermbg=NONE
hi EndOfBuffer guibg=NONE ctermbg=NONE
hi Comment ctermfg=green

