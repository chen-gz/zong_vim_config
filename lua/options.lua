local global = {}
local vim = vim
local os_name = vim.loop.os_uname().sysname

function global:load_variables()
    self.is_mac = os_name == "Darwin"
    self.is_linux = os_name == "Linux"
    self.is_windows = os_name == "Windows_NT"
    self.vim_path = vim.fn.stdpath("config")
    local path_sep = self.is_windows and "\\" or "/"
    local home = self.is_windows and os.getenv("USERPROFILE") or os.getenv("HOME")
    self.cache_dir = home .. path_sep .. ".cache" .. path_sep .. "nvim" .. path_sep
    self.modules_dir = self.vim_path .. path_sep .. "modules"
    self.home = home
    self.data_dir = string.format("%s/site/", vim.fn.stdpath("data"))
end

global:load_variables()
local vim               = vim
-- options
vim.o["number"]         = true -- show line numbers
vim.o["relativenumber"] = true -- show relative line numbers
vim.o["list"]           = true -- show invisible characters
vim.o["listchars"]      = "tab:»·,trail:·,nbsp:·,extends:»,precedes:«"
vim.o["expandtab"]      = true -- use spaces instead of tabs
vim.o["tabstop"]        = 4 -- number of visual spaces per TAB
vim.o["shiftwidth"]     = 4 -- number of spaces to use for autoindent
vim.o["smarttab"]       = true
vim.o["wrap"]           = true -- wrap lines
vim.o["showbreak"]      = "↪" -- "↳"
vim.o["laststatus"]     = 2 -- always show status line
vim.o["display"]        = "lastline" -- show last line of file
vim.o["clipboard"]      = "unnamedplus" -- copy to system clipboard
vim.o["mouse"]          = "a" -- enable mouse in all modes
vim.o["wildignore"]     = ".git,.hg,.svn,*.pyc,*.o,*.out,*.jpg,*.jpeg,*.png,*.gif,*.zip,**/tmp/**,*.DS_Store,**/node_modules/**,**/bower_modules/**"
vim.o["backup"]         = false -- disable backup
vim.o["writebackup"]    = false -- don't create backup files
vim.o["swapfile"]       = false -- disable swap file
vim.o["undofile"]       = true -- enable persistent undo
vim.o["undodir"]        = global.cache_dir .. "undo/" -- set undo directory
vim.o["cursorline"]     = true -- highlight current line
vim.o["cursorcolumn"]   = false -- highlight current column
vim.o["virtualedit"]    = "all" -- allow cursor to move in virtual space
-- vim.o["guifont"]        = "Source Code Pro:h14" -- font for gui
vim.o["guifont"]        = "JetBrains Mono Regular:h14"
vim.o["fileformat"]     = "unix" -- always use unix line endings (LF)
vim.o["spelllang"]      = "en_us" -- set spell check language
vim.o["spell"]          = false -- enable spell checking
vim.o["scrolloff"]      = 8 -- lines of content to keep above and below cursor
vim.o["autoread"]       = true -- automatically reload files when changed
vim.o["autowrite"]      = true -- automatically save before commands like :next and :make
vim.o["cmdheight"]      = 1 -- height of command bar
vim.o["termguicolors"]  = true -- enable 24-bit RGB colors
vim.o["conceallevel"]   = 2
vim.o["foldlevelstart"] = 99
vim.o["foldenable"]     = true
vim.o["errorbells"]     = true
vim.o["visualbell"]     = true
vim.o["hidden"]         = true
vim.o["magic"]          = true -- make regular
vim.o["encoding"]       = "utf-8"
--vim.o["viewoptions"]    = "folds,cursor,curdir,slash, unix"
vim.o["sessionop"]      = "curdir,help, tabpages, winsize"
vim.o["wildignorecase"] = true
vim.o["wildignore"]     = ".git,.hg,.svn,*.pyc,*.o,*.out,*.jpg,*.jpeg,*.png,*.gif,*.zip,**/tmp/**,*.DS_Store,**/node_modules/**,**/bower_modules/**"
vim.o["winwinwidth"]    = 10;



vim.g.mapleader = " "

-- vim.o["colorscheme"] = "gruvbox"
