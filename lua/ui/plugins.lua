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
use 'kyazdani42/nvim-web-devicons'

use { 'lewis6991/gitsigns.nvim', config = config.gitsigns }

use { 'feline-nvim/feline.nvim', config = config.feline }
use {
    'j-hui/fidget.nvim', -- for nvim-lsp progress
    config = config.fidget
}

use { 'VonHeikemen/searchbox.nvim', requires = { { 'MunifTanjim/nui.nvim' } } }
use { 'VonHeikemen/fine-cmdline.nvim', requires = { { 'MunifTanjim/nui.nvim' } } }
use {
    'andymass/vim-matchup', -- for % and other matching
    config = config.vim_matchup

}
use {
    'anuvyklack/pretty-fold.nvim',
    config = config.pretty_fold
}
use { 'anuvyklack/fold-preview.nvim',
    requires = 'anuvyklack/keymap-amend.nvim',
    config = function()
        require('fold-preview').setup()
        local keymap = vim.keymap
        keymap.amend = require('keymap-amend')
        local map = require('fold-preview').mapping

        keymap.amend('n', 'h', map.show_close_preview_open_fold)
        keymap.amend('n', 'l', map.close_preview_open_fold)
        keymap.amend('n', 'zo', map.close_preview)
        keymap.amend('n', 'zO', map.close_preview)
        keymap.amend('n', 'zc', map.close_preview_without_defer)
        keymap.amend('n', 'zR', map.close_preview)
        keymap.amend('n', 'zM', map.close_preview_without_defer)
    end
}
use {
    "catppuccin/nvim",
    as = "catppuccin",
    config = function()
        vim.g.catppuccin_flavour = "mocha"; -- latte, frappe, macchiato, mocha
        require("catppuccin").setup({
            integrations = {
                gitsigns = true,
                nvimtree = true,
                cmp = true,
                dap = {
                    enabled = true,
                    enable_ui = true, -- enable nvim-dap-ui
                },
                fidget = true,
            }

        });
        vim.api.nvim_command "colorscheme catppuccin";
    end
}
