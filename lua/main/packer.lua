-- PACKAGE MANAGEMENT
---------------------

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer
	use("wbthomason/packer.nvim")

	-- Telescope
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.1",
		requires = {
			{
				"nvim-lua/plenary.nvim",
			},
		},
		file_browser = {
			theme = "ivy",
			-- disables netrw and use telescope-file-browser in its place
			hijack_netrw = true,
		},
	})

	-- Telescope File Browser
	use({
		"nvim-telescope/telescope-file-browser.nvim",
	})

	-- Neoclip
	use({
		"AckslD/nvim-neoclip.lua",
		requires = {
			{
				"nvim-telescope/telescope.nvim",
			},
			{
				"kkharji/sqlite.lua",
				module = "sqlite",
			},
		},
		config = function()
			require("neoclip").setup({
				enable_persistent_history = true,
			})
		end,
	})

	-- Treesitter
	use("nvim-treesitter/nvim-treesitter", {
		run = ":TSUpdate",
	})
	use("nvim-treesitter/playground")

	-- Harpoon
	use("theprimeagen/harpoon")

	-- Undo Tree
	use("mbbill/undotree")

	-- Fugitive
	use("tpope/vim-fugitive")

	-- Commentary
	use("tpope/vim-commentary")

	-- Smoothie
	use("psliwka/vim-smoothie")

	-- Github Copilot
	use("github/copilot.vim")

	-- Surround
	use("tpope/vim-surround")

	-- LSP
	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v1.x",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" }, -- Required
			{ "williamboman/mason.nvim" }, -- Optional
			{ "williamboman/mason-lspconfig.nvim" }, -- Optional

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" }, -- Required
			{ "hrsh7th/cmp-nvim-lsp" }, -- Required
			{ "hrsh7th/cmp-buffer" }, -- Optional
			{ "hrsh7th/cmp-path" }, -- Optional
			{ "saadparwaiz1/cmp_luasnip" }, -- Optional
			{ "hrsh7th/cmp-nvim-lua" }, -- Optional

			-- Snippets
			{ "L3MON4D3/LuaSnip" }, -- Required
			{ "rafamadriz/friendly-snippets" }, -- Optional
		},
	})

	-- Formatter
	use("mhartington/formatter.nvim")

	-- Fidget
	use("j-hui/fidget.nvim")

	-- Lualine
	use({
		"nvim-lualine/lualine.nvim",
		requires = {
			"kyazdani42/nvim-web-devicons",
			opt = true,
		},
	})

	-- GitGutter
	use("airblade/vim-gitgutter")

	-- Transparent - allows for toggle
	use("xiyaowong/nvim-transparent")

	-- Colorscheme - Catppuccin
	use({
		"catppuccin/nvim",
		as = "catppuccin",
	})

	-- Colorscheme - Rose Pine
	use({
		"rose-pine/neovim",
		as = "rose-pine",
		config = function()
			require("rose-pine").setup()
			vim.cmd("colorscheme rose-pine")
		end,
	})
end)
