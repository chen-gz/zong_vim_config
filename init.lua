local global = {}
local vim = vim
local os_name = vim.loop.os_uname().sysname

function global:load_variables()
    self.is_mac = os_name == "Darwin"
    self.is_linux = os_name == "Linux"
    self.is_windows = os_name == "Windows_NT"
    self.vim_path = vim.fn.stdpath("config")
    local path_sep = self.is_windows and "\\" or "/"
    local home = self.is_windows and os.getenv("USERPROFILE") or os.getenv("HOME")
    self.cache_dir = home .. path_sep .. ".cache" .. path_sep .. "nvim" .. path_sep
    self.modules_dir = self.vim_path .. path_sep .. "modules"
    self.home = home
    self.data_dir = string.format("%s/site/", vim.fn.stdpath("data"))
end

global:load_variables()

-- options
vim.o["number"] = true -- show line numbers
vim.o["relativenumber"] = true -- show relative line numbers
vim.o["list"] = true -- show invisible characters
vim.o["listchars"] = "tab:»·,trail:·,nbsp:·,extends:»,precedes:«"
vim.o["expandtab"] = true -- use spaces instead of tabs
vim.o["tabstop"] = 4 -- number of visual spaces per TAB
vim.o["shiftwidth"] = 4 -- number of spaces to use for autoindent
vim.o["smarttab"] = true
vim.o["wrap"] = true -- wrap lines
vim.o["showbreak"] = "↪" -- "↳"
vim.o["laststatus"] = 2 -- always show status line
vim.o["display"] = "lastline" -- show last line of file
vim.o["clipboard"] = "unnamedplus" -- copy to system clipboard
vim.o["mouse"] = "a" -- enable mouse in all modes
vim.o["wildignore"] = ".git,.hg,.svn,*.pyc,*.o,*.out,*.jpg,*.jpeg,*.png,*.gif,*.zip,**/tmp/**,*.DS_Store,**/node_modules/**,**/bower_modules/**" 
vim.o["backup"] = false -- disable backup
vim.o["writebackup"] = false -- don't create backup files
vim.o["swapfile"] = false -- disable swap file
vim.o["undofile"] = true -- enable persistent undo
vim.o["undodir"] = global.cache_dir .. "undo/" -- set undo directory
vim.o["cursorline"] = true -- highlight current line
vim.o["cursorcolumn"] = false -- highlight current column
vim.o["virtualedit"] = "all" -- allow cursor to move in virtual space
vim.o["guifont"] = "Source Code Pro:h14" -- font for gui
vim.o["fileformat"] = "unix" -- always use unix line endings (LF)
vim.o["spelllang"] = "en_us" -- set spell check language
vim.o["spell"] = false -- enable spell checking
vim.o["scrolloff"] = 8 -- lines of content to keep above and below cursor

vim.o["autoread"] = true -- automatically reload files when changed
vim.o["autowrite"] = true -- automatically save before commands like :next and :make
vim.o["cmdheight"] = 1 -- height of command bar



-- key mappings
-- set leader to space 
vim.g.mapleader = " "

vim.api.nvim_set_keymap("i", "<C-s>", "<Esc>:w<CR>", {noremap = true, silent = true});
vim.api.nvim_set_keymap("n", "<C-s>", "<Esc>:w<CR>", {noremap = true, silent = true});
vim.api.nvim_set_keymap("n", "q", ":q<CR>", {noremap = true, silent = true});

-- nnoremap <leader>sv :source $MYVIMRC<CR>
vim.api.nvim_set_keymap("n", "<leader>sv", ":source $MYVIMRC<CR>", {noremap = true, silent = true});

-- <C-n> to toggle NvimTree
vim.api.nvim_set_keymap("n", "<C-n>", ":NvimTreeToggle<CR>", {noremap = true, silent = true});

-- use <C-h> <C-j> <C-k> <C-l> to move cursor around windows
vim.api.nvim_set_keymap("n", "<C-l>", ":wincmd l<CR>", {noremap = true, silent = true});
vim.api.nvim_set_keymap("n", "<C-h>", ":wincmd h<CR>", {noremap = true, silent = true});
vim.api.nvim_set_keymap("n", "<C-j>", ":wincmd j<CR>", {noremap = true, silent = true});
vim.api.nvim_set_keymap("n", "<C-k>", ":wincmd k<CR>", {noremap = true, silent = true});


local builtin = require('telescope.builtin')
vim.keymap.set('n', 'ff', builtin.find_files, {}) -- <leader>ff to find files
vim.keymap.set('n', 'fw', builtin.live_grep, {}) -- <leader>fw to search for word
vim.keymap.set('n', 'fb', builtin.buffers, {}) -- <leader>fb to search for buffer
vim.keymap.set('n', 'fh', builtin.help_tags, {}) -- <leader>fh to search for help tagss

-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)
    -- Packer can manage itself
    use 'github/copilot.vim'
    use 'wbthomason/packer.nvim'
    use 'neovim/nvim-lspconfig'
    use { 
        "ellisonleao/gruvbox.nvim",
        config = function()
            vim.cmd("colorscheme gruvbox")
        end
    }
    --------------------------------------------------------------
    -- ui
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
    }
    use {
        'nvim-lualine/lualine.nvim', -- status line (bar)
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }
    use {
        'SmiteshP/nvim-navic',
        requires = 'neovim/nvim-lspconfig',
    }
    use {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup()
        end
    }
    use {
        'lukas-reineke/indent-blankline.nvim',
    }
    use {
        'j-hui/fidget.nvim',
        config = function()
            require('fidget').setup()
        end
    }



    --------------------------------------------------------------
    -- language
    use 'nvim-treesitter/nvim-treesitter'
    use 'vim-pandoc/vim-pandoc-syntax'
    --------------------------------------------------------------
    -- tools
    -- telescope
    use {
        'nvim-telescope/telescope.nvim',
        requires = { 
            -- {'nvim-lua/popup.nvim'},
            {'nvim-lua/plenary.nvim'} 
        }
    }
    use {'VonHeikemen/searchbox.nvim', requires = { {'MunifTanjim/nui.nvim'} } }
    use {'VonHeikemen/fine-cmdline.nvim', requires = { {'MunifTanjim/nui.nvim'} } }




end)

-- lsp config
require('lspconfig')['marksman'].setup{
    on_attach = on_attach,
}

-- require('lspconfig')['lua-language-server'].setup{
-- }
require'lspconfig'.sumneko_lua.setup{}
require('lspconfig')['pylsp'].setup{
    -- on_attach = on_attach,
    root_dir = function(fname)
        return vim.loop.cwd()
    end
}
-- setup for nvim tree
require('nvim-tree').setup {
}
-- setup for treesitter
--

require'nvim-treesitter.configs'.setup {
    -- A list of parser names, or "all"
    ensure_installed = { "c", "lua",},
    sync_install = false,
    auto_install = true,
    ignore_install = { "markdown", "md",},
    highlight = {
        -- `false` will disable the whole extension
        enable = true,
        disable = { "markdown"},
        additional_vim_regex_highlighting = false,
    },
}

require('lualine').setup {
    options = {
        theme = 'auto',
        section_separators = {'', ''},
        component_separators = {'', ''},
        icons_enabled = true,
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch'},
        lualine_c = {'filename'},
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {},
    extensions = {},
    winbar = {
        lualine_a = {''},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {},
        luaile_y = {},
        lualine_z = {}
    }
}

-- config searchbox
-- require('searchbox').setup{}
vim.keymap.set('n', '/', ':SearchBoxIncSearch<CR>')
vim.keymap.set('n', ':', ':FineCmdline<CR>')


-- config for markdown language
vim.cmd("autocmd BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc")
vim.cmd("let g:pandoc#syntax#conceal#use = 0")

-- git signs config
require('gitsigns').setup {
    signs = {
        add          = {hl = 'GitSignsAdd'   , text = '│', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
        change       = {hl = 'GitSignsChange', text = '│', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
        delete       = {hl = 'GitSignsDelete', text = '_', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
        topdelete    = {hl = 'GitSignsDelete', text = '‾', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
        changedelete = {hl = 'GitSignsChange', text = '~', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
    },
    signcolumn = true,  -- Toggle with `:Gitsigns toggle_signs`
    numhl      = false, -- Toggle with `:Gitsigns toggle_numhl`
    linehl     = false, -- Toggle with `:Gitsigns toggle_linehl`
    word_diff  = false, -- Toggle with `:Gitsigns toggle_word_diff`
    watch_gitdir = {
        interval = 1000,
        follow_files = true
    },
    attach_to_untracked = true,
    current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
    current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
        delay = 1000,
        ignore_whitespace = false,
    },
    current_line_blame_formatter = '<author>, <author_time:%Y-%m-%d> - <summary>',
    sign_priority = 6,
    update_debounce = 100,
    status_formatter = nil, -- Use default
    max_file_length = 40000, -- Disable if file is longer than this (in lines)
    preview_config = {
        -- Options passed to nvim_open_win
        border = 'single',
        style = 'minimal',
        relative = 'cursor',
        row = 0,
        col = 1
    },
    yadm = {
        enable = false
    },
}

require("indent_blankline").setup {
    -- for example, context is off by default, use this to turn it on
    show_current_context = true,
    show_current_context_start = true,
}
