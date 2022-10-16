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
        mapping = { "jk", "jj", "kk" }, -- a table with mappings to use
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

function config.formatter()

    -- Utilities for creating configurations
    local util = require "formatter.util"

    -- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
    require("formatter").setup {
        -- Enable or disable logging
        logging = true,
        -- Set the log level
        log_level = vim.log.levels.WARN,
        -- All formatter configurations are opt-in
        filetype = {
            cpp = {
                require("formatter.filetypes.cpp").clangformat
            },

            -- Use the special "*" filetype for defining formatter configurations on
            -- any filetype
            ["*"] = {
                -- "formatter.filetypes.any" defines default configurations for any
                -- filetype
                require("formatter.filetypes.any").remove_trailing_whitespace
            }
        }
    }

end

function config.dap()
    local dap = require('dap')
    local sign = vim.fn.sign_define

    sign("DapBreakpoint", { text = "●", texthl = "DapBreakpoint", linehl = "", numhl = "" })
    sign("DapBreakpointCondition", { text = "●", texthl = "DapBreakpointCondition", linehl = "", numhl = "" })
    sign("DapLogPoint", { text = "◆", texthl = "DapLogPoint", linehl = "", numhl = "" })
    dap.adapters.python = {
        type = 'executable';
        -- command = 'path/to/virtualenvs/debugpy/bin/python';
        command = '/usr/bin/python3';
        args = { '-m', 'debugpy.adapter' };
    }

    local dap = require('dap')
    dap.configurations.python = {
        {
            -- The first three options are required by nvim-dap
            type = 'python'; -- the type here established the link to the adapter definition: `dap.adapters.python`
            request = 'launch';
            name = "Launch file";

            -- Options below are for debugpy, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings for supported options

            program = "${file}"; -- This configuration will launch the current file if used.
            pythonPath = function()
                -- debugpy supports launching an application with a different interpreter then the one used to launch debugpy itself.
                -- The code below looks for a `venv` or `.venv` folder in the current directly and uses the python within.
                -- You could adapt this - to for example use the `VIRTUAL_ENV` environment variable.
                local cwd = vim.fn.getcwd()
                if vim.fn.executable(cwd .. '/venv/bin/python') == 1 then
                    return cwd .. '/venv/bin/python'
                elseif vim.fn.executable(cwd .. '/.venv/bin/python') == 1 then
                    return cwd .. '/.venv/bin/python'
                else
                    return '/usr/bin/python'
                end
            end;
        },
    }

    local dap = require('dap')
    dap.adapters.lldb = {
        type = 'executable',
        command = '/usr/bin/lldb-vscode', -- adjust as needed, must be absolute path
        -- command = '/usr/bin/lldb',
        name = 'lldb'
    }

    dap.configurations.cpp = {
        {
            name = 'Launch',
            type = 'lldb',
            request = 'launch',
            program = function()
                return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
            end,
            cwd = '${workspaceFolder}',
            stopOnEntry = false,
            args = {},
            -- if you change `runInTerminal` to true, you might need to change the yama/ptrace_scope setting:
            --    echo 0 | sudo tee /proc/sys/kernel/yama/ptrace_scope
            runInTerminal = true,

        },
    }

    -- If you want to use this for Rust and C, add something like this:

    dap.configurations.c = dap.configurations.cpp
    dap.configurations.rust = dap.configurations.cpp

end

function config.dapui()
    require("dapui").setup({
        icons = { expanded = "▾", collapsed = "▸", current_frame = "▸" },
        mappings = {
            -- Use a table to apply multiple mappings
            expand = { "<CR>", "<2-LeftMouse>" },
            open = "o",
            remove = "d",
            edit = "e",
            repl = "r",
            toggle = "t",
        },
    })


end

return config
