local use = require('packer').use
-- local config = require('ui.conf')

use {
    'lukas-reineke/indent-blankline.nvim', -- indent lines
    config = function()
        require("indent_blankline").setup {
            show_current_context = true,
            show_current_context_start = true,
        }
    end
}

use { 'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons',
    config = function() require('nvim-tree').setup {} end }
use 'kyazdani42/nvim-web-devicons'

use { 'lewis6991/gitsigns.nvim', config = function() require('gitsigns').setup() end }

use {
    'feline-nvim/feline.nvim',
    config = function()
        -- local ctp_feline = require('catppuccin.groups.integrations.feline')
        -- require("feline").setup({
        --     components = ctp_feline.get(),
        -- })
        require('ui.feline_one_monokai')

    end
}

use {
    'j-hui/fidget.nvim', -- for nvim-lsp progress
    config = function()
        require("fidget").setup { window = { blend = 0, }, }
    end
}

use {
    'andymass/vim-matchup', -- for % and other matching
    config = function()
        vim.g.matchup_matchparen_offscreen = { method = 'popup' }
    end
}
use {
    'anuvyklack/pretty-fold.nvim',
    config = function()

        require('pretty-fold').setup {}
    end
}
use { 'anuvyklack/fold-preview.nvim',
    requires = 'anuvyklack/keymap-amend.nvim',
    config = function()
        require('fold-preview').setup()
        local keymap = vim.keymap
        keymap.amend = require('keymap-amend')
        local map = require('fold-preview').mapping

        keymap.amend('n', 'h', map.show_close_preview_open_fold)
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
--use {
--    "xiyaowong/nvim-transparent",
--    config = function()
--        require("transparent").setup({
--            enable = true, -- boolean: enable transparent
--            extra_groups = { -- table/string: additional groups that should be cleared
--                -- In particular, when you set it to 'all', that means all available groups
--
--                -- example of akinsho/nvim-bufferline.lua
--                "BufferLineTabClose",
--                "BufferlineBufferSelected",
--                "BufferLineFill",
--                "BufferLineBackground",
--                "BufferLineSeparator",
--                "BufferLineIndicatorSelected",
--            },
--            exclude = {}, -- table: groups you don't want to clear
--        })
--    end
--}
