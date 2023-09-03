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

local plugins = {
	catppuccin = require("main.plugins.catppuccin"),
	copilot = require("main.plugins.copilot"),
	fidget = require("main.plugins.fidget"),
	formatter = require("main.plugins.formatter"),
	fugitive = require("main.plugins.fugitive"),
	gitsigns = require("main.plugins.gitsigns"),
	guess_indent = require("main.plugins.guess-indent"),
	harpoon = require("main.plugins.harpoon"),
	lualine = require("main.plugins.lualine"),
	lsp_zero = require("main.plugins.lsp_zero"),
	lspsaga = require("main.plugins.lspsaga"),
	noice = require("main.plugins.noice"),
	notify = require("main.plugins.notify"),
	nvim_dap = require("main.plugins.nvim-dap"),
	nvim_dap_virtual_text = require("main.plugins.nvim-dap-virtual-text"),
	nvim_dap_ui = require("main.plugins.nvim-dap-ui"),
	obsidian = require("main.plugins.obsidian"),
	oil = require("main.plugins.oil"),
	phpcbf = require("main.plugins.phpcbf"),
	rose_pine = require("main.plugins.rose-pine"),
	smartcolumn = require("main.plugins.smartcolumn"),
	smoothie = require("main.plugins.smoothie"),
	telescope = require("main.plugins.telescope"),
	todo_comments = require("main.plugins.todo-comments"),
	treesitter = require("main.plugins.treesitter"),
	treesitter_unit = require("main.plugins.treesitter-unit"),
	trouble = require("main.plugins.trouble"),
	ts_autotag = require("main.plugins.ts-autotag"),
	undotree = require("main.plugins.undotree"),
	which_key = require("main.plugins.which-key"),
	wp_utils = require("main.plugins.wp-utils"),
	zenbones = require("main.plugins.zenbones"),
}

require("lazy").setup({
	-- phpcbf
	{
		"ahollister/phpcbf.nvim",
		config = plugins.phpcbf.config,
	},

	-- WP Utils
	{
		"ahollister/wp-utils.nvim",
		config = plugins.wp_utils.config,
	},

	-- Telescope
	{
		"nvim-telescope/telescope.nvim",
		config = plugins.telescope.config,
		keys = plugins.telescope.keys,
		dependencies = plugins.telescope.dependencies,
		tag = plugins.telescope.tag,
		lazy = plugins.telescope.lazy,
	},

	-- Todo Comments
	{
		"folke/todo-comments.nvim",
		config = plugins.todo_comments.config,
	},

	-- Noice
	{
		"folke/noice.nvim",
		config = plugins.noice.config,
		event = plugins.noice.event,
		dependencies = plugins.noice.dependencies,
	},

	-- Notify
	{
		"rcarriga/nvim-notify",
		config = plugins.notify.config,
		lazy = plugins.notify.lazy,
	},

	-- guess tabs vs spaces
	{
		"nmac427/guess-indent.nvim",
		config = plugins.guess_indent.config,
	},

	{
		"lewis6991/gitsigns.nvim",
		config = plugins.gitsigns.config,
	},

	-- Treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		config = plugins.treesitter.config,
		-- build = plugins.treesitter.build,
	},

	-- JSX Autotag
	{
		"windwp/nvim-ts-autotag",
		config = plugins.ts_autotag.config,
	},

	-- Harpoon
	{
		"theprimeagen/harpoon",
		keys = plugins.harpoon.keys,
	},

	-- Undo Tree
	{
		"mbbill/undotree",
		keys = plugins.undotree.keys,
	},

	-- Fugitive
	{
		"tpope/vim-fugitive",
		-- keys = plugins.fugitive.keys,
	},

	-- Commentary
	{ "tpope/vim-commentary" },

	-- Smoothie
	{
		"psliwka/vim-smoothie",
		keys = plugins.smoothie.keys,
	},

	-- Github Copilot
	{
		"github/copilot.vim",
		keys = plugins.copilot.keys,
	},

	-- DAP - Debugger Protocol
	{
		"mfussenegger/nvim-dap",
		config = plugins.nvim_dap.config,
	},

	-- DAP Virtual Text
	{
		"theHamsta/nvim-dap-virtual-text",
		config = plugins.nvim_dap_virtual_text.config,
	},

	{
		"rcarriga/nvim-dap-ui",
		config = plugins.nvim_dap_ui.config,
		requires = plugins.nvim_dap_ui.requires,
	},

	-- Surround
	{ "tpope/vim-surround" },

	-- Oil
	{
		"stevearc/oil.nvim",
		config = plugins.oil.config,
		keys = plugins.oil.keys,
		lazy = plugins.oil.lazy,
	},

	-- Obsidian note taking
	{
		"epwalsh/obsidian.nvim",
		config = plugins.obsidian.config,
		keys = plugins.obsidian.keys,
	},

	-- Which Key
	{
		"folke/which-key.nvim",
		config = plugins.which_key.config,
	},

	{
		"David-Kunz/treesitter-unit",
		config = plugins.treesitter_unit.config,
	},

	{
		"nvimdev/lspsaga.nvim",
		config = plugins.lspsaga.config,
		keys = plugins.lspsaga.keys,
		after = plugins.lspsaga.after,
	},

	-- LSP
	{
		"VonHeikemen/lsp-zero.nvim",
		config = plugins.lsp_zero.config,
		branch = plugins.lsp_zero.branch,
		dependencies = plugins.lsp_zero.dependencies,
	},

	-- Formatter
	{
		"mhartington/formatter.nvim",
		config = plugins.formatter.config,
	},

	-- devicons
	{ "nvim-tree/nvim-web-devicons" },

	-- Trouble
	{
		"folke/trouble.nvim",
		dependencies = plugins.trouble.dependencies,
	},

	-- Smart Column
	{
		"m4xshen/smartcolumn.nvim",
		config = plugins.smartcolumn.config,
	},

	-- -- Fidget
	-- {
	-- 	"j-hui/fidget.nvim",
	-- 	tag = plugins.fidget.tag,
	-- 	config = plugins.fidget.config,
	-- },

	-- Lualine
	{
		"nvim-lualine/lualine.nvim",
		config = plugins.lualine.config,
		requires = plugins.lualine.requires,
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
		config = plugins.catppuccin.config,
		as = plugins.catppuccin.as,
	},

	-- Colorscheme - Rose Pine
	{
		"rose-pine/neovim",
		as = plugins.rose_pine.as,
		config = plugins.rose_pine.config,
	},

	-- Colorscheme - Zenbones
	{
		"mcchrish/zenbones.nvim",
		dependencies = plugins.zenbones.dependencies,
	},

	-- Colorscheme - meh
	{
		"davidosomething/vim-colors-meh",
	},
})
