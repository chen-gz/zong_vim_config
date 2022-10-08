local use = require('packer').use
local vim = vim
local config = require('lang.conf')

use { 'neovim/nvim-lspconfig', opt = false, event = "BufReadPre", config = config.lspconfig, }
use { 'glepnir/lspsaga.nvim', opt = false, after = "nvim-lspconfig", config = config.lspsaga, }
use { 'ray-x/lsp_signature.nvim', opt = true, after = "nvim-lspconfig", }
use { 'SmiteshP/nvim-navic', requires = 'neovim/nvim-lspconfig', }
use { 'nvim-treesitter/nvim-treesitter', config = config.nvim_treesitter() }
use { 'zbirenbaum/copilot.lua', config = config.copilot }
use { 'zbirenbaum/copilot-cmp', config = config.copilot_cmp }


--use { "hrsh7th/cmp-nvim-lsp" }

use {
    'hrsh7th/nvim-cmp',
    config = config.cmp,
    requires = {
        { 'lukas-reineke/cmp-under-comparator',
            'saadparwaiz1/cmp_luasnip',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-nvim-lua',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'f3fora/cmp-spell',
            'kdheepak/cmp-latex-symbols',
        }
    },
}

use { "L3MON4D3/LuaSnip" }
-- config = config.luasnip, requires = "rafamadriz/friendly-snippets", }

use { 'windwp/nvim-autopairs', config = config.autopairs, }

-----------------------------------------------------
use { 'vim-pandoc/vim-pandoc-syntax' }

vim.cmd([[autocmd BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc]])
vim.cmd([[let g:pandoc#syntax#conceal#use = 0]])
