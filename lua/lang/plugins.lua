local use = require('packer').use
local vim = vim
-- lspconfig
use 'neovim/nvim-lspconfig'
use 'github/copilot.vim'

use {
    'SmiteshP/nvim-navic',
    requires = 'neovim/nvim-lspconfig',
}

use 'nvim-treesitter/nvim-treesitter'
use 'vim-pandoc/vim-pandoc-syntax'

require 'nvim-treesitter.configs'.setup {
    -- A list of parser names, or "all"
    ensure_installed = { "c", "lua", "cpp",},
    sync_install     = false,
    auto_install     = true,
    ignore_install   = { "markdown", "md", },
    highlight        = {
        -- `false` will disable the whole extension
        enable                            = true,
        disable                           = { "markdown" },
        additional_vim_regex_highlighting = false,
    },
}


-- lsp config
require('lspconfig')['marksman'].setup {}

-- lua-language-server
require 'lspconfig'.sumneko_lua.setup {}
require('lspconfig')['pylsp'].setup {
    -- on_attach = on_attach,
    root_dir = function(fname)
        return vim.loop.cwd()
    end
}

-- config for markdown language
vim.cmd("autocmd BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc")
vim.cmd("let g:pandoc#syntax#conceal#use = 0")
