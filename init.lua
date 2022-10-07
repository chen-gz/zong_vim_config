local vim = vim
require('options')

require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
end)


require('tools/plugins')
require('lang/plugins')
require('ui/plugins')
require('keymap')



