local vim = vim
require('options')

require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
end)


require('tools/plugins')
require('lang/plugins')
require('ui/plugins')
require('keymap')

--require('lang.conf')
--require('lang.cmp_conf')
--require('tools.conf')
--require('ui.feline_one_monokai')
--require('ui.conf')
vim.cmd("autocmd BufWritePost plugins.lua PackerCompile")
vim.cmd("autocmd BufWritePost init.lua PackerCompile")
vim.cmd("autocmd BufWritePost conf.lua PackerCompile")
-- let g:transparency = 0.8
vim.g.transparency = 0.8
vim.cmd("let g:neovide_background_color = '#0f1117'.printf('%x', float2nr(255 * g:transparency))")
vim.cmd("let g:neovide_transparency = 0.9")
