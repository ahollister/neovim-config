-- LSP CONFIG
-------------

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

	vim.keymap.set("n", "<leader>k", function()
		vim.lsp.buf.hover()
	end, opts)

	vim.keymap.set("n", "<leader>vws", function()
		vim.lsp.buf.workspace_symbol()
	end, opts)

	vim.keymap.set("n", "<leader>vd", function()
		vim.diagnostic.open_float()
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

	vim.keymap.set("i", "<C-h>", function()
		vim.lsp.buf.signature_help()
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
