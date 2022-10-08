local config = {}


function config.indent_blankline()
    require("indent_blankline").setup {
        -- for example, context is off by default, use this to turn it on
        show_current_context = true,
        show_current_context_start = true,
    }
end

function config.nvim_tree()
    require('nvim-tree').setup {}

end

function config.gitsigns()
    require('gitsigns').setup()

end

function config.fidget()
    require('fidget').setup()
end

function config.feline()
    require('ui/feline_one_monokai')
end

function config.gruvbox()
    vim.cmd("colorscheme gruvbox")
end

return config
