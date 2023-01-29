local use = require('packer').use
local config = require('tools.conf')
use {
    'nvim-telescope/telescope.nvim',
    requires = {
        'nvim-lua/plenary.nvim',
        'nvim-lua/popup.nvim'
    },
    config = config.telescope,
}

use { 'akinsho/toggleterm.nvim', config = config.toggleterm }

use {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
}
use { 'max397574/better-escape.nvim', config = config.better_escape }
use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
}

use {
    'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons';
    config = function() require("bufferline").setup {} end
}
--
-- use {
--     'abecodes/tabout.nvim',
--     config = function()
--         require('tabout').setup {
--             tabkey = '<Tab>', -- key to trigger tabout, set to an empty string to disable
--             backwards_tabkey = '<S-Tab>', -- key to trigger backwards tabout, set to an empty string to disable
--             act_as_tab = true, -- shift content if tab out is not possible
--             act_as_shift_tab = false, -- reverse shift content if tab out is not possible (if your keyboard/terminal supports <S-Tab>)
--             default_tab = '<C-t>', -- shift default action (only at the beginning of a line, otherwise <TAB> is used)
--             default_shift_tab = '<C-d>', -- reverse shift default action,
--             enable_backwards = true, -- well ...
--             completion = true, -- if the tabkey is used in a completion pum
--             tabouts = {
--                 { open = "'", close = "'" },
--                 { open = '"', close = '"' },
--                 { open = '`', close = '`' },
--                 { open = '(', close = ')' },
--                 { open = '[', close = ']' },
--                 { open = '{', close = '}' }
--             },
--             ignore_beginning = true, --[[ if the cursor is at the beginning of a filled element it will rather tab out than shift the content ]]
--             exclude = {} -- tabout will ignore these filetypes
--         }
--     end,
--     wants = { 'nvim-treesitter' }, -- or require if not used so far
--     -- after = { 'nvim-cmp' } -- if a completion plugin is using tabs load it before
-- }


