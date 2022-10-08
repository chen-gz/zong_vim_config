local use = require('packer').use
local vim = vim
local config = require('lang.conf')
--- local cmp_config = require('lang.cmp_conf')
-- lspconfig
use {
    'neovim/nvim-lspconfig',
    config = config.lspconfig,
}
-- use 'github/copilot.vim'

use {
    'SmiteshP/nvim-navic',
    requires = 'neovim/nvim-lspconfig',
}

use 'L3MON4D3/LuaSnip'
use {
    'nvim-treesitter/nvim-treesitter',
    config = config.nvim_treesitter()
}
use 'vim-pandoc/vim-pandoc-syntax'
use 'windwp/nvim-autopairs'


use {
    'zbirenbaum/copilot.lua',
    config = config.copilot()
}
use {
    'zbirenbaum/copilot-cmp',
    config = config.conpilog_cmp();
}


use {
    'hrsh7th/nvim-cmp',
    conf = function()
        require('lang.cmp_conf')
    end,

    requires = {
        { 'lukas-reineke/cmp-under-comparator', },
        { 'saadparwaiz1/cmp_luasnip', after = 'LuaSnip' },
        { "hrsh7th/cmp-nvim-lsp", after = "cmp_luasnip" },
        { "hrsh7th/cmp-nvim-lua", after = "cmp-nvim-lsp" },
        { "andersevenrud/cmp-tmux", after = "cmp-nvim-lua" },
        { "hrsh7th/cmp-path", after = "cmp-tmux" },
        { "f3fora/cmp-spell", after = "cmp-path" },
        { "hrsh7th/cmp-buffer", after = "cmp-spell" },
        { "kdheepak/cmp-latex-symbols", after = "cmp-buffer" },

    },
}
