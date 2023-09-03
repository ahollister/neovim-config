local M = {}

M.config = function()
	-- Learn the keybindings, see :help lsp-zero-keybindings
	-- Learn to configure LSP servers, see :help lsp-zero-api-showcase
	local lsp = require("lsp-zero")
	lsp.preset("recommended")

	lsp.ensure_installed({
		"tsserver",
		"eslint",
		"lua_ls",
		"intelephense",
		"cssls",
		"bashls",
		"graphql",
		"html",
		"marksman",
		"tailwindcss",
	})

	-- Configure lua language server for neovim (fix global variable warnings)
	lsp.nvim_workspace()

	-- On attach, if there's an LSP to use, use it, otherwise vim defaults
	lsp.on_attach(function(client, bufnr)
		local opts = { buffer = bufnr, remap = false }

		vim.keymap.set("n", "<leader>fr", ":Telescope lsp_references<CR>")

		vim.keymap.set("n", "<leader>fd", function()
			vim.lsp.buf.definition()
		end, opts)

		vim.keymap.set("n", "[d", function()
			vim.diagnostic.goto_next()
		end, opts)

		vim.keymap.set("n", "]d", function()
			vim.diagnostic.goto_prev()
		end, opts)

		vim.keymap.set("n", "<leader>ca", function()
			vim.lsp.buf.code_action()
		end, opts)

		vim.keymap.set("n", "<leader>rn", function()
			vim.lsp.buf.rename()
		end, opts)
	end)

	lsp.setup()

	vim.diagnostic.config({
		virtual_text = true,
	})

	-- cssls
	require("lspconfig").cssls.setup({
		settings = {
			css = {
				validate = false,
				lint = {
					unknownAtRules = "ignore",
				},
			},
		},
	})

	-- TSServer config
	require("lspconfig").tsserver.setup({
		init_options = {
			preferences = {
				disableSuggestions = true,
			},
		},
	})

	-- PHP config
	local get_intelephense_license = function()
		local f = assert(io.open(os.getenv("HOME") .. "/intelephense/license.txt", "rb"))
		local content = f:read("*a")
		f:close()
		return string.gsub(content, "%s+", "")
	end

	local intelephense_settings = {
		licenceKey = get_intelephense_license(),
		files = {
			maxSize = 5000000,
		},
	}

	local wp = require("wp-utils.utils")

	if wp.is_wp() then
		intelephense_settings.environment = {
			includePaths = {
				wp.get_wp_path(),
			},
		}
	end

	require("lspconfig").intelephense.setup({
		settings = {
			intelephense = intelephense_settings,
		},
	})
end

M.branch = "v1.x"

M.dependencies = {
	-- LSP Support
	"neovim/nvim-lspconfig",
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	-- Autocompletion
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"saadparwaiz1/cmp_luasnip",
	"hrsh7th/cmp-nvim-lua",
	-- Snippets
	"L3MON4D3/LuaSnip",
	"rafamadriz/friendly-snippets",
}

return M
