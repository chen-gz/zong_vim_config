-- lua-language-server

-- config for markdown language
vim.cmd("autocmd BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc")
vim.cmd("let g:pandoc#syntax#conceal#use = 0")


local config = {}
function config.copilot()

    require("copilot").setup()
end

function config.conpilog_cmp()
    require("copilot_cmp").setup()

end

function config.nvim_treesitter()
    require 'nvim-treesitter.configs'.setup {
        -- A list of parser names, or "all"
        ensure_installed = { "c", "lua", "cpp", },
        sync_install     = false,
        auto_install     = true,
        ignore_install   = { "markdown", "md", },
        highlight        = {
            -- `false` will disable the whole extension
            enable                            = true,
            disable                           = { "markdown" },
            additional_vim_regex_highlighting = false,
        },
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


return config;
