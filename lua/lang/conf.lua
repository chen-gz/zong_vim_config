--lua-language-server

local vim = vim

local config = {}
-- config for markdown language



function config.copilot()
    require("copilot").setup()
end

function config.copilot_cmp()
    require("copilot_cmp").setup()

end

function config.nvim_treesitter()

    -- vim.api.nvim_set_option_value("foldmethod", "expr", {})
    -- vim.api.nvim_set_option_value("foldexpr", "nvim_treesitter#foldexpr()", {})
    require 'nvim-treesitter.configs'.setup {
        -- A list of parser names, or "all"
        ensure_installed      = { "c", "lua", "cpp", },
        sync_install          = false,
        auto_install          = true,
        ignore_install        = { "markdown", "md", },
        highlight             = {
            -- `false` will disable the whole extension
            enable                            = true,
            disable                           = { "markdown" },
            additional_vim_regex_highlighting = false,
        },
        context_commentstring = { enable = true, enable_autocmd = false, },
        --matchup              = { enable = true, },
    }
end

function config.lspconfig()
    -- lsp config
    require('lspconfig')['marksman'].setup {}

    require 'lspconfig'.sumneko_lua.setup {}
    require('lspconfig')['pylsp'].setup {
        -- on_attach = on_attach,
        root_dir = function(fname)
            return vim.loop.cwd()
        end
    }
    -- set lsp for c/cpp
    require('lspconfig')['clangd'].setup {}
end

function config.lspsaga()
    --local function set_sidebar_icons()
    --    -- Set icons for sidebar.
    --    local diagnostic_icons = {
    --        Error = " ",
    --        Warn = " ",
    --        Info = " ",
    --        Hint = " ",
    --    }
    --    for type, icon in pairs(diagnostic_icons) do
    --        local hl = "DiagnosticSign" .. type
    --        vim.fn.sign_define(hl, { text = icon, texthl = hl })
    --    end
    --end

    --local function get_palette()
    --    if vim.g.colors_name == "catppuccin" then
    --        -- If the colorscheme is catppuccin then use the palette.
    --        return require("catppuccin.palettes").get_palette()
    --    else
    --        -- Default behavior: return lspsaga's default palette.
    --        local palette = require("lspsaga.lspkind").colors
    --        palette.peach = palette.orange
    --        palette.flamingo = palette.orange
    --        palette.rosewater = palette.yellow
    --        palette.mauve = palette.violet
    --        palette.sapphire = palette.blue
    --        palette.maroon = palette.orange

    --        return palette
    --    end
    --end

    --set_sidebar_icons()

    --local colors = get_palette()

    require("lspsaga").init_lsp_saga({
        --diagnostic_header = { " ", " ", "  ", " " },
        --custom_kind = {
        --    File = { " ", colors.rosewater },
        --    Module = { " ", colors.blue },
        --    Namespace = { " ", colors.blue },
        --    Package = { " ", colors.blue },
        --    Class = { "ﴯ ", colors.yellow },
        --    Method = { " ", colors.blue },
        --    Property = { "ﰠ ", colors.teal },
        --    Field = { " ", colors.teal },
        --    Constructor = { " ", colors.sapphire },
        --    Enum = { " ", colors.yellow },
        --    Interface = { " ", colors.yellow },
        --    Function = { " ", colors.blue },
        --    Variable = { " ", colors.peach },
        --    Constant = { " ", colors.peach },
        --    String = { " ", colors.green },
        --    Number = { " ", colors.peach },
        --    Boolean = { " ", colors.peach },
        --    Array = { " ", colors.peach },
        --    Object = { " ", colors.yellow },
        --    Key = { " ", colors.red },
        --    Null = { "ﳠ ", colors.yellow },
        --    EnumMember = { " ", colors.teal },
        --    Struct = { " ", colors.yellow },
        --    Event = { " ", colors.yellow },
        --    Operator = { " ", colors.sky },
        --    TypeParameter = { " ", colors.maroon },
        --    -- ccls-specific icons.
        --    TypeAlias = { " ", colors.green },
        --    Parameter = { " ", colors.blue },
        --    StaticMethod = { "ﴂ ", colors.peach },
        --    Macro = { " ", colors.red },
        --},
    })
end

function config.cmp()
    local cmp = require 'cmp'


    local compare = require("cmp.config.compare")

    local t = function(str)
        return vim.api.nvim_replace_termcodes(str, true, true, true)
    end

    local has_words_before = function()
        local line, col = unpack(vim.api.nvim_win_get_cursor(0))
        return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
    end

    cmp.setup({
        snippet = {
            -- REQUIRED - you must specify a snippet engine
            expand = function(args)
                -- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
                require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
                -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
                -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
            end,
        },

        sorting = {
            priority_weight = 2,
            comparators = {
                require("copilot_cmp.comparators").prioritize,
                require("copilot_cmp.comparators").score,
                -- require("cmp_tabnine.compare"),
                compare.offset,
                compare.exact,
                compare.score,
                require("cmp-under-comparator").under,
                compare.kind,
                compare.sort_text,
                compare.length,
                compare.order,
            },
        },
        mapping = cmp.mapping.preset.insert({
            ['<CR>'] = cmp.mapping.confirm({ select = true }),
            ['<C-j>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
            ['<C-k>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
            ['<C-b>'] = cmp.mapping.scroll_docs(-4),
            ['<C-f>'] = cmp.mapping.scroll_docs(4),
            ['<C-Space>'] = cmp.mapping.complete(),
            ['<C-e>'] = cmp.mapping.abort(),
            ["<Tab>"] = cmp.mapping(function(fallback)
                if cmp.visible() then
                    cmp.select_next_item()
                elseif require("luasnip").expand_or_jumpable() then
                    vim.fn.feedkeys(t("<Plug>luasnip-expand-or-jump"), "")
                elseif has_words_before() then
                    cmp.complete()
                else
                    fallback()
                end
            end, { "i", "s" }),
            ["<S-Tab>"] = cmp.mapping(function(fallback)
                if cmp.visible() then
                    cmp.select_prev_item()
                elseif require("luasnip").jumpable(-1) then
                    vim.fn.feedkeys(t("<Plug>luasnip-jump-prev"), "")
                else
                    fallback()
                end
            end, { "i", "s" }),
        }),
        sources = {
            { name = 'nvim_lsp' },
            { name = 'nvim_lua' },
            { name = 'luasnip' },
            { name = 'buffer' },
            { name = 'path' },
            { name = 'spell' },
            --{ name = 'tmux' },
            { name = 'orgmode' },
            { name = 'latex_symbols' },

            { name = 'copilot' },

            -- { name = 'vsnip' }, -- For vsnip users.
            -- { name = 'luasnip' }, -- For luasnip users.
            -- { name = 'ultisnips' }, -- For ultisnips users.
            -- { name = 'snippy' }, -- For snippy users.
            { name = 'buffer' },
        },

        formatting = {
            format = function(entry, vim_item)
                local lspkind_icons = {
                    Text = "",
                    Method = "",
                    Function = "",
                    Constructor = "",
                    Field = "",
                    Variable = "",
                    Class = "ﴯ",
                    Interface = "",
                    Module = "",
                    Property = "ﰠ",
                    Unit = "",
                    Value = "",
                    Enum = "",
                    Keyword = "",
                    Snippet = "",
                    Color = "",
                    File = "",
                    Reference = "",
                    Folder = "",
                    EnumMember = "",
                    Constant = "",
                    Struct = "",
                    Event = "",
                    Operator = "",
                    TypeParameter = "",
                }
                -- load lspkind icons
                -- vim_item.kind = string.format("%s %s", lspkind_icons[vim_item.kind], vim_item.kind)
                vim_item.kind = string.format("%s", lspkind_icons[vim_item.kind])

                vim_item.menu = ({
                    -- cmp_tabnine = "[TN]",
                    buffer = "[BUF]",
                    orgmode = "[ORG]",
                    nvim_lsp = "[LSP]",
                    nvim_lua = "[LUA]",
                    path = "[PATH]",
                    tmux = "[TMUX]",
                    luasnip = "[SNIP]",
                    spell = "[SPELL]",
                })[entry.source.name]

                return vim_item
            end,
        },
    })

    -- Set configuration for specific filetype.
    cmp.setup.filetype('gitcommit', {
        sources = cmp.config.sources({
            { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
        }, {
            { name = 'buffer' },
        })
    })

    -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
    cmp.setup.cmdline({ '/', '?' }, {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
            { name = 'buffer' }
        }
    })

    -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
    cmp.setup.cmdline(':', {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
            { name = 'path' }
        }, {
            { name = 'cmdline' }
        })
    })

    -- Set up lspconfig.
    --local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
    -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
    -- require('lspconfig')['<YOUR_LSP_SERVER>'].setup {
    --     capabilities = capabilities
    -- }
    --

    -- function config.tabnine()
    -- 	local tabnine = require("cmp_tabnine.config")
    -- 	tabnine:setup({ max_line = 1000, max_num_results = 20, sort = true })
    -- end


    --luasnip()
    --autopairs()
end

function config.luasnip()
    vim.o.runtimepath = vim.o.runtimepath .. "," .. os.getenv("HOME") .. "/.config/nvim/my-snippets/,"
    require("luasnip").config.set_config({
        history = true,
        updateevents = "TextChanged,TextChangedI",
        delete_check_events = "TextChanged,InsertLeave",
    })
    require("luasnip.loaders.from_lua").lazy_load()
    require("luasnip.loaders.from_vscode").lazy_load()
    require("luasnip.loaders.from_snipmate").lazy_load()
end

-- function config.tabnine()
-- 	local tabnine = require("cmp_tabnine.config")
-- 	tabnine:setup({ max_line = 1000, max_num_results = 20, sort = true })
-- end

function config.autopairs()
    require("nvim-autopairs").setup({})

    -- If you want insert `(` after select function or method item
    local cmp_autopairs = require("nvim-autopairs.completion.cmp")
    local cmp = require("cmp")
    local handlers = require("nvim-autopairs.completion.handlers")
    cmp.event:on(
        "confirm_done",
        cmp_autopairs.on_confirm_done({
            filetypes = {
                -- "*" is an alias to all filetypes
                ["*"] = {
                    ["("] = {
                        kind = {
                            cmp.lsp.CompletionItemKind.Function,
                            cmp.lsp.CompletionItemKind.Method,
                        },
                        handler = handlers["*"],
                    },
                },
                -- Disable for tex
                tex = false,
            },
        })
    )
end

function config.mason_install()
    require("mason-tool-installer").setup({

        -- a list of all tools you want to ensure are installed upon
        -- start; they should be the names Mason uses for each tool
        ensure_installed = {
            -- you can turn off/on auto_update per tool
            "editorconfig-checker",

            "stylua",

            "black",

            -- "prettier",

            "shellcheck",
            "shfmt",

            "vint",
        },

        -- if set to true this will check each tool for updates. If updates
        -- are available the tool will be updated.
        -- Default: false
        auto_update = false,

        -- automatically install / update on startup. If set to false nothing
        -- will happen on startup. You can use `:MasonToolsUpdate` to install
        -- tools and check for updates.
        -- Default: true
        run_on_start = true,
    })
end

return config;
