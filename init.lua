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
