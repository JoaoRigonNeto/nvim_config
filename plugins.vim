call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'cohama/lexima.vim'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-fugitive'
call plug#end()

lua << EOF
local nvim_lsp = require('lspconfig')
local protocol= require('vim.lsp.protocol')
local treesitter = require('nvim-treesitter.configs')
local actions = require('telescope.actions')
local on_attatch=function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  local opts = { noremap = true, silent = true}
  buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'gr', '<Cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
end
nvim_lsp.tsserver.setup {
  on_attach = on_attach,
  filetypes = { "typescript", "typescriptreact", "typescript.tsx" }

}
nvim_lsp.pyright.setup {}
treesitter.setup {
  highlight={
    enable=true,
    disable={},
},
  indent = {
    enable=false,
    disable={},
    },
  ensure_installed = {
    "tsx",
    "toml",
    "json",
    "html",
    "css",
    "dot",
    "javascript",
    "markdown",
    "python",
    "typescript"
    }
  }
require('telescope').setup{
  defaults = {
      mappings = {
          n = {
            ["q"] = actions.close
            },
          },
        }
      }
EOF
