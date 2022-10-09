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

use {
    'akinsho/toggleterm.nvim',
    config = config.toggleterm
}

use {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
}


use {
    'max397574/better-escape.nvim',
    config = config.better_escape
}

use {
    'terrortylor/nvim-comment',
    config = config.nvim_comment
}
-- use 'abecodes/tabout.nvim'
use 'dstein64/vim-startuptime'
--use {
--    'mhartington/formatter.nvim',
--    config = config.formatter,
--}
