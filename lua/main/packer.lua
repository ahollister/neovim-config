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

	use({
		"ashfinal/qfview.nvim",
		config = function()
			require("qfview").setup()
		end,
	})

	-- guess tabs vs spaces
	use({
		"nmac427/guess-indent.nvim",
		config = function()
			require("guess-indent").setup({})
		end,
	})

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

	-- Obsidian note taking
	use({
		"epwalsh/obsidian.nvim",
		config = function()
			require("obsidian").setup({
				dir = "~/wikis/work",
				-- dir = "~/wikis/personal",
				dependencies = {
					"nvim-lua/plenary.nvim",
					"nvim-telescope/telescope.nvim",
				},
				daily_notes = {
					folder = "notes/dailies",
					date_format = "%Y-%m-%d",
				},
				follow_url_func = function(url)
					vim.fn.jobstart({ "open", url }) -- Mac OS
				end,
			})
		end,
	})

	-- Lua
	use({
		"folke/which-key.nvim",
		config = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
			require("which-key").setup({
				window = {
					border = "single",
				},
			})
		end,
	})

	use({
		"David-Kunz/treesitter-unit",
		config = function()
			vim.api.nvim_set_keymap("x", "iu", ':lua require"treesitter-unit".select()<CR>', { noremap = true })
			vim.api.nvim_set_keymap("x", "au", ':lua require"treesitter-unit".select(true)<CR>', { noremap = true })
			vim.api.nvim_set_keymap("o", "iu", ':<c-u>lua require"treesitter-unit".select()<CR>', { noremap = true })
			vim.api.nvim_set_keymap(
				"o",
				"au",
				':<c-u>lua require"treesitter-unit".select(true)<CR>',
				{ noremap = true }
			)
		end,
	})

	use({
		"nvimdev/lspsaga.nvim",
		after = "nvim-lspconfig",
		config = function()
			require("lspsaga").setup({
				lightbulb = {
					enable = false,
				},
				symbol_in_winbar = {
					enable = false,
					color_mode = false,
					folder_level = 2,
				},
				outline = {
					left_width = 0.7,
					win_width = 50,
					close_after_jump = true,
				},
			})
			vim.keymap.set("n", "<leader>k", "<cmd>Lspsaga hover_doc<CR>")
		end,
	})

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
		tag = "legacy",
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

	-- Vim Cool - Handle search highlighting better
	use("romainl/vim-cool")

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
