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
local package_path_str = "/Users/adam/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/adam/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/adam/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/adam/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/adam/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
  LuaSnip = {
    loaded = true,
    path = "/Users/adam/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  catppuccin = {
    loaded = true,
    path = "/Users/adam/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/adam/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/adam/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/Users/adam/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/adam/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/adam/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["copilot.vim"] = {
    loaded = true,
    path = "/Users/adam/.local/share/nvim/site/pack/packer/start/copilot.vim",
    url = "https://github.com/github/copilot.vim"
  },
  ["fidget.nvim"] = {
    config = { "\27LJ\2\nŠ\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\vwindow\1\0\2\nblend\3\0\vborder\frounded\ttext\1\0\0\1\0\1\fspinner\18bouncing_ball\nsetup\vfidget\frequire\0" },
    loaded = true,
    path = "/Users/adam/.local/share/nvim/site/pack/packer/start/fidget.nvim",
    url = "https://github.com/j-hui/fidget.nvim"
  },
  ["formatter.nvim"] = {
    loaded = true,
    path = "/Users/adam/.local/share/nvim/site/pack/packer/start/formatter.nvim",
    url = "https://github.com/mhartington/formatter.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/Users/adam/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["goyo.vim"] = {
    loaded = true,
    path = "/Users/adam/.local/share/nvim/site/pack/packer/start/goyo.vim",
    url = "https://github.com/junegunn/goyo.vim"
  },
  ["guess-indent.nvim"] = {
    config = { "\27LJ\2\n>\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\17guess-indent\frequire\0" },
    loaded = true,
    path = "/Users/adam/.local/share/nvim/site/pack/packer/start/guess-indent.nvim",
    url = "https://github.com/nmac427/guess-indent.nvim"
  },
  harpoon = {
    loaded = true,
    path = "/Users/adam/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/theprimeagen/harpoon"
  },
  ["lsp-zero.nvim"] = {
    loaded = true,
    path = "/Users/adam/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["lspsaga.nvim"] = {
    config = { "\27LJ\2\n±\2\0\0\5\0\16\0\0206\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\2B\0\2\0016\0\n\0009\0\v\0009\0\f\0'\2\r\0'\3\14\0'\4\15\0B\0\4\1K\0\1\0\31<cmd>Lspsaga hover_doc<CR>\14<leader>k\6n\bset\vkeymap\bvim\foutline\1\0\3\14win_width\0032\15left_width\4æÌ™³\6æÌ™ÿ\3\21close_after_jump\2\21symbol_in_winbar\1\0\3\venable\1\17folder_level\3\2\15color_mode\1\14lightbulb\1\0\0\1\0\1\venable\1\nsetup\flspsaga\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/adam/.local/share/nvim/site/pack/packer/opt/lspsaga.nvim",
    url = "https://github.com/nvimdev/lspsaga.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/Users/adam/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["lush.nvim"] = {
    loaded = true,
    path = "/Users/adam/.local/share/nvim/site/pack/packer/start/lush.nvim",
    url = "https://github.com/rktjmp/lush.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/Users/adam/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/Users/adam/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/adam/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/adam/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/adam/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "/Users/adam/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/adam/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["obsidian.nvim"] = {
    config = { "\27LJ\2\n<\0\1\4\0\4\0\a6\1\0\0009\1\1\0019\1\2\0015\3\3\0>\0\2\3B\1\2\1K\0\1\0\1\2\0\0\topen\rjobstart\afn\bvimõ\1\1\0\4\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0023\3\b\0=\3\t\2B\0\2\1K\0\1\0\20follow_url_func\0\16daily_notes\1\0\2\16date_format\r%Y-%m-%d\vfolder\18notes/dailies\17dependencies\1\3\0\0\26nvim-lua/plenary.nvim\"nvim-telescope/telescope.nvim\1\0\1\bdir\17~/wikis/work\nsetup\robsidian\frequire\0" },
    loaded = true,
    path = "/Users/adam/.local/share/nvim/site/pack/packer/start/obsidian.nvim",
    url = "https://github.com/epwalsh/obsidian.nvim"
  },
  ["oil.nvim"] = {
    config = { "\27LJ\2\n—\2\0\0\5\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0005\4\t\0=\4\n\3=\3\v\2B\0\2\1K\0\1\0\nfloat\16win_options\1\0\1\rwinblend\3\0\1\0\4\14max_width\3\0\15max_height\3\0\fpadding\3\2\vborder\frounded\17view_options\1\0\1\16show_hidden\2\fcolumns\1\0\2\20delete_to_trash\2\18trash_command\ntrash\1\5\0\0\ticon\16permissions\tsize\nmtime\nsetup\boil\frequire\0" },
    loaded = true,
    path = "/Users/adam/.local/share/nvim/site/pack/packer/start/oil.nvim",
    url = "https://github.com/stevearc/oil.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/adam/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/adam/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["qfview.nvim"] = {
    config = { "\27LJ\2\n4\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\vqfview\frequire\0" },
    loaded = true,
    path = "/Users/adam/.local/share/nvim/site/pack/packer/start/qfview.nvim",
    url = "https://github.com/ashfinal/qfview.nvim"
  },
  ["rose-pine"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14rose-pine\frequire\0" },
    loaded = true,
    path = "/Users/adam/.local/share/nvim/site/pack/packer/start/rose-pine",
    url = "https://github.com/rose-pine/neovim"
  },
  ["smartcolumn.nvim"] = {
    config = { "\27LJ\2\n¢\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\23disabled_filetypes\1\0\0\1\f\0\0\thelp\nxhtml\ttext\rmarkdown\nnetrw\20typescriptreact\bphp\ash\ttmux\blua\bzsh\nsetup\16smartcolumn\frequire\0" },
    loaded = true,
    path = "/Users/adam/.local/share/nvim/site/pack/packer/start/smartcolumn.nvim",
    url = "https://github.com/m4xshen/smartcolumn.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/adam/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    loaded = true,
    path = "/Users/adam/.local/share/nvim/site/pack/packer/start/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\ns\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\15float_opts\1\0\1\vborder\vcurved\1\0\1\14direction\nfloat\nsetup\15toggleterm\frequire\0" },
    loaded = true,
    path = "/Users/adam/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["treesitter-unit"] = {
    config = { "\27LJ\2\n›\3\0\0\6\0\15\0!6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\a\0'\4\b\0005\5\t\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\n\0'\3\4\0'\4\v\0005\5\f\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\n\0'\3\a\0'\4\r\0005\5\14\0B\0\5\1K\0\1\0\1\0\1\fnoremap\0028:<c-u>lua require\"treesitter-unit\".select(true)<CR>\1\0\1\fnoremap\0024:<c-u>lua require\"treesitter-unit\".select()<CR>\6o\1\0\1\fnoremap\0023:lua require\"treesitter-unit\".select(true)<CR>\aau\1\0\1\fnoremap\2/:lua require\"treesitter-unit\".select()<CR>\aiu\6x\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/Users/adam/.local/share/nvim/site/pack/packer/start/treesitter-unit",
    url = "https://github.com/David-Kunz/treesitter-unit"
  },
  ["trouble.nvim"] = {
    loaded = true,
    path = "/Users/adam/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["ts-advanced-git-search.nvim"] = {
    loaded = true,
    path = "/Users/adam/.local/share/nvim/site/pack/packer/start/ts-advanced-git-search.nvim",
    url = "https://github.com/aaronhallaert/ts-advanced-git-search.nvim"
  },
  undotree = {
    loaded = true,
    path = "/Users/adam/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-colors-meh"] = {
    loaded = true,
    path = "/Users/adam/.local/share/nvim/site/pack/packer/start/vim-colors-meh",
    url = "https://github.com/davidosomething/vim-colors-meh"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/Users/adam/.local/share/nvim/site/pack/packer/start/vim-commentary",
    url = "https://github.com/tpope/vim-commentary"
  },
  ["vim-cool"] = {
    loaded = true,
    path = "/Users/adam/.local/share/nvim/site/pack/packer/start/vim-cool",
    url = "https://github.com/romainl/vim-cool"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/adam/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-gitgutter"] = {
    loaded = true,
    path = "/Users/adam/.local/share/nvim/site/pack/packer/start/vim-gitgutter",
    url = "https://github.com/airblade/vim-gitgutter"
  },
  ["vim-smoothie"] = {
    loaded = true,
    path = "/Users/adam/.local/share/nvim/site/pack/packer/start/vim-smoothie",
    url = "https://github.com/psliwka/vim-smoothie"
  },
  ["vim-startuptime"] = {
    loaded = true,
    path = "/Users/adam/.local/share/nvim/site/pack/packer/start/vim-startuptime",
    url = "https://github.com/dstein64/vim-startuptime"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/adam/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  walh = {
    loaded = true,
    path = "/Users/adam/.local/share/nvim/site/pack/packer/start/walh",
    url = "https://github.com/casonadams/walh"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\n—\1\0\0\4\0\n\0\0176\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\0\0009\0\1\0)\1,\1=\1\3\0006\0\4\0'\2\5\0B\0\2\0029\0\6\0005\2\b\0005\3\a\0=\3\t\2B\0\2\1K\0\1\0\vwindow\1\0\0\1\0\1\vborder\vsingle\nsetup\14which-key\frequire\15timeoutlen\ftimeout\6o\bvim\0" },
    loaded = true,
    path = "/Users/adam/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  },
  ["zenbones.nvim"] = {
    loaded = true,
    path = "/Users/adam/.local/share/nvim/site/pack/packer/start/zenbones.nvim",
    url = "https://github.com/mcchrish/zenbones.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: smartcolumn.nvim
time([[Config for smartcolumn.nvim]], true)
try_loadstring("\27LJ\2\n¢\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\23disabled_filetypes\1\0\0\1\f\0\0\thelp\nxhtml\ttext\rmarkdown\nnetrw\20typescriptreact\bphp\ash\ttmux\blua\bzsh\nsetup\16smartcolumn\frequire\0", "config", "smartcolumn.nvim")
time([[Config for smartcolumn.nvim]], false)
-- Config for: fidget.nvim
time([[Config for fidget.nvim]], true)
try_loadstring("\27LJ\2\nŠ\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\vwindow\1\0\2\nblend\3\0\vborder\frounded\ttext\1\0\0\1\0\1\fspinner\18bouncing_ball\nsetup\vfidget\frequire\0", "config", "fidget.nvim")
time([[Config for fidget.nvim]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\n—\1\0\0\4\0\n\0\0176\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\0\0009\0\1\0)\1,\1=\1\3\0006\0\4\0'\2\5\0B\0\2\0029\0\6\0005\2\b\0005\3\a\0=\3\t\2B\0\2\1K\0\1\0\vwindow\1\0\0\1\0\1\vborder\vsingle\nsetup\14which-key\frequire\15timeoutlen\ftimeout\6o\bvim\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: qfview.nvim
time([[Config for qfview.nvim]], true)
try_loadstring("\27LJ\2\n4\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\vqfview\frequire\0", "config", "qfview.nvim")
time([[Config for qfview.nvim]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\ns\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\15float_opts\1\0\1\vborder\vcurved\1\0\1\14direction\nfloat\nsetup\15toggleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)
-- Config for: oil.nvim
time([[Config for oil.nvim]], true)
try_loadstring("\27LJ\2\n—\2\0\0\5\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0005\4\t\0=\4\n\3=\3\v\2B\0\2\1K\0\1\0\nfloat\16win_options\1\0\1\rwinblend\3\0\1\0\4\14max_width\3\0\15max_height\3\0\fpadding\3\2\vborder\frounded\17view_options\1\0\1\16show_hidden\2\fcolumns\1\0\2\20delete_to_trash\2\18trash_command\ntrash\1\5\0\0\ticon\16permissions\tsize\nmtime\nsetup\boil\frequire\0", "config", "oil.nvim")
time([[Config for oil.nvim]], false)
-- Config for: rose-pine
time([[Config for rose-pine]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14rose-pine\frequire\0", "config", "rose-pine")
time([[Config for rose-pine]], false)
-- Config for: obsidian.nvim
time([[Config for obsidian.nvim]], true)
try_loadstring("\27LJ\2\n<\0\1\4\0\4\0\a6\1\0\0009\1\1\0019\1\2\0015\3\3\0>\0\2\3B\1\2\1K\0\1\0\1\2\0\0\topen\rjobstart\afn\bvimõ\1\1\0\4\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0023\3\b\0=\3\t\2B\0\2\1K\0\1\0\20follow_url_func\0\16daily_notes\1\0\2\16date_format\r%Y-%m-%d\vfolder\18notes/dailies\17dependencies\1\3\0\0\26nvim-lua/plenary.nvim\"nvim-telescope/telescope.nvim\1\0\1\bdir\17~/wikis/work\nsetup\robsidian\frequire\0", "config", "obsidian.nvim")
time([[Config for obsidian.nvim]], false)
-- Config for: treesitter-unit
time([[Config for treesitter-unit]], true)
try_loadstring("\27LJ\2\n›\3\0\0\6\0\15\0!6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\a\0'\4\b\0005\5\t\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\n\0'\3\4\0'\4\v\0005\5\f\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\n\0'\3\a\0'\4\r\0005\5\14\0B\0\5\1K\0\1\0\1\0\1\fnoremap\0028:<c-u>lua require\"treesitter-unit\".select(true)<CR>\1\0\1\fnoremap\0024:<c-u>lua require\"treesitter-unit\".select()<CR>\6o\1\0\1\fnoremap\0023:lua require\"treesitter-unit\".select(true)<CR>\aau\1\0\1\fnoremap\2/:lua require\"treesitter-unit\".select()<CR>\aiu\6x\20nvim_set_keymap\bapi\bvim\0", "config", "treesitter-unit")
time([[Config for treesitter-unit]], false)
-- Config for: guess-indent.nvim
time([[Config for guess-indent.nvim]], true)
try_loadstring("\27LJ\2\n>\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\17guess-indent\frequire\0", "config", "guess-indent.nvim")
time([[Config for guess-indent.nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-lspconfig ]]
vim.cmd [[ packadd lspsaga.nvim ]]

-- Config for: lspsaga.nvim
try_loadstring("\27LJ\2\n±\2\0\0\5\0\16\0\0206\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\2B\0\2\0016\0\n\0009\0\v\0009\0\f\0'\2\r\0'\3\14\0'\4\15\0B\0\4\1K\0\1\0\31<cmd>Lspsaga hover_doc<CR>\14<leader>k\6n\bset\vkeymap\bvim\foutline\1\0\3\14win_width\0032\15left_width\4æÌ™³\6æÌ™ÿ\3\21close_after_jump\2\21symbol_in_winbar\1\0\3\venable\1\17folder_level\3\2\15color_mode\1\14lightbulb\1\0\0\1\0\1\venable\1\nsetup\flspsaga\frequire\0", "config", "lspsaga.nvim")

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
