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
    config = { "\27LJ\2\n�\1\0\0\4\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0026\3\6\0009\3\a\0039\3\b\3=\3\t\2B\0\2\1K\0\1\0\ftimeout\15timeoutlen\6o\bvim\fmapping\1\0\2\22clear_empty_lines\1\tkeys\n<Esc>\1\4\0\0\ajk\ajj\akk\nsetup\18better_escape\frequire\0" },
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
    config = { "\27LJ\2\n�\2\0\0\5\0\15\0\0206\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\4\0'\2\5\0B\0\2\0029\0\6\0005\2\n\0005\3\a\0005\4\b\0=\4\t\3=\3\v\2B\0\2\0016\0\0\0009\0\f\0009\0\r\0'\2\14\0B\0\2\1K\0\1\0\27colorscheme catppuccin\17nvim_command\bapi\17integrations\1\0\0\bdap\1\0\2\fenabled\2\14enable_ui\2\1\0\4\rnvimtree\2\vfidget\2\bcmp\2\rgitsigns\2\nsetup\15catppuccin\frequire\nmocha\23catppuccin_flavour\6g\bvim\0" },
    loaded = true,
    path = "/Users/guangzong/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/guangzong/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-latex-symbols"] = {
    loaded = true,
    path = "/Users/guangzong/.local/share/nvim/site/pack/packer/start/cmp-latex-symbols",
    url = "https://github.com/kdheepak/cmp-latex-symbols"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/guangzong/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/Users/guangzong/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/guangzong/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-spell"] = {
    loaded = true,
    path = "/Users/guangzong/.local/share/nvim/site/pack/packer/start/cmp-spell",
    url = "https://github.com/f3fora/cmp-spell"
  },
  ["cmp-under-comparator"] = {
    loaded = true,
    path = "/Users/guangzong/.local/share/nvim/site/pack/packer/start/cmp-under-comparator",
    url = "https://github.com/lukas-reineke/cmp-under-comparator"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/guangzong/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["feline.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\26ui.feline_one_monokai\frequire\0" },
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
    config = { "\27LJ\2\nw\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\31show_current_context_start\2\25show_current_context\2\nsetup\21indent_blankline\frequire\0" },
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
  ["nvim-cmp"] = {
    config = { "\27LJ\2\nF\0\1\a\0\3\0\b6\1\0\0009\1\1\0019\1\2\1\18\3\0\0+\4\2\0+\5\2\0+\6\2\0D\1\5\0\27nvim_replace_termcodes\bapi\bvim\15\0\0\1\0\0\0\2+\0\1\0L\0\2\0C\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire�\1\0\1\6\3\n\0!-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\1\1B\1\1\1X\1\23�6\1\2\0'\3\3\0B\1\2\0029\1\4\1B\1\1\2\15\0\1\0X\2\t�6\1\5\0009\1\6\0019\1\a\1-\3\1\0'\5\b\0B\3\2\2'\4\t\0B\1\3\1X\1\a�-\1\2\0B\1\1\2\15\0\1\0X\2\1�X\1\2�\18\1\0\0B\1\1\1K\0\1\0\0�\2�\3�\5!<Plug>luasnip-expand-or-jump\rfeedkeys\afn\bvim\23expand_or_jumpable\fluasnip\frequire\21select_next_item\fvisible�\1\0\1\6\2\n\0\29-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\1\1B\1\1\1X\1\19�6\1\2\0'\3\3\0B\1\2\0029\1\4\1)\3��B\1\2\2\15\0\1\0X\2\t�6\1\5\0009\1\6\0019\1\a\1-\3\1\0'\5\b\0B\3\2\2'\4\t\0B\1\3\1X\1\2�\18\1\0\0B\1\1\1K\0\1\0\0�\2�\5\28<Plug>luasnip-jump-prev\rfeedkeys\afn\bvim\rjumpable\fluasnip\frequire\21select_prev_item\fvisible�\4\0\2\a\0\t\0\0145\2\0\0006\3\2\0009\3\3\3'\5\4\0009\6\1\0018\6\6\2B\3\3\2=\3\1\0015\3\6\0009\4\a\0009\4\b\0048\3\4\3=\3\5\1L\1\2\0\tname\vsource\1\0\b\rnvim_lua\n[LUA]\rnvim_lsp\n[LSP]\tpath\v[PATH]\ttmux\v[TMUX]\vbuffer\n[BUF]\nspell\f[SPELL]\fluasnip\v[SNIP]\forgmode\n[ORG]\tmenu\a%s\vformat\vstring\tkind\1\0\25\vStruct\b\vFolder\b\15EnumMember\b\14Reference\b\18TypeParameter\b\vModule\b\nColor\b\tFile\b\fSnippet\b\fKeyword\b\nValue\b\tUnit\b\rConstant\b\tEnum\b\rVariable\b\16Constructor\b\rFunction\b\nField\b\14Interface\b\tText\b\rProperty\bﰠ\rOperator\b\vMethod\b\nEvent\b\nClass\bﴯ�\n\1\0\14\0Q\0�\0016\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0023\2\3\0003\3\4\0009\4\5\0005\6\t\0005\a\a\0003\b\6\0=\b\b\a=\a\n\0065\a\v\0004\b\t\0009\t\f\1>\t\1\b9\t\r\1>\t\2\b9\t\14\1>\t\3\b6\t\0\0'\v\15\0B\t\2\0029\t\16\t>\t\4\b9\t\17\1>\t\5\b9\t\18\1>\t\6\b9\t\19\1>\t\a\b9\t\20\1>\t\b\b=\b\21\a=\a\22\0069\a\23\0009\a\24\a9\a\25\a5\t\28\0009\n\23\0009\n\26\n5\f\27\0B\n\2\2=\n\29\t9\n\23\0009\n\30\n5\f!\0009\r\31\0009\r \r=\r\"\fB\n\2\2=\n#\t9\n\23\0009\n$\n5\f%\0009\r\31\0009\r \r=\r\"\fB\n\2\2=\n&\t9\n\23\0009\n'\n)\f��B\n\2\2=\n(\t9\n\23\0009\n'\n)\f\4\0B\n\2\2=\n)\t9\n\23\0009\n*\nB\n\1\2=\n+\t9\n\23\0009\n,\nB\n\1\2=\n-\t9\n\23\0003\f.\0005\r/\0B\n\3\2=\n0\t9\n\23\0003\f1\0005\r2\0B\n\3\2=\n3\tB\a\2\2=\a\23\0064\a\v\0005\b4\0>\b\1\a5\b5\0>\b\2\a5\b6\0>\b\3\a5\b7\0>\b\4\a5\b8\0>\b\5\a5\b9\0>\b\6\a5\b:\0>\b\a\a5\b;\0>\b\b\a5\b<\0>\b\t\a5\b=\0>\b\n\a=\a>\0065\a@\0003\b?\0=\bA\a=\aB\6B\4\2\0019\4\5\0009\4C\4'\6D\0005\aH\0009\bE\0009\b>\b4\n\3\0005\vF\0>\v\1\n4\v\3\0005\fG\0>\f\1\vB\b\3\2=\b>\aB\4\3\0019\4\5\0009\4I\0045\6J\0005\aK\0009\b\23\0009\b\24\b9\bI\bB\b\1\2=\b\23\a4\b\3\0005\tL\0>\t\1\b=\b>\aB\4\3\0019\4\5\0009\4I\4'\6M\0005\aN\0009\b\23\0009\b\24\b9\bI\bB\b\1\2=\b\23\a9\bE\0009\b>\b4\n\3\0005\vO\0>\v\1\n4\v\3\0005\fP\0>\f\1\vB\b\3\2=\b>\aB\4\3\0012\0\0�K\0\1\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\0\6:\1\0\1\tname\vbuffer\1\0\0\1\3\0\0\6/\6?\fcmdline\1\0\0\1\0\1\tname\vbuffer\1\0\1\tname\fcmp_git\vconfig\14gitcommit\rfiletype\15formatting\vformat\1\0\0\0\fsources\1\0\1\tname\vbuffer\1\0\1\tname\fcopilot\1\0\1\tname\18latex_symbols\1\0\1\tname\forgmode\1\0\1\tname\nspell\1\0\1\tname\tpath\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lua\1\0\1\tname\rnvim_lsp\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\n<C-e>\nabort\14<C-Space>\rcomplete\n<C-f>\n<C-b>\16scroll_docs\n<C-k>\1\0\0\21select_prev_item\n<C-j>\rbehavior\1\0\0\vInsert\19SelectBehavior\21select_next_item\t<CR>\1\0\0\1\0\1\vselect\2\fconfirm\vinsert\vpreset\fmapping\fsorting\16comparators\norder\vlength\14sort_text\tkind\nunder\25cmp-under-comparator\nscore\nexact\voffset\1\0\1\20priority_weight\3\2\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\0\0\23cmp.config.compare\bcmp\frequire\0" },
    loaded = true,
    path = "/Users/guangzong/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    after = { "lsp_signature.nvim" },
    config = { "\27LJ\2\n�\3\0\0\6\0\24\0;6\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0004\2\0\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\4\0009\0\3\0004\2\0\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\5\0009\0\3\0004\2\0\0B\0\2\0016\0\6\0009\0\a\0009\0\b\0009\0\t\0B\0\1\0025\1\v\0=\1\n\0006\1\0\0'\3\1\0B\1\2\0029\1\f\0019\1\3\0015\3\r\0=\0\14\3B\1\2\0016\1\0\0'\3\1\0B\1\2\0029\1\15\0019\1\3\0015\3\16\0006\4\17\0=\4\17\0036\4\18\0=\4\19\0035\4\20\0004\5\0\0=\5\21\4=\4\22\3B\1\2\0016\1\0\0'\3\1\0B\1\2\0029\1\23\0019\1\3\0014\3\0\0B\1\2\1K\0\1\0\vjsonls\rsettings\18rust-analyzer\1\0\0\nflags\14lsp_flags\14on_attach\1\0\0\18rust_analyzer\17capabilities\1\0\0\vclangd\1\2\0\0\vutf-16\19offsetEncoding\29make_client_capabilities\rprotocol\blsp\bvim\npylsp\16sumneko_lua\nsetup\rmarksman\14lspconfig\frequire\0" },
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
    config = { "\27LJ\2\n�\1\0\2\t\0\a\1\21*\2\0\0006\3\0\0006\5\1\0009\5\2\0059\5\3\0056\6\1\0009\6\4\0069\6\5\6\18\b\1\0B\6\2\0A\3\1\3\15\0\3\0X\5\a�\15\0\4\0X\5\5�9\5\6\4\1\2\5\0X\5\2�+\5\2\0L\5\2\0K\0\1\0\tsize\22nvim_buf_get_name\bapi\ffs_stat\tloop\bvim\npcall��\f�\3\1\0\5\0\22\0!6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0004\4\0\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\5\0'\3\6\0004\4\0\0B\0\4\0016\0\a\0'\2\b\0B\0\2\0029\0\t\0005\2\v\0005\3\n\0=\3\f\0025\3\r\0=\3\14\0025\3\15\0005\4\16\0=\4\17\0033\4\18\0=\4\17\3=\3\19\0025\3\20\0=\3\21\2B\0\2\1K\0\1\0\26context_commentstring\1\0\2\19enable_autocmd\1\venable\2\14highlight\0\fdisable\1\2\0\0\rmarkdown\1\0\2&additional_vim_regex_highlighting\1\venable\2\19ignore_install\1\3\0\0\rmarkdown\amd\21ensure_installed\1\0\2\17auto_install\2\17sync_install\1\1\4\0\0\6c\blua\bcpp\nsetup\28nvim-treesitter.configs\frequire\31nvim_treesitter#foldexpr()\rfoldexpr\texpr\15foldmethod\26nvim_set_option_value\bapi\bvim\0" },
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
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/guangzong/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/guangzong/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/Users/guangzong/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\4\0\a\0\v6\0\0\0'\2\1\0B\0\2\0025\1\4\0005\2\3\0=\2\5\1=\1\2\0009\1\6\0'\3\5\0B\1\2\1K\0\1\0\19load_extension\bfzf\1\0\0\1\0\4\14case_mode\15smart_case\25override_file_sorter\2\28override_generic_sorter\2\nfuzzy\2\15extensions\14telescope\frequire\0" },
    loaded = true,
    path = "/Users/guangzong/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15toggleterm\frequire\0" },
    loaded = true,
    path = "/Users/guangzong/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["vim-matchup"] = {
    config = { "\27LJ\2\nN\0\0\2\0\4\0\0056\0\0\0009\0\1\0005\1\3\0=\1\2\0K\0\1\0\1\0\1\vmethod\npopup!matchup_matchparen_offscreen\6g\bvim\0" },
    loaded = true,
    path = "/Users/guangzong/.local/share/nvim/site/pack/packer/start/vim-matchup",
    url = "https://github.com/andymass/vim-matchup"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n�\3\0\0\6\0\24\0;6\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0004\2\0\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\4\0009\0\3\0004\2\0\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\5\0009\0\3\0004\2\0\0B\0\2\0016\0\6\0009\0\a\0009\0\b\0009\0\t\0B\0\1\0025\1\v\0=\1\n\0006\1\0\0'\3\1\0B\1\2\0029\1\f\0019\1\3\0015\3\r\0=\0\14\3B\1\2\0016\1\0\0'\3\1\0B\1\2\0029\1\15\0019\1\3\0015\3\16\0006\4\17\0=\4\17\0036\4\18\0=\4\19\0035\4\20\0004\5\0\0=\5\21\4=\4\22\3B\1\2\0016\1\0\0'\3\1\0B\1\2\0029\1\23\0019\1\3\0014\3\0\0B\1\2\1K\0\1\0\vjsonls\rsettings\18rust-analyzer\1\0\0\nflags\14lsp_flags\14on_attach\1\0\0\18rust_analyzer\17capabilities\1\0\0\vclangd\1\2\0\0\vutf-16\19offsetEncoding\29make_client_capabilities\rprotocol\blsp\bvim\npylsp\16sumneko_lua\nsetup\rmarksman\14lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: fidget.nvim
time([[Config for fidget.nvim]], true)
try_loadstring("\27LJ\2\nU\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\vwindow\1\0\0\1\0\1\nblend\3\0\nsetup\vfidget\frequire\0", "config", "fidget.nvim")
time([[Config for fidget.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\nF\0\1\a\0\3\0\b6\1\0\0009\1\1\0019\1\2\1\18\3\0\0+\4\2\0+\5\2\0+\6\2\0D\1\5\0\27nvim_replace_termcodes\bapi\bvim\15\0\0\1\0\0\0\2+\0\1\0L\0\2\0C\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire�\1\0\1\6\3\n\0!-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\1\1B\1\1\1X\1\23�6\1\2\0'\3\3\0B\1\2\0029\1\4\1B\1\1\2\15\0\1\0X\2\t�6\1\5\0009\1\6\0019\1\a\1-\3\1\0'\5\b\0B\3\2\2'\4\t\0B\1\3\1X\1\a�-\1\2\0B\1\1\2\15\0\1\0X\2\1�X\1\2�\18\1\0\0B\1\1\1K\0\1\0\0�\2�\3�\5!<Plug>luasnip-expand-or-jump\rfeedkeys\afn\bvim\23expand_or_jumpable\fluasnip\frequire\21select_next_item\fvisible�\1\0\1\6\2\n\0\29-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\1\1B\1\1\1X\1\19�6\1\2\0'\3\3\0B\1\2\0029\1\4\1)\3��B\1\2\2\15\0\1\0X\2\t�6\1\5\0009\1\6\0019\1\a\1-\3\1\0'\5\b\0B\3\2\2'\4\t\0B\1\3\1X\1\2�\18\1\0\0B\1\1\1K\0\1\0\0�\2�\5\28<Plug>luasnip-jump-prev\rfeedkeys\afn\bvim\rjumpable\fluasnip\frequire\21select_prev_item\fvisible�\4\0\2\a\0\t\0\0145\2\0\0006\3\2\0009\3\3\3'\5\4\0009\6\1\0018\6\6\2B\3\3\2=\3\1\0015\3\6\0009\4\a\0009\4\b\0048\3\4\3=\3\5\1L\1\2\0\tname\vsource\1\0\b\rnvim_lua\n[LUA]\rnvim_lsp\n[LSP]\tpath\v[PATH]\ttmux\v[TMUX]\vbuffer\n[BUF]\nspell\f[SPELL]\fluasnip\v[SNIP]\forgmode\n[ORG]\tmenu\a%s\vformat\vstring\tkind\1\0\25\vStruct\b\vFolder\b\15EnumMember\b\14Reference\b\18TypeParameter\b\vModule\b\nColor\b\tFile\b\fSnippet\b\fKeyword\b\nValue\b\tUnit\b\rConstant\b\tEnum\b\rVariable\b\16Constructor\b\rFunction\b\nField\b\14Interface\b\tText\b\rProperty\bﰠ\rOperator\b\vMethod\b\nEvent\b\nClass\bﴯ�\n\1\0\14\0Q\0�\0016\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0023\2\3\0003\3\4\0009\4\5\0005\6\t\0005\a\a\0003\b\6\0=\b\b\a=\a\n\0065\a\v\0004\b\t\0009\t\f\1>\t\1\b9\t\r\1>\t\2\b9\t\14\1>\t\3\b6\t\0\0'\v\15\0B\t\2\0029\t\16\t>\t\4\b9\t\17\1>\t\5\b9\t\18\1>\t\6\b9\t\19\1>\t\a\b9\t\20\1>\t\b\b=\b\21\a=\a\22\0069\a\23\0009\a\24\a9\a\25\a5\t\28\0009\n\23\0009\n\26\n5\f\27\0B\n\2\2=\n\29\t9\n\23\0009\n\30\n5\f!\0009\r\31\0009\r \r=\r\"\fB\n\2\2=\n#\t9\n\23\0009\n$\n5\f%\0009\r\31\0009\r \r=\r\"\fB\n\2\2=\n&\t9\n\23\0009\n'\n)\f��B\n\2\2=\n(\t9\n\23\0009\n'\n)\f\4\0B\n\2\2=\n)\t9\n\23\0009\n*\nB\n\1\2=\n+\t9\n\23\0009\n,\nB\n\1\2=\n-\t9\n\23\0003\f.\0005\r/\0B\n\3\2=\n0\t9\n\23\0003\f1\0005\r2\0B\n\3\2=\n3\tB\a\2\2=\a\23\0064\a\v\0005\b4\0>\b\1\a5\b5\0>\b\2\a5\b6\0>\b\3\a5\b7\0>\b\4\a5\b8\0>\b\5\a5\b9\0>\b\6\a5\b:\0>\b\a\a5\b;\0>\b\b\a5\b<\0>\b\t\a5\b=\0>\b\n\a=\a>\0065\a@\0003\b?\0=\bA\a=\aB\6B\4\2\0019\4\5\0009\4C\4'\6D\0005\aH\0009\bE\0009\b>\b4\n\3\0005\vF\0>\v\1\n4\v\3\0005\fG\0>\f\1\vB\b\3\2=\b>\aB\4\3\0019\4\5\0009\4I\0045\6J\0005\aK\0009\b\23\0009\b\24\b9\bI\bB\b\1\2=\b\23\a4\b\3\0005\tL\0>\t\1\b=\b>\aB\4\3\0019\4\5\0009\4I\4'\6M\0005\aN\0009\b\23\0009\b\24\b9\bI\bB\b\1\2=\b\23\a9\bE\0009\b>\b4\n\3\0005\vO\0>\v\1\n4\v\3\0005\fP\0>\f\1\vB\b\3\2=\b>\aB\4\3\0012\0\0�K\0\1\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\0\6:\1\0\1\tname\vbuffer\1\0\0\1\3\0\0\6/\6?\fcmdline\1\0\0\1\0\1\tname\vbuffer\1\0\1\tname\fcmp_git\vconfig\14gitcommit\rfiletype\15formatting\vformat\1\0\0\0\fsources\1\0\1\tname\vbuffer\1\0\1\tname\fcopilot\1\0\1\tname\18latex_symbols\1\0\1\tname\forgmode\1\0\1\tname\nspell\1\0\1\tname\tpath\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lua\1\0\1\tname\rnvim_lsp\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\n<C-e>\nabort\14<C-Space>\rcomplete\n<C-f>\n<C-b>\16scroll_docs\n<C-k>\1\0\0\21select_prev_item\n<C-j>\rbehavior\1\0\0\vInsert\19SelectBehavior\21select_next_item\t<CR>\1\0\0\1\0\1\vselect\2\fconfirm\vinsert\vpreset\fmapping\fsorting\16comparators\norder\vlength\14sort_text\tkind\nunder\25cmp-under-comparator\nscore\nexact\voffset\1\0\1\20priority_weight\3\2\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\0\0\23cmp.config.compare\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15toggleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
try_loadstring("\27LJ\2\n<\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\15bufferline\frequire\0", "config", "bufferline.nvim")
time([[Config for bufferline.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\4\0\a\0\v6\0\0\0'\2\1\0B\0\2\0025\1\4\0005\2\3\0=\2\5\1=\1\2\0009\1\6\0'\3\5\0B\1\2\1K\0\1\0\19load_extension\bfzf\1\0\0\1\0\4\14case_mode\15smart_case\25override_file_sorter\2\28override_generic_sorter\2\nfuzzy\2\15extensions\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: vim-matchup
time([[Config for vim-matchup]], true)
try_loadstring("\27LJ\2\nN\0\0\2\0\4\0\0056\0\0\0009\0\1\0005\1\3\0=\1\2\0K\0\1\0\1\0\1\vmethod\npopup!matchup_matchparen_offscreen\6g\bvim\0", "config", "vim-matchup")
time([[Config for vim-matchup]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\nw\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\31show_current_context_start\2\25show_current_context\2\nsetup\21indent_blankline\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: catppuccin
time([[Config for catppuccin]], true)
try_loadstring("\27LJ\2\n�\2\0\0\5\0\15\0\0206\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\4\0'\2\5\0B\0\2\0029\0\6\0005\2\n\0005\3\a\0005\4\b\0=\4\t\3=\3\v\2B\0\2\0016\0\0\0009\0\f\0009\0\r\0'\2\14\0B\0\2\1K\0\1\0\27colorscheme catppuccin\17nvim_command\bapi\17integrations\1\0\0\bdap\1\0\2\fenabled\2\14enable_ui\2\1\0\4\rnvimtree\2\vfidget\2\bcmp\2\rgitsigns\2\nsetup\15catppuccin\frequire\nmocha\23catppuccin_flavour\6g\bvim\0", "config", "catppuccin")
time([[Config for catppuccin]], false)
-- Config for: feline.nvim
time([[Config for feline.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\26ui.feline_one_monokai\frequire\0", "config", "feline.nvim")
time([[Config for feline.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n�\1\0\2\t\0\a\1\21*\2\0\0006\3\0\0006\5\1\0009\5\2\0059\5\3\0056\6\1\0009\6\4\0069\6\5\6\18\b\1\0B\6\2\0A\3\1\3\15\0\3\0X\5\a�\15\0\4\0X\5\5�9\5\6\4\1\2\5\0X\5\2�+\5\2\0L\5\2\0K\0\1\0\tsize\22nvim_buf_get_name\bapi\ffs_stat\tloop\bvim\npcall��\f�\3\1\0\5\0\22\0!6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0004\4\0\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\5\0'\3\6\0004\4\0\0B\0\4\0016\0\a\0'\2\b\0B\0\2\0029\0\t\0005\2\v\0005\3\n\0=\3\f\0025\3\r\0=\3\14\0025\3\15\0005\4\16\0=\4\17\0033\4\18\0=\4\17\3=\3\19\0025\3\20\0=\3\21\2B\0\2\1K\0\1\0\26context_commentstring\1\0\2\19enable_autocmd\1\venable\2\14highlight\0\fdisable\1\2\0\0\rmarkdown\1\0\2&additional_vim_regex_highlighting\1\venable\2\19ignore_install\1\3\0\0\rmarkdown\amd\21ensure_installed\1\0\2\17auto_install\2\17sync_install\1\1\4\0\0\6c\blua\bcpp\nsetup\28nvim-treesitter.configs\frequire\31nvim_treesitter#foldexpr()\rfoldexpr\texpr\15foldmethod\26nvim_set_option_value\bapi\bvim\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: better-escape.nvim
time([[Config for better-escape.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\4\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0026\3\6\0009\3\a\0039\3\b\3=\3\t\2B\0\2\1K\0\1\0\ftimeout\15timeoutlen\6o\bvim\fmapping\1\0\2\22clear_empty_lines\1\tkeys\n<Esc>\1\4\0\0\ajk\ajj\akk\nsetup\18better_escape\frequire\0", "config", "better-escape.nvim")
time([[Config for better-escape.nvim]], false)

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
