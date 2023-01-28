-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/guangzong/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/guangzong/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/guangzong/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/guangzong/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/guangzong/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/Users/guangzong/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["better-escape.nvim"] = {
    config = { "\27LJ\2\n¶\1\0\0\4\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0026\3\6\0009\3\a\0039\3\b\3=\3\t\2B\0\2\1K\0\1\0\ftimeout\15timeoutlen\6o\bvim\fmapping\1\0\2\22clear_empty_lines\1\tkeys\n<Esc>\1\4\0\0\ajk\ajj\akk\nsetup\18better_escape\frequire\0" },
    loaded = true,
    path = "/Users/guangzong/.local/share/nvim/site/pack/packer/start/better-escape.nvim",
    url = "https://github.com/max397574/better-escape.nvim"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\n<\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/Users/guangzong/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  catppuccin = {
    config = { "\27LJ\2\nÜ\2\0\0\5\0\15\0\0206\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\4\0'\2\5\0B\0\2\0029\0\6\0005\2\n\0005\3\a\0005\4\b\0=\4\t\3=\3\v\2B\0\2\0016\0\0\0009\0\f\0009\0\r\0'\2\14\0B\0\2\1K\0\1\0\27colorscheme catppuccin\17nvim_command\bapi\17integrations\1\0\0\bdap\1\0\2\14enable_ui\2\fenabled\2\1\0\4\vfidget\2\rnvimtree\2\bcmp\2\rgitsigns\2\nsetup\15catppuccin\frequire\nmocha\23catppuccin_flavour\6g\bvim\0" },
    loaded = true,
    path = "/Users/guangzong/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["feline.nvim"] = {
    config = { "\27LJ\2\nß\1\0\0\6\0\b\0\0196\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\5\0009\4\4\0B\4\1\2=\4\6\3B\1\2\0016\1\0\0'\3\2\0B\1\2\0029\1\a\0019\1\3\1B\1\1\1K\0\1\0\vwinbar\15components\1\0\0\bget\nsetup\vfeline*catppuccin.groups.integrations.feline\frequire\0" },
    loaded = true,
    path = "/Users/guangzong/.local/share/nvim/site/pack/packer/start/feline.nvim",
    url = "https://github.com/feline-nvim/feline.nvim"
  },
  ["fidget.nvim"] = {
    config = { "\27LJ\2\nU\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\vwindow\1\0\0\1\0\1\nblend\3\0\nsetup\vfidget\frequire\0" },
    loaded = true,
    path = "/Users/guangzong/.local/share/nvim/site/pack/packer/start/fidget.nvim",
    url = "https://github.com/j-hui/fidget.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/Users/guangzong/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\nw\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\25show_current_context\2\31show_current_context_start\2\nsetup\21indent_blankline\frequire\0" },
    loaded = true,
    path = "/Users/guangzong/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lsp_signature.nvim"] = {
    load_after = {},
    loaded = false,
    needs_bufread = false,
    path = "/Users/guangzong/.local/share/nvim/site/pack/packer/opt/lsp_signature.nvim",
    url = "https://github.com/ray-x/lsp_signature.nvim"
  },
  ["nvim-lspconfig"] = {
    after = { "lsp_signature.nvim" },
    config = { "\27LJ\2\nÕ\3\0\0\6\0\24\0;6\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0004\2\0\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\4\0009\0\3\0004\2\0\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\5\0009\0\3\0004\2\0\0B\0\2\0016\0\6\0009\0\a\0009\0\b\0009\0\t\0B\0\1\0025\1\v\0=\1\n\0006\1\0\0'\3\1\0B\1\2\0029\1\f\0019\1\3\0015\3\r\0=\0\14\3B\1\2\0016\1\0\0'\3\1\0B\1\2\0029\1\15\0019\1\3\0015\3\16\0006\4\17\0=\4\17\0036\4\18\0=\4\19\0035\4\20\0004\5\0\0=\5\21\4=\4\22\3B\1\2\0016\1\0\0'\3\1\0B\1\2\0029\1\23\0019\1\3\0014\3\0\0B\1\2\1K\0\1\0\vjsonls\rsettings\18rust-analyzer\1\0\0\nflags\14lsp_flags\14on_attach\1\0\0\18rust_analyzer\17capabilities\1\0\0\vclangd\1\2\0\0\vutf-16\19offsetEncoding\29make_client_capabilities\rprotocol\blsp\bvim\npylsp\16sumneko_lua\nsetup\rmarksman\14lspconfig\frequire\0" },
    loaded = true,
    only_config = true,
    path = "/Users/guangzong/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/Users/guangzong/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nê\1\0\2\t\0\a\1\21*\2\0\0006\3\0\0006\5\1\0009\5\2\0059\5\3\0056\6\1\0009\6\4\0069\6\5\6\18\b\1\0B\6\2\0A\3\1\3\15\0\3\0X\5\aÄ\15\0\4\0X\5\5Ä9\5\6\4\1\2\5\0X\5\2Ä+\5\2\0L\5\2\0K\0\1\0\tsize\22nvim_buf_get_name\bapi\ffs_stat\tloop\bvim\npcallÄ¿\fﬂ\3\1\0\5\0\22\0!6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0004\4\0\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\5\0'\3\6\0004\4\0\0B\0\4\0016\0\a\0'\2\b\0B\0\2\0029\0\t\0005\2\v\0005\3\n\0=\3\f\0025\3\r\0=\3\14\0025\3\15\0005\4\16\0=\4\17\0033\4\18\0=\4\17\3=\3\19\0025\3\20\0=\3\21\2B\0\2\1K\0\1\0\26context_commentstring\1\0\2\19enable_autocmd\1\venable\2\14highlight\0\fdisable\1\2\0\0\rmarkdown\1\0\2&additional_vim_regex_highlighting\1\venable\2\19ignore_install\1\3\0\0\rmarkdown\amd\21ensure_installed\1\0\2\17auto_install\2\17sync_install\1\1\4\0\0\6c\blua\bcpp\nsetup\28nvim-treesitter.configs\frequire\31nvim_treesitter#foldexpr()\rfoldexpr\texpr\15foldmethod\26nvim_set_option_value\bapi\bvim\0" },
    loaded = true,
    path = "/Users/guangzong/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/guangzong/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/guangzong/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["tabout.nvim"] = {
    config = { "\27LJ\2\nï\3\0\0\5\0\f\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\a\0005\4\4\0>\4\1\0035\4\5\0>\4\2\0035\4\6\0>\4\3\0035\4\a\0>\4\4\0035\4\b\0>\4\5\0035\4\t\0>\4\6\3=\3\n\0024\3\0\0=\3\v\2B\0\2\1K\0\1\0\fexclude\ftabouts\1\0\2\topen\6{\nclose\6}\1\0\2\topen\6[\nclose\6]\1\0\2\topen\6(\nclose\6)\1\0\2\topen\6`\nclose\6`\1\0\2\topen\6\"\nclose\6\"\1\0\2\topen\6'\nclose\6'\1\0\t\21backwards_tabkey\f<S-Tab>\vtabkey\n<Tab>\15completion\2\21ignore_beginning\2\21enable_backwards\2\22default_shift_tab\n<C-d>\16default_tab\n<C-t>\21act_as_shift_tab\1\15act_as_tab\2\nsetup\vtabout\frequire\0" },
    loaded = true,
    path = "/Users/guangzong/.local/share/nvim/site/pack/packer/start/tabout.nvim",
    url = "https://github.com/abecodes/tabout.nvim",
    wants = { "nvim-treesitter" }
  },
  ["vim-matchup"] = {
    config = { "\27LJ\2\nN\0\0\2\0\4\0\0056\0\0\0009\0\1\0005\1\3\0=\1\2\0K\0\1\0\1\0\1\vmethod\npopup!matchup_matchparen_offscreen\6g\bvim\0" },
    loaded = true,
    path = "/Users/guangzong/.local/share/nvim/site/pack/packer/start/vim-matchup",
    url = "https://github.com/andymass/vim-matchup"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nê\1\0\2\t\0\a\1\21*\2\0\0006\3\0\0006\5\1\0009\5\2\0059\5\3\0056\6\1\0009\6\4\0069\6\5\6\18\b\1\0B\6\2\0A\3\1\3\15\0\3\0X\5\aÄ\15\0\4\0X\5\5Ä9\5\6\4\1\2\5\0X\5\2Ä+\5\2\0L\5\2\0K\0\1\0\tsize\22nvim_buf_get_name\bapi\ffs_stat\tloop\bvim\npcallÄ¿\fﬂ\3\1\0\5\0\22\0!6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0004\4\0\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\5\0'\3\6\0004\4\0\0B\0\4\0016\0\a\0'\2\b\0B\0\2\0029\0\t\0005\2\v\0005\3\n\0=\3\f\0025\3\r\0=\3\14\0025\3\15\0005\4\16\0=\4\17\0033\4\18\0=\4\17\3=\3\19\0025\3\20\0=\3\21\2B\0\2\1K\0\1\0\26context_commentstring\1\0\2\19enable_autocmd\1\venable\2\14highlight\0\fdisable\1\2\0\0\rmarkdown\1\0\2&additional_vim_regex_highlighting\1\venable\2\19ignore_install\1\3\0\0\rmarkdown\amd\21ensure_installed\1\0\2\17auto_install\2\17sync_install\1\1\4\0\0\6c\blua\bcpp\nsetup\28nvim-treesitter.configs\frequire\31nvim_treesitter#foldexpr()\rfoldexpr\texpr\15foldmethod\26nvim_set_option_value\bapi\bvim\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: better-escape.nvim
time([[Config for better-escape.nvim]], true)
try_loadstring("\27LJ\2\n¶\1\0\0\4\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0026\3\6\0009\3\a\0039\3\b\3=\3\t\2B\0\2\1K\0\1\0\ftimeout\15timeoutlen\6o\bvim\fmapping\1\0\2\22clear_empty_lines\1\tkeys\n<Esc>\1\4\0\0\ajk\ajj\akk\nsetup\18better_escape\frequire\0", "config", "better-escape.nvim")
time([[Config for better-escape.nvim]], false)
-- Config for: vim-matchup
time([[Config for vim-matchup]], true)
try_loadstring("\27LJ\2\nN\0\0\2\0\4\0\0056\0\0\0009\0\1\0005\1\3\0=\1\2\0K\0\1\0\1\0\1\vmethod\npopup!matchup_matchparen_offscreen\6g\bvim\0", "config", "vim-matchup")
time([[Config for vim-matchup]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
try_loadstring("\27LJ\2\n<\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\15bufferline\frequire\0", "config", "bufferline.nvim")
time([[Config for bufferline.nvim]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\nw\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\25show_current_context\2\31show_current_context_start\2\nsetup\21indent_blankline\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nÕ\3\0\0\6\0\24\0;6\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0004\2\0\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\4\0009\0\3\0004\2\0\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\5\0009\0\3\0004\2\0\0B\0\2\0016\0\6\0009\0\a\0009\0\b\0009\0\t\0B\0\1\0025\1\v\0=\1\n\0006\1\0\0'\3\1\0B\1\2\0029\1\f\0019\1\3\0015\3\r\0=\0\14\3B\1\2\0016\1\0\0'\3\1\0B\1\2\0029\1\15\0019\1\3\0015\3\16\0006\4\17\0=\4\17\0036\4\18\0=\4\19\0035\4\20\0004\5\0\0=\5\21\4=\4\22\3B\1\2\0016\1\0\0'\3\1\0B\1\2\0029\1\23\0019\1\3\0014\3\0\0B\1\2\1K\0\1\0\vjsonls\rsettings\18rust-analyzer\1\0\0\nflags\14lsp_flags\14on_attach\1\0\0\18rust_analyzer\17capabilities\1\0\0\vclangd\1\2\0\0\vutf-16\19offsetEncoding\29make_client_capabilities\rprotocol\blsp\bvim\npylsp\16sumneko_lua\nsetup\rmarksman\14lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: fidget.nvim
time([[Config for fidget.nvim]], true)
try_loadstring("\27LJ\2\nU\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\vwindow\1\0\0\1\0\1\nblend\3\0\nsetup\vfidget\frequire\0", "config", "fidget.nvim")
time([[Config for fidget.nvim]], false)
-- Config for: catppuccin
time([[Config for catppuccin]], true)
try_loadstring("\27LJ\2\nÜ\2\0\0\5\0\15\0\0206\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\4\0'\2\5\0B\0\2\0029\0\6\0005\2\n\0005\3\a\0005\4\b\0=\4\t\3=\3\v\2B\0\2\0016\0\0\0009\0\f\0009\0\r\0'\2\14\0B\0\2\1K\0\1\0\27colorscheme catppuccin\17nvim_command\bapi\17integrations\1\0\0\bdap\1\0\2\14enable_ui\2\fenabled\2\1\0\4\vfidget\2\rnvimtree\2\bcmp\2\rgitsigns\2\nsetup\15catppuccin\frequire\nmocha\23catppuccin_flavour\6g\bvim\0", "config", "catppuccin")
time([[Config for catppuccin]], false)
-- Config for: feline.nvim
time([[Config for feline.nvim]], true)
try_loadstring("\27LJ\2\nß\1\0\0\6\0\b\0\0196\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\5\0009\4\4\0B\4\1\2=\4\6\3B\1\2\0016\1\0\0'\3\2\0B\1\2\0029\1\a\0019\1\3\1B\1\1\1K\0\1\0\vwinbar\15components\1\0\0\bget\nsetup\vfeline*catppuccin.groups.integrations.feline\frequire\0", "config", "feline.nvim")
time([[Config for feline.nvim]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: tabout.nvim
time([[Config for tabout.nvim]], true)
try_loadstring("\27LJ\2\nï\3\0\0\5\0\f\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\a\0005\4\4\0>\4\1\0035\4\5\0>\4\2\0035\4\6\0>\4\3\0035\4\a\0>\4\4\0035\4\b\0>\4\5\0035\4\t\0>\4\6\3=\3\n\0024\3\0\0=\3\v\2B\0\2\1K\0\1\0\fexclude\ftabouts\1\0\2\topen\6{\nclose\6}\1\0\2\topen\6[\nclose\6]\1\0\2\topen\6(\nclose\6)\1\0\2\topen\6`\nclose\6`\1\0\2\topen\6\"\nclose\6\"\1\0\2\topen\6'\nclose\6'\1\0\t\21backwards_tabkey\f<S-Tab>\vtabkey\n<Tab>\15completion\2\21ignore_beginning\2\21enable_backwards\2\22default_shift_tab\n<C-d>\16default_tab\n<C-t>\21act_as_shift_tab\1\15act_as_tab\2\nsetup\vtabout\frequire\0", "config", "tabout.nvim")
time([[Config for tabout.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
