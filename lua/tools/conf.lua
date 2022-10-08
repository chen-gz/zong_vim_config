local config = {}

function config.telescope()
    local telescope = require('telescope');
    telescope.extensions = {
        fzf = {
            fuzzy = true, -- false will only do exact matching
            override_generic_sorter = true, -- override the generic sorter
            override_file_sorter = true, -- override the file sorter
            case_mode = "smart_case", -- or "ignore_case" or "respect_case"
            -- the default case_mode is "smart_case"
        }
    }
    telescope.load_extension('fzf')
end

function config.toggleterm()
    require('toggleterm').setup()
end

function config.better_escape()
    require("better_escape").setup {
        mapping = { "jk", "jj", "kk"}, -- a table with mappings to use
        timeout = vim.o.timeoutlen, -- the time in which the keys must be hit in ms. Use option timeoutlen by default
        clear_empty_lines = false, -- clear line after escaping if there is only whitespace
        keys = "<Esc>", -- keys used for escaping, if it is a function will use the result everytime
        -- example(recommended)
        -- keys = function()
        --   return vim.api.nvim_win_get_cursor(0)[2] > 1 and '<esc>l' or '<esc>'
        -- end,
    }
end

function config.nvim_comment()
    require("nvim_comment").setup()

end
return config
