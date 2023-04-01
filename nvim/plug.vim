" This configuration is minimal and only consists of: 
" Treesitter, Copilot, Telescope and LSP.

call plug#begin('~/.config/nvim/plugins')

Plug 'nvim-treesitter/nvim-treesitter' ", {'do': ':TSUpdate'}
Plug 'https://github.com/github/copilot.vim.git'
Plug 'nvim-lua/plenary.nvim' " required for telescope
Plug 'nvim-telescope/telescope.nvim' ", { 'tag': '0.1.1' } "BurntSushi/ripgrep, shardp/fd, devicons should be added
Plug 'neovim/nvim-lspconfig'

call plug#end()

" LSP Config
lua << EOF
  local lspconfig = require('lspconfig')
  local util = require('lspconfig/util')
  lspconfig.pyright.setup{}

  lspconfig.gopls.setup{
    cmd = {"gopls"},
    filetypes = { "go", "gomod", "gowork", "gotmpl" },
    root_dir = util.root_pattern("go.work", "go.mod", ".git"),
    single_file_support = true,
    settings = {
      gopls = {
        analyses = {
          unusedparams = true,
        },
        staticcheck = true,
      },
    },
  }
EOF

lua <<EOF
EOF

" Copilot config
nnoremap <leader>cs <cmd>Copilot status<cr>
imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")
let g:copilot_no_tab_map = v:true

" Telescope config
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fb <cmd>Telescope file_browser<cr>
nnoremap <leader>gf <cmd>Telescope git_files<cr>
hi! link NormalFloat Normal

" Treesitter config
lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    custom_captures = {
      -- Highlight the @foo.bar capture group with the "Identifier" highlight group.
      ["foo.bar"] = "Identifier",
    },
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  }
}
EOF
