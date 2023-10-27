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

-- Plugin configuration
require("lazy").setup({
	-- phpcbf
	{
		"ahollister/phpcbf.nvim",
		config = require("main.plugins.phpcbf").config,
		lazy = require("main.plugins.phpcbf").lazy,
		dev = true,
	},

	-- WP Utils
	{
		"ahollister/wp-utils.nvim",
		config = require("main.plugins.wp-utils").config,
		dev = true,
	},

	-- Guess Indent
	{
		"nmac427/guess-indent.nvim",
		config = require("main.plugins.guess-indent").config,
	},

	-- Fine CMDline
	{
		"VonHeikemen/fine-cmdline.nvim",
		config = require("main.plugins.fine-cmdline").config,
		dependencies = require("main.plugins.fine-cmdline").dependencies,
		keys = require("main.plugins.fine-cmdline").keys,
	},

	-- Flash
	{
		"folke/flash.nvim",
		keys = require("main.plugins.flash").keys,
		event = require("main.plugins.flash").event,
	},

	-- Telescope
	{
		"nvim-telescope/telescope.nvim",
		config = require("main.plugins.telescope").config,
		keys = require("main.plugins.telescope").keys,
		dependencies = require("main.plugins.telescope").dependencies,
		tag = require("main.plugins.telescope").tag,
		lazy = require("main.plugins.telescope").lazy,
	},

	-- Todo Comments
	{
		"folke/todo-comments.nvim",
		config = require("main.plugins.todo-comments").config,
	},

	-- Git signs
	{
		"lewis6991/gitsigns.nvim",
		config = require("main.plugins.gitsigns").config,
	},

	-- Treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		config = require("main.plugins.treesitter").config,
	},

	-- Treesitter textobjects
	{
		"nvim-treesitter/nvim-treesitter-textobjects",
		config = require("main.plugins.treesitter-textobjects").config,
		dependencies = require("main.plugins.treesitter-textobjects").dependencies,
	},

	-- Harpoon
	{
		"theprimeagen/harpoon",
		keys = require("main.plugins.harpoon").keys,
	},

	-- Undo Tree
	{
		"mbbill/undotree",
		keys = require("main.plugins.undotree").keys,
	},

	-- Fugitive
	{
		"tpope/vim-fugitive",
		keys = require("main.plugins.fugitive").keys,
		lazy = require("main.plugins.fugitive").lazy,
	},

	-- Commentary
	{ "tpope/vim-commentary" },

	-- Smoothie
	{
		"psliwka/vim-smoothie",
		keys = require("main.plugins.smoothie").keys,
	},

	-- Github Copilot
	{
		"github/copilot.vim",
		keys = require("main.plugins.copilot").keys,
	},

	-- Surround
	{ "tpope/vim-surround" },

	--	 Oil
	{
		"stevearc/oil.nvim",
		config = require("main.plugins.oil").config,
		lazy = require("main.plugins.oil").lazy,
		keys = require("main.plugins.oil").keys,
	},

	-- Obsidian note taking
	{
		"epwalsh/obsidian.nvim",
		config = require("main.plugins.obsidian").config,
		keys = require("main.plugins.obsidian").keys,
		lazy = require("main.plugins.obsidian").lazy,
		dependencies = require("main.plugins.obsidian").dependencies,
	},

	-- Which Key
	{
		"folke/which-key.nvim",
		config = require("main.plugins.which-key").config,
	},

	{
		"nvimdev/lspsaga.nvim",
		config = require("main.plugins.lspsaga").config,
		keys = require("main.plugins.lspsaga").keys,
		after = require("main.plugins.lspsaga").after,
	},

	-- LSP
	{
		"VonHeikemen/lsp-zero.nvim",
		config = require("main.plugins.lsp_zero").config,
		branch = require("main.plugins.lsp_zero").branch,
		dependencies = require("main.plugins.lsp_zero").dependencies,
	},

	-- Formatter
	{
		"mhartington/formatter.nvim",
		config = require("main.plugins.formatter").config,
	},

	-- devicons
	{ "nvim-tree/nvim-web-devicons" },

	-- Trouble
	{
		"folke/trouble.nvim",
		dependencies = require("main.plugins.trouble").dependencies,
	},

	-- Fidget
	{
		"j-hui/fidget.nvim",
		tag = require("main.plugins.fidget").tag,
		config = require("main.plugins.fidget").config,
	},

	-- Lualine
	{
		"nvim-lualine/lualine.nvim",
		config = require("main.plugins.lualine").config,
		requires = require("main.plugins.lualine").requires,
	},

	-- GitGutter
	{ "airblade/vim-gitgutter" },

	-- Vim Cool - Handle search highlighting better
	{ "romainl/vim-cool" },

	-- Colorizer
	{
		"NvChad/nvim-colorizer.lua",
		config = require("main.plugins.colorizer").config,
	},

	-- Colorscheme - tokyonight
	{
		"folke/tokyonight.nvim",
		lazy = require("main.plugins.tokyonight").lazy,
		priority = require("main.plugins.tokyonight").priority,
		opts = require("main.plugins.tokyonight").opts,
	},

	-- Colorscheme - Spacebun
	{ "ahollister/spacebun" },

	-- Colorscheme - Catppuccin
	{
		"catppuccin/nvim",
		config = require("main.plugins.catppuccin").config,
		as = require("main.plugins.catppuccin").as,
	},

	-- Colorscheme - Rose Pine
	{
		"rose-pine/neovim",
		as = require("main.plugins.rose-pine").as,
		config = require("main.plugins.rose-pine").config,
	},

	-- Colorscheme - Zenbones
	{
		"mcchrish/zenbones.nvim",
		dependencies = require("main.plugins.zenbones").dependencies,
	},

	-- Colorscheme - meh
	{
		"davidosomething/vim-colors-meh",
	},
}, {
	dev = {
		path = "/Users/adam/Dev/nvim/plugins/",
		patterns = {}, -- For example {"folke"}
		fallback = false, -- Fallback to git when local plugin doesn't exist
	},
})
