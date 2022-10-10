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
vim.api.nvim_set_keymap('n', 'fb', "<cmd>lua require('telescope.builtin').buffers()<CR>", { noremap = true, silent = true });
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
vim.api.nvim_set_keymap('i', '<F5>', "<Esc><Cmd>ToggleTerm direction=float<CR>", { noremap = true, silent = true });
vim.api.nvim_set_keymap('n', '<F5>', "<Esc><Cmd>ToggleTerm direction=float<CR>", { noremap = true, silent = true });
vim.api.nvim_set_keymap('t', '<F5>', "<C-\\><C-n><Esc><Cmd>ToggleTerm direction=float<CR>",
    { noremap = true, silent = true });
vim.api.nvim_set_keymap('n', 'gd', "<cmd>Lspsaga peek_definition<CR>", { noremap = true, silent = true });
vim.api.nvim_set_keymap('n', 'gD', "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true });
vim.api.nvim_set_keymap('n', 'gh', "<cmd>Lspsaga lsp_finder<CR>", { noremap = true, silent = true });
vim.api.nvim_set_keymap('n', '/', "<cmd>SearchBoxIncSearch<CR>", { noremap = true, silent = true });
vim.api.nvim_set_keymap('n', ':', "<cmd>FineCmdline<CR>", { noremap = true, silent = true });
vim.api.nvim_set_keymap('v', '<BS>', "<cmd>'<,'>CommentToggle<CR>", { noremap = true, silent = true });
vim.api.nvim_set_keymap('n', '<BS>', "<cmd>CommentToggle<CR>", { noremap = true, silent = true });

vim.api.nvim_set_keymap('n', '<Tab>', "<cmd>normal za<CR>", { noremap = true, silent = true });
-- vim.api.nvim_set_keymap('n', '<Tab>', "<cmd>normal zc<CR>", { noremap = true, silent = true });
-- vim.api.nvim_set_keymap('n', '<S-Tab>', "<cmd>normal zo<CR>", { noremap = true, silent = true });
