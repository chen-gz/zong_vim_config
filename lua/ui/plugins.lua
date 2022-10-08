local use = require('packer').use
local config = require('ui.conf')

use {
    'lukas-reineke/indent-blankline.nvim', -- indent lines
    config = config.indent_blankline
}

use {
    "ellisonleao/gruvbox.nvim", -- colorscheme
    config = config.gruvbox
}
use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = config.nvim_tree,
}

use {
    'lewis6991/gitsigns.nvim', -- git signs
    config = config.gitsigns
}

use {
    'feline-nvim/feline.nvim', -- status bar line
    config= config.feline
}
use {
    'j-hui/fidget.nvim', -- for nvim-lsp progress
    config = config.fidget
}

use { 'VonHeikemen/searchbox.nvim', requires = { { 'MunifTanjim/nui.nvim' } } }
use { 'VonHeikemen/fine-cmdline.nvim', requires = { { 'MunifTanjim/nui.nvim' } } }
