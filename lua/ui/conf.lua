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
