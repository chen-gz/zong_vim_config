local vim = vim
local use = require('packer').use

use 'lukas-reineke/indent-blankline.nvim' -- indent lines
use "ellisonleao/gruvbox.nvim" -- colorscheme
use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
}

use 'lewis6991/gitsigns.nvim' -- git signs
use 'feline-nvim/feline.nvim' -- status bar line
use 'j-hui/fidget.nvim' -- for nvim-lsp progress

use { 'VonHeikemen/searchbox.nvim', requires = { { 'MunifTanjim/nui.nvim' } } }
use { 'VonHeikemen/fine-cmdline.nvim', requires = { { 'MunifTanjim/nui.nvim' } } }

require("indent_blankline").setup {
    -- for example, context is off by default, use this to turn it on
    show_current_context = true,
    show_current_context_start = true,
}


require('gitsigns').setup()
require('fidget').setup()


require('nvim-tree').setup { }
require('ui/feline_one_monokai')

vim.cmd("colorscheme gruvbox")
