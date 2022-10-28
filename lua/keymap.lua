local builtin = require('telescope.builtin')
local vim = vim
-- vim.keymap.set('n', 'ff', builtin.find_files, {})
-- vim.keymap.set('n', 'fw', builtin.live_grep, {})
-- vim.keymap.set('n', 'fb', builtin.buffers, {})
-- vim.keymap.set('n', 'fh', builtin.help_tags, {})
-- vim.keymap.set('n', '<C-n>', ":NvimTreeToggle<CR>", {})
-- vim.keymap.set('n', '<C-h>', "<C-w>h", {})
-- vim.keymap.set('n', '<C-l>', "<C-w>l", {})
-- vim.keymap.set('n', '<C-j>', "<C-w>j", {})
-- vim.keymap.set('n', '<C-k>', "<C-w>k", {})
-- vim.keymap.set('n', 'q', ":q<CR>", {})
-- vim.keymap.set('n', '<leader>s', "<Esc>:w<CR>", {})
-- vim.keymap.set('i', '<C-s>', "<ESC>:w<CR>", {})
-- vim.keymap.set('n', '<C-s>', "<ESC>:w<CR>", {})
-- vim.keymap.set('n', '<leader>f', ":lua vim.lsp.buf.format()<CR>", {})
-- vim.keymap.set('n', '<F5>', "<Esc><Cmd>ToggleTerm direction=float<CR>", {})
-- vim.keymap.set('t', '<F5>', "<C-\\><C-n><Esc><Cmd>ToggleTerm direction=float<CR>", {})
-- vim.keymap.set('n', 'gd', ":Lspsaga peek_definition<CR>", {})
-- vim.keymap.set('n', 'gD', ":lua vim.lsp.buf.definition()<CR>", {})
-- vim.keymap.set('n', 'gh', ":Lspsaga lsp_finder<CR>", {})
-- vim.keymap.set('n', '/', ":SearchBoxIncSearch<CR>", {})
-- vim.keymap.set('n', ':', "<cmd>FineCmdline<CR>", {})
-- vim.keymap.set('v', '<BS>', "<cmd>'<,'>CommentToggle<CR>", {});
-- vim.keymap.set('n', '<BS>', "<cmd>CommentToggle<CR>", {});


--["n|<S-Tab>"] = map_cr("normal zo"):with_noremap():with_silent(),
--
vim.api.nvim_set_keymap('n', 'ff', "<cmd>lua require('telescope.builtin').find_files()<CR>",
    { noremap = true, silent = true });
vim.api.nvim_set_keymap('n', 'fw', "<cmd>lua require('telescope.builtin').live_grep()<CR>",
    { noremap = true, silent = true });
vim.api.nvim_set_keymap('n', 'fb', "<cmd>lua require('telescope.builtin').buffers()<CR>",
    { noremap = true, silent = true });
vim.api.nvim_set_keymap('n', 'fh', "<cmd>lua require('telescope.builtin').help_tags()<CR>",
    { noremap = true, silent = true });
vim.api.nvim_set_keymap('n', '<C-n>', "<cmd>NvimTreeToggle<CR>", { noremap = true, silent = true });
vim.api.nvim_set_keymap('n', '<C-h>', "<C-w>h", { noremap = true, silent = true });
vim.api.nvim_set_keymap('n', '<C-l>', "<C-w>l", { noremap = true, silent = true });
vim.api.nvim_set_keymap('n', '<C-j>', "<C-w>j", { noremap = true, silent = true });
vim.api.nvim_set_keymap('n', '<C-k>', "<C-w>k", { noremap = true, silent = true });
vim.api.nvim_set_keymap('n', 'q', "<cmd>q<CR>", { noremap = true, silent = true });
vim.api.nvim_set_keymap('n', '<leader>s', "<Esc><cmd>w!<CR>", { noremap = true, silent = true });
vim.api.nvim_set_keymap('i', '<C-s>', "<Esc><cmd>w!<CR>", { noremap = true, silent = true });
vim.api.nvim_set_keymap('n', '<C-s>', "<Esc><cmd>w!<CR>", { noremap = true, silent = true });
vim.api.nvim_set_keymap('n', '<leader>f', "<cmd>lua vim.lsp.buf.format()<CR>", { noremap = true, silent = true });
vim.api.nvim_set_keymap('i', '<C-Enter>', "<Esc><Cmd>ToggleTerm size=40 direction=vertical<CR>",
    { noremap = true, silent = true });
vim.api.nvim_set_keymap('t', '<C-Enter>', "<Esc><Cmd>ToggleTerm size=40 direction=vertical<CR>",
    { noremap = true, silent = true });
vim.api.nvim_set_keymap('n', '<C-Enter>', "<Esc><Cmd>ToggleTerm size=40 direction=vertical<CR>",
    { noremap = true, silent = true });
-- vim.api.nvim_set_keymap('n', '<A-d>', "<Esc><Cmd>ToggleTerm direction=float<CR>", { noremap = true, silent = true });
-- vim.api.nvim_set_keymap('t', '<A-d>', "<C-\\><C-n><Esc><Cmd>ToggleTerm direction=float<CR>",
-- { noremap = true, silent = true });
-- vim.api.nvim_set_keymap('n', '<A-d>', "<cmd>Lspsage open_floaterm<CR>", {silent = true})
-- vim.api.nvim_set_keymap("n", "<A-d>", "<cmd>Lspsaga open_floaterm<CR>", { silent = true })
vim.api.nvim_set_keymap('n', 'gd', "<cmd>Lspsaga peek_definition<CR>", { noremap = true, silent = true });
vim.api.nvim_set_keymap('n', 'gD', "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true });
vim.api.nvim_set_keymap('n', 'gh', "<cmd>Lspsaga lsp_finder<CR>", { noremap = true, silent = true });
-- vim.api.nvim_set_keymap('n', '/', "<cmd>SearchBoxIncSearch<CR>", { noremap = true, silent = true });
-- vim.api.nvim_set_keymap('n', ':', "<cmd>FineCmdline<CR>", { noremap = true, silent = true });
-- vim.api.nvim_set_keymap('v', '<BS>', "<cmd>'<,'>CommentToggle<CR>", { noremap = true, silent = true });
-- vim.api.nvim_set_keymap('n', '<BS>', "<cmd>CommentToggle<CR>", { noremap = true, silent = true });

-- vim.api.nvim_set_keymap('n', '<Tab>', "<cmd>normal za<CR>", { noremap = true, silent = true });
vim.api.nvim_set_keymap('n', 'K', "<cmd>Lspsaga hover_doc<CR>", { noremap = true, silent = true });
vim.api.nvim_set_keymap('n', 'j', 'gj', { noremap = true, silent = true });
vim.api.nvim_set_keymap('n', 'k', 'gk', { noremap = true, silent = true });

-- Show line diagnostics
vim.api.nvim_set_keymap("n", "<leader>cd", "<cmd>Lspsaga show_line_diagnostics<CR>", { silent = true })

-- Show cursor diagnostic
vim.api.nvim_set_keymap("n", "<leader>cd", "<cmd>Lspsaga show_cursor_diagnostics<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<F5>", "<Cmd>lua require'dap'.continue()<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<F10>", "<Cmd>lua require'dap'.step_over()<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<F11>", "<Cmd>lua require'dap'.step_into()<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<F12>", "<Cmd>lua require'dap'.step_out()<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<Leader>b", "<Cmd>lua require'dap'.toggle_breakpoint()<CR>", { silent = true })
-- nnoremap <silent> <Leader>B <Cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>
vim.api.nvim_set_keymap("n", '<Leader> B',
    "<Cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", { silent = true })
-- --    nnoremap <silent> <Leader>lp <Cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>
vim.api.nvim_set_keymap("n", "<Leader>dr", "<Cmd>lua require'dap'.repl.open()<CR>", { silent = true })

vim.api.nvim_set_keymap('n', '<A-1>', "<Cmd>BufferLineGoToBuffer 1<CR>", { silent = true })
vim.api.nvim_set_keymap('n', '¡', "<Cmd>BufferLineGoToBuffer 1<CR>", { silent = true }) -- for macos

vim.api.nvim_set_keymap('n', '<A-2>', "<Cmd>BufferLineGoToBuffer 2<CR>", { silent = true })
vim.api.nvim_set_keymap('n', '™', "<Cmd>BufferLineGoToBuffer 2<CR>", { silent = true }) -- for macos

vim.api.nvim_set_keymap('n', '<A-3>', "<Cmd>BufferLineGoToBuffer 3<CR>", { silent = true })
vim.api.nvim_set_keymap('n', '£', "<Cmd>BufferLineGoToBuffer 2<CR>", { silent = true }) -- for macos

vim.api.nvim_set_keymap('n', '<A-4>', "<Cmd>BufferLineGoToBuffer 4<CR>", { silent = true })
vim.api.nvim_set_keymap('n', '¢', "<Cmd>BufferLineGoToBuffer 4<CR>", { silent = true }) -- for macos
