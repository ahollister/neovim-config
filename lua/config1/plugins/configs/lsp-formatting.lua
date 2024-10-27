return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.shfmt,
				null_ls.builtins.diagnostics.stylelint,
				null_ls.builtins.formatting.stylelint,
				null_ls.builtins.formatting.prettierd.with({
					filetypes = {
						"javascript",
						"javascriptreact",
						"typescript",
						"typescriptreact",
						"vue",
						"html",
						"json",
						"jsonc",
						"yaml",
						"toml",
						"markdown",
						"markdown.mdx",
						"graphql",
						"handlebars",
						"svelte",
						"astro",
						"htmlangular",
					},
				}),
			},
		})

		-- Runs after each file save on BufWritePost event.
		vim.api.nvim_create_autocmd("BufWritePost", {
			group = vim.api.nvim_create_augroup("FormatOnSave", { clear = true }),
			callback = function()
				-- For PHP use PHPCBF plugin command.
				if vim.tbl_contains({ "php" }, vim.o.filetype) then
					-- Use custom plugin for formatting with phpcbf from vendor files.
					vim.cmd([[silent PHPCBF auto_format_phpcbf]])
					-- DEBUG
					--vim.cmd([[PHPCBF auto_format_phpcbf]])
					return
				end

				-- If there's LSP format function available for current buffer, run it.
				vim.lsp.buf.format()
			end,
		})
	end,
}
