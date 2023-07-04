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
	})

	-- Telescope Advanced Git Search
	use("aaronhallaert/ts-advanced-git-search.nvim", {
		config = function()
			require("telescope").load_extension("advanced_git_search")
		end,
		dependencies = {
			"nvim-telescope/telescope.nvim",
			-- to show diff splits and open commits in browser
			"tpope/vim-fugitive",
		},
	})

	-- Todo Comments
	use("folke/todo-comments.nvim")

	-- Goyo - centers text
	use("junegunn/goyo.vim")

	-- startuptime
	use("dstein64/vim-startuptime")

	-- Treesitter
	use("nvim-treesitter/nvim-treesitter", {
		run = ":TSUpdate",
	})

	-- JSX Autotag
	use("windwp/nvim-ts-autotag", {
		config = function()
			require("nvim-ts-autotag").setup()
		end,
	})

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

	-- Oil
	use({
		"stevearc/oil.nvim",
		config = function()
			require("oil").setup({
				columns = {
					"icon",
					"permissions",
					"size",
					"mtime",
				},
				delete_to_trash = true,
				trash_command = "trash",
				view_options = {
					-- Show files and directories that start with "."
					show_hidden = true,
				},
				float = {
					-- Padding around the floating window
					padding = 2,
					max_width = 0,
					max_height = 0,
					border = "rounded",
					win_options = {
						winblend = 0,
					},
				},
			})
		end,
	})

	-- Walh
	use("casonadams/walh")

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

	-- devicons
	use("nvim-tree/nvim-web-devicons")

	-- Trouble
	use("folke/trouble.nvim", {
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
	})

	-- Smart Column
	use({
		"m4xshen/smartcolumn.nvim",
		config = function()
			require("smartcolumn").setup({
				disabled_filetypes = {
					"help",
					"xhtml",
					"text",
					"markdown",
					"netrw",
					"typescriptreact",
					"php",
					"sh",
					"tmux",
					"lua",
					"zsh",
				},
			})
		end,
	})

	-- Toggleterm
	use({
		"akinsho/toggleterm.nvim",
		tag = "*",
		config = function()
			require("toggleterm").setup({
				direction = "float",
				float_opts = {
					border = "curved",
				},
			})
		end,
	})

	-- Fidget
	use({
		"j-hui/fidget.nvim",
		config = function()
			require("fidget").setup({
				text = {
					spinner = "bouncing_ball",
				},
				window = {
					border = "rounded",
					blend = 0,
				},
			})
		end,
	})

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

	-- Vim Cool
	use("romainl/vim-cool")

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

	-- Colorscheme - Zenbones
	use({
		"mcchrish/zenbones.nvim",
		requires = "rktjmp/lush.nvim",
	})

	-- Colorscheme - meh
	use({
		"davidosomething/vim-colors-meh",
	})
end)
