local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Plugins
local catppuccin = require("main.plugins.catppuccin")
local copilot = require("main.plugins.copilot")
-- local fidget = require("main.plugins.fidget")
local formatter = require("main.plugins.formatter")
local fugitive = require("main.plugins.fugitive")
local gitsigns = require("main.plugins.gitsigns")
local guess_indent = require("main.plugins.guess-indent")
local harpoon = require("main.plugins.harpoon")
local lualine = require("main.plugins.lualine")
local lsp_zero = require("main.plugins.lsp_zero")
local lspsaga = require("main.plugins.lspsaga")
local noice = require("main.plugins.noice")
local notify = require("main.plugins.notify")
local nvim_dap = require("main.plugins.nvim-dap")
local nvim_dap_virtual_text = require("main.plugins.nvim-dap-virtual-text")
local nvim_dap_ui = require("main.plugins.nvim-dap-ui")
local obsidian = require("main.plugins.obsidian")
local oil = require("main.plugins.oil")
local phpcbf = require("main.plugins.phpcbf")
local rose_pine = require("main.plugins.rose-pine")
local smartcolumn = require("main.plugins.smartcolumn")
local smoothie = require("main.plugins.smoothie")
local telescope = require("main.plugins.telescope")
local todo_comments = require("main.plugins.todo-comments")
local treesitter = require("main.plugins.treesitter")
local treesitter_unit = require("main.plugins.treesitter-unit")
local trouble = require("main.plugins.trouble")
local ts_autotag = require("main.plugins.ts-autotag")
local undotree = require("main.plugins.undotree")
local which_key = require("main.plugins.which-key")
local wp_utils = require("main.plugins.wp-utils")
local zenbones = require("main.plugins.zenbones")

require("lazy").setup({
	-- phpcbf
	{
		"ahollister/phpcbf.nvim",
		config = phpcbf.config,
	},

	-- WP Utils
	{
		"ahollister/wp-utils.nvim",
		config = wp_utils.config,
	},

	-- Telescope
	{
		"nvim-telescope/telescope.nvim",
		config = telescope.config,
		keys = telescope.keys,
		dependencies = telescope.dependencies,
		tag = telescope.tag,
		lazy = telescope.lazy,
	},

	-- Todo Comments
	{
		"folke/todo-comments.nvim",
		config = todo_comments.config,
	},

	-- Noice
	{
		"folke/noice.nvim",
		config = noice.config,
		event = noice.event,
		dependencies = noice.dependencies,
	},

	-- Notify
	{
		"rcarriga/nvim-notify",
		config = notify.config,
		lazy = notify.lazy,
	},

	-- guess tabs vs spaces
	{
		"nmac427/guess-indent.nvim",
		config = guess_indent.config,
	},

	{
		"lewis6991/gitsigns.nvim",
		config = gitsigns.config,
	},

	-- Treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		config = treesitter.config,
		-- build = treesitter.build,
	},

	-- JSX Autotag
	{
		"windwp/nvim-ts-autotag",
		config = ts_autotag.config,
	},

	-- Harpoon
	{
		"theprimeagen/harpoon",
		keys = harpoon.keys,
	},

	-- Undo Tree
	{
		"mbbill/undotree",
		keys = undotree.keys,
	},

	-- Fugitive
	{
		"tpope/vim-fugitive",
		keys = fugitive.keys,
		lazy = fugitive.lazy,
	},

	-- Commentary
	{ "tpope/vim-commentary" },

	-- Smoothie
	{
		"psliwka/vim-smoothie",
		keys = smoothie.keys,
	},

	-- Github Copilot
	{
		"github/copilot.vim",
		keys = copilot.keys,
	},

	-- DAP - Debugger Protocol
	{
		"mfussenegger/nvim-dap",
		config = nvim_dap.config,
	},

	-- DAP Virtual Text
	{
		"theHamsta/nvim-dap-virtual-text",
		config = nvim_dap_virtual_text.config,
	},

	{
		"rcarriga/nvim-dap-ui",
		config = nvim_dap_ui.config,
		requires = nvim_dap_ui.requires,
	},

	-- Surround
	{ "tpope/vim-surround" },

	-- Oil
	{
		"stevearc/oil.nvim",
		config = oil.config,
		keys = oil.keys,
		lazy = oil.lazy,
	},

	-- Obsidian note taking
	{
		"epwalsh/obsidian.nvim",
		config = obsidian.config,
		keys = obsidian.keys,
	},

	-- Which Key
	{
		"folke/which-key.nvim",
		config = which_key.config,
	},

	{
		"David-Kunz/treesitter-unit",
		config = treesitter_unit.config,
	},

	{
		"nvimdev/lspsaga.nvim",
		config = lspsaga.config,
		keys = lspsaga.keys,
		after = lspsaga.after,
	},

	-- LSP
	{
		"VonHeikemen/lsp-zero.nvim",
		config = lsp_zero.config,
		branch = lsp_zero.branch,
		dependencies = lsp_zero.dependencies,
	},

	-- Formatter
	{
		"mhartington/formatter.nvim",
		config = formatter.config,
	},

	-- devicons
	{ "nvim-tree/nvim-web-devicons" },

	-- Trouble
	{
		"folke/trouble.nvim",
		dependencies = trouble.dependencies,
	},

	-- Smart Column
	{
		"m4xshen/smartcolumn.nvim",
		config = smartcolumn.config,
	},

	-- -- Fidget
	-- {
	-- 	"j-hui/fidget.nvim",
	-- 	tag = fidget.tag,
	-- 	config = fidget.config,
	-- },

	-- Lualine
	{
		"nvim-lualine/lualine.nvim",
		config = lualine.config,
		requires = lualine.requires,
	},

	-- GitGutter
	{ "airblade/vim-gitgutter" },

	-- Vim Cool - Handle search highlighting better
	{ "romainl/vim-cool" },

	-- Colorscheme - Spacebun
	{ "ahollister/spacebun" },

	-- Colorscheme - Catppuccin
	{
		"catppuccin/nvim",
		config = catppuccin.config,
		as = catppuccin.as,
	},

	-- Colorscheme - Rose Pine
	{
		"rose-pine/neovim",
		as = rose_pine.as,
		config = rose_pine.config,
	},

	-- Colorscheme - Zenbones
	{
		"mcchrish/zenbones.nvim",
		dependencies = zenbones.dependencies,
	},

	-- Colorscheme - meh
	{
		"davidosomething/vim-colors-meh",
	},
})
