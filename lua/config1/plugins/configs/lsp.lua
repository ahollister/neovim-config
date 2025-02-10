return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "ts_ls", "intelephense" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			vim.keymap.set("n", "<leader>k", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
			vim.keymap.set("n", "[d", vim.diagnostic.goto_next, {})
			vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, {})
			vim.diagnostic.config({ virtual_text = true })

			-- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")

			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.ts_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.intelephense.setup({
				capabilities = capabilities,
			})
			lspconfig.stylelint_lsp.setup({
				filetypes = { "css", "scss" },
				settings = {
					stylelintplus = {
						autoFixOnSave = true,
						ignoreFiles = { "**/*.js" },
					},
				},
			})

			local get_intelephense_license = function()
				local f = assert(io.open(os.getenv("HOME") .. "/nvim/licences/intelephense/licence.txt", "rb"))
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

			lspconfig.intelephense.setup({
				settings = {
					intelephense = intelephense_settings,
				},
			})
		end,
	},
}
