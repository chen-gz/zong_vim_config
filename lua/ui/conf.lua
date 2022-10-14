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
    -- require('ui/feline_one_monokai')
    -- local ctp_feline = require('catppuccin.groups.integrations.feline')
    local ucolors = require "catppuccin.utils.colors"

    -- ctp_feline.setup()

    --
    -- local clrs = require("catppuccin.palettes").get_palette()
    -- local ctp_feline = require('catppuccin.groups.integrations.feline')

    local clrs = require("catppuccin.palettes").get_palette()
    local ctp_feline = require('catppuccin.groups.integrations.feline')
    local latte = require("catppuccin.palettes").get_palette "latte"
    local frappe = require("catppuccin.palettes").get_palette "frappe"
    local macchiato = require("catppuccin.palettes").get_palette "macchiato"
    local mocha = require("catppuccin.palettes").get_palette "mocha"

    vim.g.catppuccin_flavour = "macchiato" -- Has to be set in order for empty argument to work
    local colors = require("catppuccin.palettes").get_palette() -- g:catppuccin_flavour's palette

    require("feline").setup({
        components = ctp_feline.get(),
    })


    ctp_feline.setup({
        inactive = active,
        assets = {
            left_separator = "",
            right_separator = "",
            bar = "█",
            mode_icon = "",
            dir = "  ",
            file = "   ",
            lsp = {
                server = "  ",
                error = "  ",
                warning = "  ",
                info = "  ",
                hint = "  ",
            },
            git = {
                branch = "  ",
                added = "  ",
                changed = "  ",
                removed = "  ",
            },
        },
        sett = {
            text = ucolors.vary_color({ latte = latte.base }, clrs.surface0),
            bkg = ucolors.vary_color({ latte = latte.crust }, clrs.surface0),
            diffs = clrs.mauve,
            extras = clrs.overlay1,
            curr_file = clrs.maroon,
            curr_dir = clrs.flamingo,
            show_modified = true -- show if the file has been modified
        },
        mode_colors = {
            ["n"] = { "NORMAL", clrs.lavender },
            ["no"] = { "N-PENDING", clrs.lavender },
            ["i"] = { "INSERT", clrs.green },
            ["ic"] = { "INSERT", clrs.green },
            ["t"] = { "TERMINAL", clrs.green },
            ["v"] = { "VISUAL", clrs.flamingo },
            ["V"] = { "V-LINE", clrs.flamingo },
            ["�"] = { "V-BLOCK", clrs.flamingo },
            ["R"] = { "REPLACE", clrs.maroon },
            ["Rv"] = { "V-REPLACE", clrs.maroon },
            ["s"] = { "SELECT", clrs.maroon },
            ["S"] = { "S-LINE", clrs.maroon },
            ["�"] = { "S-BLOCK", clrs.maroon },
            ["c"] = { "COMMAND", clrs.peach },
            ["cv"] = { "COMMAND", clrs.peach },
            ["ce"] = { "COMMAND", clrs.peach },
            ["r"] = { "PROMPT", clrs.teal },
            ["rm"] = { "MORE", clrs.teal },
            ["r?"] = { "CONFIRM", clrs.mauve },
            ["!"] = { "SHELL", clrs.green },
        }
    })



end

function config.gruvbox()
    -- vim.cmd("colorscheme gruvbox")
end

function config.vim_matchup()
    vim.g.matchup_matchparen_offscreen = { method = 'popup' }
end

function config.pretty_fold()

    require('pretty-fold').setup {
        sections = {
            left = {
                'content',
            },
            right = {
                ' ', 'number_of_folded_lines', ': ', 'percentage', ' ',
                function(config) return config.fill_char:rep(3) end
            }
        },
        fill_char = ' ',

        remove_fold_markers = true,

        -- Keep the indentation of the content of the fold string.
        keep_indentation = true,

        -- Possible values:
        -- "delete" : Delete all comment signs from the fold string.
        -- "spaces" : Replace all comment signs with equal number of spaces.
        -- false    : Do nothing with comment signs.
        process_comment_signs = 'spaces',

        -- Comment signs additional to the value of `&commentstring` option.
        comment_signs = {},

        -- List of patterns that will be removed from content foldtext section.
        stop_words = {
            '@brief%s*', -- (for C++) Remove '@brief' and all spaces after.
        },

        add_close_pattern = true, -- true, 'last_line' or false

        matchup_patterns = {
            { '{', '}' },
            { '%(', ')' }, -- % to escape lua pattern char
            { '%[', ']' }, -- % to escape lua pattern char
        },

        ft_ignore = { 'neorg' },
    }

end

return config
