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
local package_path_str = "/home/zong/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/zong/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/zong/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/zong/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/zong/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
    path = "/home/zong/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    config = { "\27LJ\2\n�\2\0\0\3\0\t\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0005\2\4\0B\0\2\0016\0\0\0'\2\5\0B\0\2\0029\0\6\0B\0\1\0016\0\0\0'\2\a\0B\0\2\0029\0\6\0B\0\1\0016\0\0\0'\2\b\0B\0\2\0029\0\6\0B\0\1\1K\0\1\0\"luasnip.loaders.from_snipmate luasnip.loaders.from_vscode\14lazy_load\29luasnip.loaders.from_lua\1\0\3\24delete_check_events\28TextChanged,InsertLeave\17updateevents\29TextChanged,TextChangedI\fhistory\2\15set_config\vconfig\fluasnip\frequire\0" },
    loaded = true,
    path = "/home/zong/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["better-escape.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\4\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0026\3\6\0009\3\a\0039\3\b\3=\3\t\2B\0\2\1K\0\1\0\ftimeout\15timeoutlen\6o\bvim\fmapping\1\0\2\tkeys\n<Esc>\22clear_empty_lines\1\1\4\0\0\ajk\ajj\akk\nsetup\18better_escape\frequire\0" },
    loaded = true,
    path = "/home/zong/.local/share/nvim/site/pack/packer/start/better-escape.nvim",
    url = "https://github.com/max397574/better-escape.nvim"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\n<\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/home/zong/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  catppuccin = {
    config = { "\27LJ\2\n�\2\0\0\5\0\15\0\0206\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\4\0'\2\5\0B\0\2\0029\0\6\0005\2\n\0005\3\a\0005\4\b\0=\4\t\3=\3\v\2B\0\2\0016\0\0\0009\0\f\0009\0\r\0'\2\14\0B\0\2\1K\0\1\0\27colorscheme catppuccin\17nvim_command\bapi\17integrations\1\0\0\bdap\1\0\2\14enable_ui\2\fenabled\2\1\0\4\bcmp\2\rnvimtree\2\vfidget\2\rgitsigns\2\nsetup\15catppuccin\frequire\nmocha\23catppuccin_flavour\6g\bvim\0" },
    loaded = true,
    path = "/home/zong/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/zong/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-latex-symbols"] = {
    loaded = true,
    path = "/home/zong/.local/share/nvim/site/pack/packer/start/cmp-latex-symbols",
    url = "https://github.com/kdheepak/cmp-latex-symbols"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/zong/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/zong/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/zong/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-spell"] = {
    loaded = true,
    path = "/home/zong/.local/share/nvim/site/pack/packer/start/cmp-spell",
    url = "https://github.com/f3fora/cmp-spell"
  },
  ["cmp-under-comparator"] = {
    loaded = true,
    path = "/home/zong/.local/share/nvim/site/pack/packer/start/cmp-under-comparator",
    url = "https://github.com/lukas-reineke/cmp-under-comparator"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/zong/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["copilot-cmp"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\16copilot_cmp\frequire\0" },
    loaded = true,
    path = "/home/zong/.local/share/nvim/site/pack/packer/start/copilot-cmp",
    url = "https://github.com/zbirenbaum/copilot-cmp"
  },
  ["copilot.lua"] = {
    config = { "\27LJ\2\n�\3\0\0\5\0\14\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\0025\3\b\0005\4\t\0=\4\5\3=\3\n\0025\3\v\0=\3\f\0024\3\0\0=\3\r\2B\0\2\1K\0\1\0\26server_opts_overrides\14filetypes\1\0\t\6.\2\bcvs\1\bsvn\1\rhgcommit\1\14gitrebase\1\14gitcommit\1\thelp\1\rmarkdown\1\tyaml\1\15suggestion\1\0\4\tprev\n<M-[>\tnext\n<M-]>\fdismiss\n<C-]>\vaccept\n<M-l>\1\0\3\fenabled\2\rdebounce\3K\17auto_trigger\1\npanel\1\0\1\25copilot_node_command\tnode\vkeymap\1\0\5\vaccept\t<CR>\14jump_next\a]]\14jump_prev\a[[\topen\v<M-CR>\frefresh\agr\1\0\2\17auto_refresh\1\fenabled\2\nsetup\fcopilot\frequire\0" },
    loaded = true,
    path = "/home/zong/.local/share/nvim/site/pack/packer/start/copilot.lua",
    url = "https://github.com/zbirenbaum/copilot.lua"
  },
  ["feline.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\26ui.feline_one_monokai\frequire\0" },
    loaded = true,
    path = "/home/zong/.local/share/nvim/site/pack/packer/start/feline.nvim",
    url = "https://github.com/feline-nvim/feline.nvim"
  },
  ["fidget.nvim"] = {
    config = { "\27LJ\2\nU\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\vwindow\1\0\0\1\0\1\nblend\3\0\nsetup\vfidget\frequire\0" },
    loaded = true,
    path = "/home/zong/.local/share/nvim/site/pack/packer/start/fidget.nvim",
    url = "https://github.com/j-hui/fidget.nvim"
  },
  ["fold-preview.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\a\0\v\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0006\1\0\0'\3\6\0B\1\2\2=\1\5\0006\1\0\0'\3\1\0B\1\2\0029\1\a\0019\2\5\0'\4\b\0'\5\t\0009\6\n\1B\2\4\1K\0\1\0!show_close_preview_open_fold\6h\6n\fmapping\17keymap-amend\namend\vkeymap\bvim\nsetup\17fold-preview\frequire\0" },
    loaded = true,
    path = "/home/zong/.local/share/nvim/site/pack/packer/start/fold-preview.nvim",
    url = "https://github.com/anuvyklack/fold-preview.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/zong/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/home/zong/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\nw\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\25show_current_context\2\31show_current_context_start\2\nsetup\21indent_blankline\frequire\0" },
    loaded = true,
    path = "/home/zong/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["keymap-amend.nvim"] = {
    loaded = true,
    path = "/home/zong/.local/share/nvim/site/pack/packer/start/keymap-amend.nvim",
    url = "https://github.com/anuvyklack/keymap-amend.nvim"
  },
  ["lsp_signature.nvim"] = {
    load_after = {},
    loaded = false,
    needs_bufread = false,
    path = "/home/zong/.local/share/nvim/site/pack/packer/opt/lsp_signature.nvim",
    url = "https://github.com/ray-x/lsp_signature.nvim"
  },
  ["lspsaga.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\v\0\t\0\0195\0\0\0006\1\1\0\18\3\0\0B\1\2\4H\4\v�'\6\2\0\18\a\4\0&\6\a\0066\a\3\0009\a\4\a9\a\5\a\18\t\6\0005\n\6\0=\5\a\n=\6\b\nB\a\3\1F\4\3\3R\4�\127K\0\1\0\vtexthl\ttext\1\0\0\16sign_define\afn\bvim\19DiagnosticSign\npairs\1\0\4\tInfo\t \tWarn\t \tHint\t \nError\t �\2\0\0\3\0\19\0\0296\0\0\0009\0\1\0009\0\2\0\a\0\3\0X\0\6�6\0\4\0'\2\5\0B\0\2\0029\0\6\0D\0\1\0X\0\17�6\0\4\0'\2\a\0B\0\2\0029\0\b\0009\1\n\0=\1\t\0009\1\n\0=\1\v\0009\1\r\0=\1\f\0009\1\15\0=\1\14\0009\1\17\0=\1\16\0009\1\n\0=\1\18\0L\0\2\0K\0\1\0\vmaroon\tblue\rsapphire\vviolet\nmauve\vyellow\14rosewater\rflamingo\vorange\npeach\vcolors\20lspsaga.lspkind\16get_palette\24catppuccin.palettes\frequire\15catppuccin\16colors_name\6g\bvim�\t\1\0\t\0P\0�\0013\0\0\0003\1\1\0\18\2\0\0B\2\1\1\18\2\1\0B\2\1\0026\3\2\0'\5\3\0B\3\2\0029\3\4\0035\5\6\0005\6\5\0=\6\a\0055\6\n\0005\a\b\0009\b\t\2>\b\2\a=\a\v\0065\a\f\0009\b\r\2>\b\2\a=\a\14\0065\a\15\0009\b\r\2>\b\2\a=\a\16\0065\a\17\0009\b\r\2>\b\2\a=\a\18\0065\a\19\0009\b\20\2>\b\2\a=\a\21\0065\a\22\0009\b\r\2>\b\2\a=\a\23\0065\a\24\0009\b\25\2>\b\2\a=\a\26\0065\a\27\0009\b\25\2>\b\2\a=\a\28\0065\a\29\0009\b\30\2>\b\2\a=\a\31\0065\a \0009\b\20\2>\b\2\a=\a!\0065\a\"\0009\b\20\2>\b\2\a=\a#\0065\a$\0009\b\r\2>\b\2\a=\a%\0065\a&\0009\b'\2>\b\2\a=\a(\0065\a)\0009\b'\2>\b\2\a=\a*\0065\a+\0009\b,\2>\b\2\a=\a-\0065\a.\0009\b'\2>\b\2\a=\a/\0065\a0\0009\b'\2>\b\2\a=\a1\0065\a2\0009\b'\2>\b\2\a=\a3\0065\a4\0009\b\20\2>\b\2\a=\a5\0065\a6\0009\b7\2>\b\2\a=\a8\0065\a9\0009\b\20\2>\b\2\a=\a:\0065\a;\0009\b\25\2>\b\2\a=\a<\0065\a=\0009\b\20\2>\b\2\a=\a>\0065\a?\0009\b\20\2>\b\2\a=\a@\0065\aA\0009\bB\2>\b\2\a=\aC\0065\aD\0009\bE\2>\b\2\a=\aF\0065\aG\0009\b,\2>\b\2\a=\aH\0065\aI\0009\b\r\2>\b\2\a=\aJ\0065\aK\0009\b'\2>\b\2\a=\aL\0065\aM\0009\b7\2>\b\2\a=\aN\6=\6O\5B\3\2\1K\0\1\0\16custom_kind\nMacro\1\2\0\0\t \17StaticMethod\1\2\0\0\tﴂ \14Parameter\1\2\0\0\t \14TypeAlias\1\2\0\0\t \18TypeParameter\vmaroon\1\2\0\0\t \rOperator\bsky\1\2\0\0\t \nEvent\1\2\0\0\t \vStruct\1\2\0\0\t \15EnumMember\1\2\0\0\t \tNull\1\2\0\0\tﳠ \bKey\bred\1\2\0\0\t \vObject\1\2\0\0\t \nArray\1\2\0\0\t \fBoolean\1\2\0\0\t \vNumber\1\2\0\0\t \vString\ngreen\1\2\0\0\t \rConstant\1\2\0\0\t \rVariable\npeach\1\2\0\0\t \rFunction\1\2\0\0\t \14Interface\1\2\0\0\t \tEnum\1\2\0\0\t \16Constructor\rsapphire\1\2\0\0\t \nField\1\2\0\0\t \rProperty\tteal\1\2\0\0\tﰠ \vMethod\1\2\0\0\t \nClass\vyellow\1\2\0\0\tﴯ \fPackage\1\2\0\0\t \14Namespace\1\2\0\0\t \vModule\tblue\1\2\0\0\t \tFile\1\0\0\14rosewater\1\2\0\0\t \22diagnostic_header\1\0\0\1\5\0\0\t \t \n  \t \18init_lsp_saga\flspsaga\frequire\0\0\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/zong/.local/share/nvim/site/pack/packer/opt/lspsaga.nvim",
    url = "https://github.com/glepnir/lspsaga.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n�\2\0\0\f\0\14\0\0286\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0016\0\0\0'\2\3\0B\0\2\0026\1\0\0'\3\4\0B\1\2\0026\2\0\0'\4\5\0B\2\2\0029\3\6\1\18\5\3\0009\3\a\3'\6\b\0009\a\t\0005\t\f\0005\n\n\0004\v\0\0=\v\v\n=\n\r\tB\a\2\0A\3\2\1K\0\1\0\14filetypes\1\0\0\6*\1\0\1\btex\1\20on_confirm_done\17confirm_done\aon\nevent'nvim-autopairs.completion.handlers\bcmp\"nvim-autopairs.completion.cmp\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/home/zong/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    after = { "tabout.nvim" },
    config = { "\27LJ\2\nF\0\1\a\0\3\0\b6\1\0\0009\1\1\0019\1\2\1\18\3\0\0+\4\2\0+\5\2\0+\6\2\0D\1\5\0\27nvim_replace_termcodes\bapi\bvim\15\0\0\1\0\0\0\2+\0\1\0L\0\2\0C\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire�\1\0\1\6\3\n\0!-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\1\1B\1\1\1X\1\23�6\1\2\0'\3\3\0B\1\2\0029\1\4\1B\1\1\2\15\0\1\0X\2\t�6\1\5\0009\1\6\0019\1\a\1-\3\1\0'\5\b\0B\3\2\2'\4\t\0B\1\3\1X\1\a�-\1\2\0B\1\1\2\15\0\1\0X\2\1�X\1\2�\18\1\0\0B\1\1\1K\0\1\0\0�\2�\3�\5!<Plug>luasnip-expand-or-jump\rfeedkeys\afn\bvim\23expand_or_jumpable\fluasnip\frequire\21select_next_item\fvisible�\1\0\1\6\2\n\0\29-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\1\1B\1\1\1X\1\19�6\1\2\0'\3\3\0B\1\2\0029\1\4\1)\3��B\1\2\2\15\0\1\0X\2\t�6\1\5\0009\1\6\0019\1\a\1-\3\1\0'\5\b\0B\3\2\2'\4\t\0B\1\3\1X\1\2�\18\1\0\0B\1\1\1K\0\1\0\0�\2�\5\28<Plug>luasnip-jump-prev\rfeedkeys\afn\bvim\rjumpable\fluasnip\frequire\21select_prev_item\fvisible�\4\0\2\a\0\t\0\0145\2\0\0006\3\2\0009\3\3\3'\5\4\0009\6\1\0018\6\6\2B\3\3\2=\3\1\0015\3\6\0009\4\a\0009\4\b\0048\3\4\3=\3\5\1L\1\2\0\tname\vsource\1\0\b\ttmux\v[TMUX]\fluasnip\v[SNIP]\nspell\f[SPELL]\forgmode\n[ORG]\rnvim_lua\n[LUA]\rnvim_lsp\n[LSP]\vbuffer\n[BUF]\tpath\v[PATH]\tmenu\a%s\vformat\vstring\tkind\1\0\25\tFile\b\nValue\b\vModule\b\tUnit\b\rOperator\b\rConstant\b\18TypeParameter\b\rVariable\b\rFunction\b\14Interface\b\tEnum\b\tText\b\16Constructor\b\nEvent\b\nField\b\vStruct\b\15EnumMember\b\rProperty\bﰠ\vFolder\b\vMethod\b\14Reference\b\nClass\bﴯ\nColor\b\fSnippet\b\fKeyword\b�\v\1\0\14\0S\0�\0016\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0023\2\3\0003\3\4\0009\4\5\0005\6\t\0005\a\a\0003\b\6\0=\b\b\a=\a\n\0065\a\v\0004\b\v\0006\t\0\0'\v\f\0B\t\2\0029\t\r\t>\t\1\b6\t\0\0'\v\f\0B\t\2\0029\t\14\t>\t\2\b9\t\15\1>\t\3\b9\t\16\1>\t\4\b9\t\14\1>\t\5\b6\t\0\0'\v\17\0B\t\2\0029\t\18\t>\t\6\b9\t\19\1>\t\a\b9\t\20\1>\t\b\b9\t\21\1>\t\t\b9\t\22\1>\t\n\b=\b\23\a=\a\24\0069\a\25\0009\a\26\a9\a\27\a5\t\30\0009\n\25\0009\n\28\n5\f\29\0B\n\2\2=\n\31\t9\n\25\0009\n \n5\f#\0009\r!\0009\r\"\r=\r$\fB\n\2\2=\n%\t9\n\25\0009\n&\n5\f'\0009\r!\0009\r\"\r=\r$\fB\n\2\2=\n(\t9\n\25\0009\n)\n)\f��B\n\2\2=\n*\t9\n\25\0009\n)\n)\f\4\0B\n\2\2=\n+\t9\n\25\0009\n,\nB\n\1\2=\n-\t9\n\25\0009\n.\nB\n\1\2=\n/\t9\n\25\0003\f0\0005\r1\0B\n\3\2=\n2\t9\n\25\0003\f3\0005\r4\0B\n\3\2=\n5\tB\a\2\2=\a\25\0064\a\v\0005\b6\0>\b\1\a5\b7\0>\b\2\a5\b8\0>\b\3\a5\b9\0>\b\4\a5\b:\0>\b\5\a5\b;\0>\b\6\a5\b<\0>\b\a\a5\b=\0>\b\b\a5\b>\0>\b\t\a5\b?\0>\b\n\a=\a@\0065\aB\0003\bA\0=\bC\a=\aD\6B\4\2\0019\4\5\0009\4E\4'\6F\0005\aJ\0009\bG\0009\b@\b4\n\3\0005\vH\0>\v\1\n4\v\3\0005\fI\0>\f\1\vB\b\3\2=\b@\aB\4\3\0019\4\5\0009\4K\0045\6L\0005\aM\0009\b\25\0009\b\26\b9\bK\bB\b\1\2=\b\25\a4\b\3\0005\tN\0>\t\1\b=\b@\aB\4\3\0019\4\5\0009\4K\4'\6O\0005\aP\0009\b\25\0009\b\26\b9\bK\bB\b\1\2=\b\25\a9\bG\0009\b@\b4\n\3\0005\vQ\0>\v\1\n4\v\3\0005\fR\0>\f\1\vB\b\3\2=\b@\aB\4\3\0012\0\0�K\0\1\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\0\6:\1\0\1\tname\vbuffer\1\0\0\1\3\0\0\6/\6?\fcmdline\1\0\0\1\0\1\tname\vbuffer\1\0\1\tname\fcmp_git\vconfig\14gitcommit\rfiletype\15formatting\vformat\1\0\0\0\fsources\1\0\1\tname\vbuffer\1\0\1\tname\fcopilot\1\0\1\tname\18latex_symbols\1\0\1\tname\forgmode\1\0\1\tname\nspell\1\0\1\tname\tpath\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lua\1\0\1\tname\rnvim_lsp\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\n<C-e>\nabort\14<C-Space>\rcomplete\n<C-f>\n<C-b>\16scroll_docs\n<C-k>\1\0\0\21select_prev_item\n<C-j>\rbehavior\1\0\0\vInsert\19SelectBehavior\21select_next_item\t<CR>\1\0\0\1\0\1\vselect\2\fconfirm\vinsert\vpreset\fmapping\fsorting\16comparators\norder\vlength\14sort_text\tkind\nunder\25cmp-under-comparator\nexact\voffset\nscore\15prioritize\28copilot_cmp.comparators\1\0\1\20priority_weight\3\2\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\0\0\23cmp.config.compare\bcmp\frequire\0" },
    loaded = true,
    only_config = true,
    path = "/home/zong/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    after = { "lsp_signature.nvim", "lspsaga.nvim" },
    config = { "\27LJ\2\n�\3\0\0\6\0\24\0;6\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0004\2\0\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\4\0009\0\3\0004\2\0\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\5\0009\0\3\0004\2\0\0B\0\2\0016\0\6\0009\0\a\0009\0\b\0009\0\t\0B\0\1\0025\1\v\0=\1\n\0006\1\0\0'\3\1\0B\1\2\0029\1\f\0019\1\3\0015\3\r\0=\0\14\3B\1\2\0016\1\0\0'\3\1\0B\1\2\0029\1\15\0019\1\3\0015\3\16\0006\4\17\0=\4\17\0036\4\18\0=\4\19\0035\4\20\0004\5\0\0=\5\21\4=\4\22\3B\1\2\0016\1\0\0'\3\1\0B\1\2\0029\1\23\0019\1\3\0014\3\0\0B\1\2\1K\0\1\0\vjsonls\rsettings\18rust-analyzer\1\0\0\nflags\14lsp_flags\14on_attach\1\0\0\18rust_analyzer\17capabilities\1\0\0\vclangd\1\2\0\0\vutf-16\19offsetEncoding\29make_client_capabilities\rprotocol\blsp\bvim\npylsp\16sumneko_lua\nsetup\rmarksman\14lspconfig\frequire\0" },
    loaded = true,
    only_config = true,
    path = "/home/zong/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-navic"] = {
    loaded = true,
    path = "/home/zong/.local/share/nvim/site/pack/packer/start/nvim-navic",
    url = "https://github.com/SmiteshP/nvim-navic"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/home/zong/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n�\1\0\2\t\0\a\1\21*\2\0\0006\3\0\0006\5\1\0009\5\2\0059\5\3\0056\6\1\0009\6\4\0069\6\5\6\18\b\1\0B\6\2\0A\3\1\3\15\0\3\0X\5\a�\15\0\4\0X\5\5�9\5\6\4\1\2\5\0X\5\2�+\5\2\0L\5\2\0K\0\1\0\tsize\22nvim_buf_get_name\bapi\ffs_stat\tloop\bvim\npcall��\f�\3\1\0\5\0\22\0!6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0004\4\0\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\5\0'\3\6\0004\4\0\0B\0\4\0016\0\a\0'\2\b\0B\0\2\0029\0\t\0005\2\v\0005\3\n\0=\3\f\0025\3\r\0=\3\14\0025\3\15\0005\4\16\0=\4\17\0033\4\18\0=\4\17\3=\3\19\0025\3\20\0=\3\21\2B\0\2\1K\0\1\0\26context_commentstring\1\0\2\venable\2\19enable_autocmd\1\14highlight\0\fdisable\1\2\0\0\rmarkdown\1\0\2&additional_vim_regex_highlighting\1\venable\2\19ignore_install\1\3\0\0\rmarkdown\amd\21ensure_installed\1\0\2\17auto_install\2\17sync_install\1\1\4\0\0\6c\blua\bcpp\nsetup\28nvim-treesitter.configs\frequire\31nvim_treesitter#foldexpr()\rfoldexpr\texpr\15foldmethod\26nvim_set_option_value\bapi\bvim\0" },
    loaded = true,
    path = "/home/zong/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-autotag"] = {
    config = { "\27LJ\2\ng\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\fautotag\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/zong/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/zong/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/zong/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/zong/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/zong/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["pretty-fold.nvim"] = {
    config = { "\27LJ\2\n=\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\16pretty-fold\frequire\0" },
    loaded = true,
    path = "/home/zong/.local/share/nvim/site/pack/packer/start/pretty-fold.nvim",
    url = "https://github.com/anuvyklack/pretty-fold.nvim"
  },
  ["tabout.nvim"] = {
    config = { "\27LJ\2\n�\3\0\0\5\0\f\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\a\0005\4\4\0>\4\1\0035\4\5\0>\4\2\0035\4\6\0>\4\3\0035\4\a\0>\4\4\0035\4\b\0>\4\5\0035\4\t\0>\4\6\3=\3\n\0024\3\0\0=\3\v\2B\0\2\1K\0\1\0\fexclude\ftabouts\1\0\2\nclose\6}\topen\6{\1\0\2\nclose\6]\topen\6[\1\0\2\nclose\6)\topen\6(\1\0\2\nclose\6`\topen\6`\1\0\2\nclose\6\"\topen\6\"\1\0\2\nclose\6'\topen\6'\1\0\t\21backwards_tabkey\f<S-Tab>\21enable_backwards\2\21ignore_beginning\2\22default_shift_tab\n<C-d>\16default_tab\n<C-t>\21act_as_shift_tab\1\15act_as_tab\2\15completion\2\vtabkey\n<Tab>\nsetup\vtabout\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/zong/.local/share/nvim/site/pack/packer/opt/tabout.nvim",
    url = "https://github.com/abecodes/tabout.nvim",
    wants = { "nvim-treesitter" }
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/home/zong/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\4\0\a\0\v6\0\0\0'\2\1\0B\0\2\0025\1\4\0005\2\3\0=\2\5\1=\1\2\0009\1\6\0'\3\5\0B\1\2\1K\0\1\0\19load_extension\bfzf\1\0\0\1\0\4\nfuzzy\2\14case_mode\15smart_case\25override_file_sorter\2\28override_generic_sorter\2\15extensions\14telescope\frequire\0" },
    loaded = true,
    path = "/home/zong/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15toggleterm\frequire\0" },
    loaded = true,
    path = "/home/zong/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["vim-matchup"] = {
    config = { "\27LJ\2\nN\0\0\2\0\4\0\0056\0\0\0009\0\1\0005\1\3\0=\1\2\0K\0\1\0\1\0\1\vmethod\npopup!matchup_matchparen_offscreen\6g\bvim\0" },
    loaded = true,
    path = "/home/zong/.local/share/nvim/site/pack/packer/start/vim-matchup",
    url = "https://github.com/andymass/vim-matchup"
  },
  ["vim-pandoc-syntax"] = {
    loaded = true,
    path = "/home/zong/.local/share/nvim/site/pack/packer/start/vim-pandoc-syntax",
    url = "https://github.com/vim-pandoc/vim-pandoc-syntax"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: fidget.nvim
time([[Config for fidget.nvim]], true)
try_loadstring("\27LJ\2\nU\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\vwindow\1\0\0\1\0\1\nblend\3\0\nsetup\vfidget\frequire\0", "config", "fidget.nvim")
time([[Config for fidget.nvim]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15toggleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)
-- Config for: fold-preview.nvim
time([[Config for fold-preview.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\a\0\v\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0006\1\0\0'\3\6\0B\1\2\2=\1\5\0006\1\0\0'\3\1\0B\1\2\0029\1\a\0019\2\5\0'\4\b\0'\5\t\0009\6\n\1B\2\4\1K\0\1\0!show_close_preview_open_fold\6h\6n\fmapping\17keymap-amend\namend\vkeymap\bvim\nsetup\17fold-preview\frequire\0", "config", "fold-preview.nvim")
time([[Config for fold-preview.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n�\1\0\2\t\0\a\1\21*\2\0\0006\3\0\0006\5\1\0009\5\2\0059\5\3\0056\6\1\0009\6\4\0069\6\5\6\18\b\1\0B\6\2\0A\3\1\3\15\0\3\0X\5\a�\15\0\4\0X\5\5�9\5\6\4\1\2\5\0X\5\2�+\5\2\0L\5\2\0K\0\1\0\tsize\22nvim_buf_get_name\bapi\ffs_stat\tloop\bvim\npcall��\f�\3\1\0\5\0\22\0!6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0004\4\0\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\5\0'\3\6\0004\4\0\0B\0\4\0016\0\a\0'\2\b\0B\0\2\0029\0\t\0005\2\v\0005\3\n\0=\3\f\0025\3\r\0=\3\14\0025\3\15\0005\4\16\0=\4\17\0033\4\18\0=\4\17\3=\3\19\0025\3\20\0=\3\21\2B\0\2\1K\0\1\0\26context_commentstring\1\0\2\venable\2\19enable_autocmd\1\14highlight\0\fdisable\1\2\0\0\rmarkdown\1\0\2&additional_vim_regex_highlighting\1\venable\2\19ignore_install\1\3\0\0\rmarkdown\amd\21ensure_installed\1\0\2\17auto_install\2\17sync_install\1\1\4\0\0\6c\blua\bcpp\nsetup\28nvim-treesitter.configs\frequire\31nvim_treesitter#foldexpr()\rfoldexpr\texpr\15foldmethod\26nvim_set_option_value\bapi\bvim\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\nF\0\1\a\0\3\0\b6\1\0\0009\1\1\0019\1\2\1\18\3\0\0+\4\2\0+\5\2\0+\6\2\0D\1\5\0\27nvim_replace_termcodes\bapi\bvim\15\0\0\1\0\0\0\2+\0\1\0L\0\2\0C\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire�\1\0\1\6\3\n\0!-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\1\1B\1\1\1X\1\23�6\1\2\0'\3\3\0B\1\2\0029\1\4\1B\1\1\2\15\0\1\0X\2\t�6\1\5\0009\1\6\0019\1\a\1-\3\1\0'\5\b\0B\3\2\2'\4\t\0B\1\3\1X\1\a�-\1\2\0B\1\1\2\15\0\1\0X\2\1�X\1\2�\18\1\0\0B\1\1\1K\0\1\0\0�\2�\3�\5!<Plug>luasnip-expand-or-jump\rfeedkeys\afn\bvim\23expand_or_jumpable\fluasnip\frequire\21select_next_item\fvisible�\1\0\1\6\2\n\0\29-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\1\1B\1\1\1X\1\19�6\1\2\0'\3\3\0B\1\2\0029\1\4\1)\3��B\1\2\2\15\0\1\0X\2\t�6\1\5\0009\1\6\0019\1\a\1-\3\1\0'\5\b\0B\3\2\2'\4\t\0B\1\3\1X\1\2�\18\1\0\0B\1\1\1K\0\1\0\0�\2�\5\28<Plug>luasnip-jump-prev\rfeedkeys\afn\bvim\rjumpable\fluasnip\frequire\21select_prev_item\fvisible�\4\0\2\a\0\t\0\0145\2\0\0006\3\2\0009\3\3\3'\5\4\0009\6\1\0018\6\6\2B\3\3\2=\3\1\0015\3\6\0009\4\a\0009\4\b\0048\3\4\3=\3\5\1L\1\2\0\tname\vsource\1\0\b\ttmux\v[TMUX]\fluasnip\v[SNIP]\nspell\f[SPELL]\forgmode\n[ORG]\rnvim_lua\n[LUA]\rnvim_lsp\n[LSP]\vbuffer\n[BUF]\tpath\v[PATH]\tmenu\a%s\vformat\vstring\tkind\1\0\25\tFile\b\nValue\b\vModule\b\tUnit\b\rOperator\b\rConstant\b\18TypeParameter\b\rVariable\b\rFunction\b\14Interface\b\tEnum\b\tText\b\16Constructor\b\nEvent\b\nField\b\vStruct\b\15EnumMember\b\rProperty\bﰠ\vFolder\b\vMethod\b\14Reference\b\nClass\bﴯ\nColor\b\fSnippet\b\fKeyword\b�\v\1\0\14\0S\0�\0016\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0023\2\3\0003\3\4\0009\4\5\0005\6\t\0005\a\a\0003\b\6\0=\b\b\a=\a\n\0065\a\v\0004\b\v\0006\t\0\0'\v\f\0B\t\2\0029\t\r\t>\t\1\b6\t\0\0'\v\f\0B\t\2\0029\t\14\t>\t\2\b9\t\15\1>\t\3\b9\t\16\1>\t\4\b9\t\14\1>\t\5\b6\t\0\0'\v\17\0B\t\2\0029\t\18\t>\t\6\b9\t\19\1>\t\a\b9\t\20\1>\t\b\b9\t\21\1>\t\t\b9\t\22\1>\t\n\b=\b\23\a=\a\24\0069\a\25\0009\a\26\a9\a\27\a5\t\30\0009\n\25\0009\n\28\n5\f\29\0B\n\2\2=\n\31\t9\n\25\0009\n \n5\f#\0009\r!\0009\r\"\r=\r$\fB\n\2\2=\n%\t9\n\25\0009\n&\n5\f'\0009\r!\0009\r\"\r=\r$\fB\n\2\2=\n(\t9\n\25\0009\n)\n)\f��B\n\2\2=\n*\t9\n\25\0009\n)\n)\f\4\0B\n\2\2=\n+\t9\n\25\0009\n,\nB\n\1\2=\n-\t9\n\25\0009\n.\nB\n\1\2=\n/\t9\n\25\0003\f0\0005\r1\0B\n\3\2=\n2\t9\n\25\0003\f3\0005\r4\0B\n\3\2=\n5\tB\a\2\2=\a\25\0064\a\v\0005\b6\0>\b\1\a5\b7\0>\b\2\a5\b8\0>\b\3\a5\b9\0>\b\4\a5\b:\0>\b\5\a5\b;\0>\b\6\a5\b<\0>\b\a\a5\b=\0>\b\b\a5\b>\0>\b\t\a5\b?\0>\b\n\a=\a@\0065\aB\0003\bA\0=\bC\a=\aD\6B\4\2\0019\4\5\0009\4E\4'\6F\0005\aJ\0009\bG\0009\b@\b4\n\3\0005\vH\0>\v\1\n4\v\3\0005\fI\0>\f\1\vB\b\3\2=\b@\aB\4\3\0019\4\5\0009\4K\0045\6L\0005\aM\0009\b\25\0009\b\26\b9\bK\bB\b\1\2=\b\25\a4\b\3\0005\tN\0>\t\1\b=\b@\aB\4\3\0019\4\5\0009\4K\4'\6O\0005\aP\0009\b\25\0009\b\26\b9\bK\bB\b\1\2=\b\25\a9\bG\0009\b@\b4\n\3\0005\vQ\0>\v\1\n4\v\3\0005\fR\0>\f\1\vB\b\3\2=\b@\aB\4\3\0012\0\0�K\0\1\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\0\6:\1\0\1\tname\vbuffer\1\0\0\1\3\0\0\6/\6?\fcmdline\1\0\0\1\0\1\tname\vbuffer\1\0\1\tname\fcmp_git\vconfig\14gitcommit\rfiletype\15formatting\vformat\1\0\0\0\fsources\1\0\1\tname\vbuffer\1\0\1\tname\fcopilot\1\0\1\tname\18latex_symbols\1\0\1\tname\forgmode\1\0\1\tname\nspell\1\0\1\tname\tpath\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lua\1\0\1\tname\rnvim_lsp\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\n<C-e>\nabort\14<C-Space>\rcomplete\n<C-f>\n<C-b>\16scroll_docs\n<C-k>\1\0\0\21select_prev_item\n<C-j>\rbehavior\1\0\0\vInsert\19SelectBehavior\21select_next_item\t<CR>\1\0\0\1\0\1\vselect\2\fconfirm\vinsert\vpreset\fmapping\fsorting\16comparators\norder\vlength\14sort_text\tkind\nunder\25cmp-under-comparator\nexact\voffset\nscore\15prioritize\28copilot_cmp.comparators\1\0\1\20priority_weight\3\2\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\0\0\23cmp.config.compare\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: catppuccin
time([[Config for catppuccin]], true)
try_loadstring("\27LJ\2\n�\2\0\0\5\0\15\0\0206\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\4\0'\2\5\0B\0\2\0029\0\6\0005\2\n\0005\3\a\0005\4\b\0=\4\t\3=\3\v\2B\0\2\0016\0\0\0009\0\f\0009\0\r\0'\2\14\0B\0\2\1K\0\1\0\27colorscheme catppuccin\17nvim_command\bapi\17integrations\1\0\0\bdap\1\0\2\14enable_ui\2\fenabled\2\1\0\4\bcmp\2\rnvimtree\2\vfidget\2\rgitsigns\2\nsetup\15catppuccin\frequire\nmocha\23catppuccin_flavour\6g\bvim\0", "config", "catppuccin")
time([[Config for catppuccin]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\4\0\a\0\v6\0\0\0'\2\1\0B\0\2\0025\1\4\0005\2\3\0=\2\5\1=\1\2\0009\1\6\0'\3\5\0B\1\2\1K\0\1\0\19load_extension\bfzf\1\0\0\1\0\4\nfuzzy\2\14case_mode\15smart_case\25override_file_sorter\2\28override_generic_sorter\2\15extensions\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\nw\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\25show_current_context\2\31show_current_context_start\2\nsetup\21indent_blankline\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: better-escape.nvim
time([[Config for better-escape.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\4\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0026\3\6\0009\3\a\0039\3\b\3=\3\t\2B\0\2\1K\0\1\0\ftimeout\15timeoutlen\6o\bvim\fmapping\1\0\2\tkeys\n<Esc>\22clear_empty_lines\1\1\4\0\0\ajk\ajj\akk\nsetup\18better_escape\frequire\0", "config", "better-escape.nvim")
time([[Config for better-escape.nvim]], false)
-- Config for: nvim-ts-autotag
time([[Config for nvim-ts-autotag]], true)
try_loadstring("\27LJ\2\ng\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\fautotag\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-ts-autotag")
time([[Config for nvim-ts-autotag]], false)
-- Config for: copilot-cmp
time([[Config for copilot-cmp]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\16copilot_cmp\frequire\0", "config", "copilot-cmp")
time([[Config for copilot-cmp]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
try_loadstring("\27LJ\2\n<\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\15bufferline\frequire\0", "config", "bufferline.nvim")
time([[Config for bufferline.nvim]], false)
-- Config for: vim-matchup
time([[Config for vim-matchup]], true)
try_loadstring("\27LJ\2\nN\0\0\2\0\4\0\0056\0\0\0009\0\1\0005\1\3\0=\1\2\0K\0\1\0\1\0\1\vmethod\npopup!matchup_matchparen_offscreen\6g\bvim\0", "config", "vim-matchup")
time([[Config for vim-matchup]], false)
-- Config for: copilot.lua
time([[Config for copilot.lua]], true)
try_loadstring("\27LJ\2\n�\3\0\0\5\0\14\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\0025\3\b\0005\4\t\0=\4\5\3=\3\n\0025\3\v\0=\3\f\0024\3\0\0=\3\r\2B\0\2\1K\0\1\0\26server_opts_overrides\14filetypes\1\0\t\6.\2\bcvs\1\bsvn\1\rhgcommit\1\14gitrebase\1\14gitcommit\1\thelp\1\rmarkdown\1\tyaml\1\15suggestion\1\0\4\tprev\n<M-[>\tnext\n<M-]>\fdismiss\n<C-]>\vaccept\n<M-l>\1\0\3\fenabled\2\rdebounce\3K\17auto_trigger\1\npanel\1\0\1\25copilot_node_command\tnode\vkeymap\1\0\5\vaccept\t<CR>\14jump_next\a]]\14jump_prev\a[[\topen\v<M-CR>\frefresh\agr\1\0\2\17auto_refresh\1\fenabled\2\nsetup\fcopilot\frequire\0", "config", "copilot.lua")
time([[Config for copilot.lua]], false)
-- Config for: LuaSnip
time([[Config for LuaSnip]], true)
try_loadstring("\27LJ\2\n�\2\0\0\3\0\t\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0005\2\4\0B\0\2\0016\0\0\0'\2\5\0B\0\2\0029\0\6\0B\0\1\0016\0\0\0'\2\a\0B\0\2\0029\0\6\0B\0\1\0016\0\0\0'\2\b\0B\0\2\0029\0\6\0B\0\1\1K\0\1\0\"luasnip.loaders.from_snipmate luasnip.loaders.from_vscode\14lazy_load\29luasnip.loaders.from_lua\1\0\3\24delete_check_events\28TextChanged,InsertLeave\17updateevents\29TextChanged,TextChangedI\fhistory\2\15set_config\vconfig\fluasnip\frequire\0", "config", "LuaSnip")
time([[Config for LuaSnip]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n�\3\0\0\6\0\24\0;6\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0004\2\0\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\4\0009\0\3\0004\2\0\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\5\0009\0\3\0004\2\0\0B\0\2\0016\0\6\0009\0\a\0009\0\b\0009\0\t\0B\0\1\0025\1\v\0=\1\n\0006\1\0\0'\3\1\0B\1\2\0029\1\f\0019\1\3\0015\3\r\0=\0\14\3B\1\2\0016\1\0\0'\3\1\0B\1\2\0029\1\15\0019\1\3\0015\3\16\0006\4\17\0=\4\17\0036\4\18\0=\4\19\0035\4\20\0004\5\0\0=\5\21\4=\4\22\3B\1\2\0016\1\0\0'\3\1\0B\1\2\0029\1\23\0019\1\3\0014\3\0\0B\1\2\1K\0\1\0\vjsonls\rsettings\18rust-analyzer\1\0\0\nflags\14lsp_flags\14on_attach\1\0\0\18rust_analyzer\17capabilities\1\0\0\vclangd\1\2\0\0\vutf-16\19offsetEncoding\29make_client_capabilities\rprotocol\blsp\bvim\npylsp\16sumneko_lua\nsetup\rmarksman\14lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: feline.nvim
time([[Config for feline.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\26ui.feline_one_monokai\frequire\0", "config", "feline.nvim")
time([[Config for feline.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n�\2\0\0\f\0\14\0\0286\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0016\0\0\0'\2\3\0B\0\2\0026\1\0\0'\3\4\0B\1\2\0026\2\0\0'\4\5\0B\2\2\0029\3\6\1\18\5\3\0009\3\a\3'\6\b\0009\a\t\0005\t\f\0005\n\n\0004\v\0\0=\v\v\n=\n\r\tB\a\2\0A\3\2\1K\0\1\0\14filetypes\1\0\0\6*\1\0\1\btex\1\20on_confirm_done\17confirm_done\aon\nevent'nvim-autopairs.completion.handlers\bcmp\"nvim-autopairs.completion.cmp\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: pretty-fold.nvim
time([[Config for pretty-fold.nvim]], true)
try_loadstring("\27LJ\2\n=\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\16pretty-fold\frequire\0", "config", "pretty-fold.nvim")
time([[Config for pretty-fold.nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd tabout.nvim ]]

-- Config for: tabout.nvim
try_loadstring("\27LJ\2\n�\3\0\0\5\0\f\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\a\0005\4\4\0>\4\1\0035\4\5\0>\4\2\0035\4\6\0>\4\3\0035\4\a\0>\4\4\0035\4\b\0>\4\5\0035\4\t\0>\4\6\3=\3\n\0024\3\0\0=\3\v\2B\0\2\1K\0\1\0\fexclude\ftabouts\1\0\2\nclose\6}\topen\6{\1\0\2\nclose\6]\topen\6[\1\0\2\nclose\6)\topen\6(\1\0\2\nclose\6`\topen\6`\1\0\2\nclose\6\"\topen\6\"\1\0\2\nclose\6'\topen\6'\1\0\t\21backwards_tabkey\f<S-Tab>\21enable_backwards\2\21ignore_beginning\2\22default_shift_tab\n<C-d>\16default_tab\n<C-t>\21act_as_shift_tab\1\15act_as_tab\2\15completion\2\vtabkey\n<Tab>\nsetup\vtabout\frequire\0", "config", "tabout.nvim")

vim.cmd [[ packadd lspsaga.nvim ]]

-- Config for: lspsaga.nvim
try_loadstring("\27LJ\2\n�\1\0\0\v\0\t\0\0195\0\0\0006\1\1\0\18\3\0\0B\1\2\4H\4\v�'\6\2\0\18\a\4\0&\6\a\0066\a\3\0009\a\4\a9\a\5\a\18\t\6\0005\n\6\0=\5\a\n=\6\b\nB\a\3\1F\4\3\3R\4�\127K\0\1\0\vtexthl\ttext\1\0\0\16sign_define\afn\bvim\19DiagnosticSign\npairs\1\0\4\tInfo\t \tWarn\t \tHint\t \nError\t �\2\0\0\3\0\19\0\0296\0\0\0009\0\1\0009\0\2\0\a\0\3\0X\0\6�6\0\4\0'\2\5\0B\0\2\0029\0\6\0D\0\1\0X\0\17�6\0\4\0'\2\a\0B\0\2\0029\0\b\0009\1\n\0=\1\t\0009\1\n\0=\1\v\0009\1\r\0=\1\f\0009\1\15\0=\1\14\0009\1\17\0=\1\16\0009\1\n\0=\1\18\0L\0\2\0K\0\1\0\vmaroon\tblue\rsapphire\vviolet\nmauve\vyellow\14rosewater\rflamingo\vorange\npeach\vcolors\20lspsaga.lspkind\16get_palette\24catppuccin.palettes\frequire\15catppuccin\16colors_name\6g\bvim�\t\1\0\t\0P\0�\0013\0\0\0003\1\1\0\18\2\0\0B\2\1\1\18\2\1\0B\2\1\0026\3\2\0'\5\3\0B\3\2\0029\3\4\0035\5\6\0005\6\5\0=\6\a\0055\6\n\0005\a\b\0009\b\t\2>\b\2\a=\a\v\0065\a\f\0009\b\r\2>\b\2\a=\a\14\0065\a\15\0009\b\r\2>\b\2\a=\a\16\0065\a\17\0009\b\r\2>\b\2\a=\a\18\0065\a\19\0009\b\20\2>\b\2\a=\a\21\0065\a\22\0009\b\r\2>\b\2\a=\a\23\0065\a\24\0009\b\25\2>\b\2\a=\a\26\0065\a\27\0009\b\25\2>\b\2\a=\a\28\0065\a\29\0009\b\30\2>\b\2\a=\a\31\0065\a \0009\b\20\2>\b\2\a=\a!\0065\a\"\0009\b\20\2>\b\2\a=\a#\0065\a$\0009\b\r\2>\b\2\a=\a%\0065\a&\0009\b'\2>\b\2\a=\a(\0065\a)\0009\b'\2>\b\2\a=\a*\0065\a+\0009\b,\2>\b\2\a=\a-\0065\a.\0009\b'\2>\b\2\a=\a/\0065\a0\0009\b'\2>\b\2\a=\a1\0065\a2\0009\b'\2>\b\2\a=\a3\0065\a4\0009\b\20\2>\b\2\a=\a5\0065\a6\0009\b7\2>\b\2\a=\a8\0065\a9\0009\b\20\2>\b\2\a=\a:\0065\a;\0009\b\25\2>\b\2\a=\a<\0065\a=\0009\b\20\2>\b\2\a=\a>\0065\a?\0009\b\20\2>\b\2\a=\a@\0065\aA\0009\bB\2>\b\2\a=\aC\0065\aD\0009\bE\2>\b\2\a=\aF\0065\aG\0009\b,\2>\b\2\a=\aH\0065\aI\0009\b\r\2>\b\2\a=\aJ\0065\aK\0009\b'\2>\b\2\a=\aL\0065\aM\0009\b7\2>\b\2\a=\aN\6=\6O\5B\3\2\1K\0\1\0\16custom_kind\nMacro\1\2\0\0\t \17StaticMethod\1\2\0\0\tﴂ \14Parameter\1\2\0\0\t \14TypeAlias\1\2\0\0\t \18TypeParameter\vmaroon\1\2\0\0\t \rOperator\bsky\1\2\0\0\t \nEvent\1\2\0\0\t \vStruct\1\2\0\0\t \15EnumMember\1\2\0\0\t \tNull\1\2\0\0\tﳠ \bKey\bred\1\2\0\0\t \vObject\1\2\0\0\t \nArray\1\2\0\0\t \fBoolean\1\2\0\0\t \vNumber\1\2\0\0\t \vString\ngreen\1\2\0\0\t \rConstant\1\2\0\0\t \rVariable\npeach\1\2\0\0\t \rFunction\1\2\0\0\t \14Interface\1\2\0\0\t \tEnum\1\2\0\0\t \16Constructor\rsapphire\1\2\0\0\t \nField\1\2\0\0\t \rProperty\tteal\1\2\0\0\tﰠ \vMethod\1\2\0\0\t \nClass\vyellow\1\2\0\0\tﴯ \fPackage\1\2\0\0\t \14Namespace\1\2\0\0\t \vModule\tblue\1\2\0\0\t \tFile\1\0\0\14rosewater\1\2\0\0\t \22diagnostic_header\1\0\0\1\5\0\0\t \t \n  \t \18init_lsp_saga\flspsaga\frequire\0\0\0", "config", "lspsaga.nvim")

time([[Sequenced loading]], false)

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
