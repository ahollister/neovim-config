-- JAVASCRIPT
-------------

-- JavaScript specific keymappings
vim.keymap.set("n", "<leader>lw", [[viwdi<SPACE>console.log(<c-r>")<esc>]])
vim.keymap.set("v", "<leader>;", [[di<SPACE>console.log(<c-r>")<esc>]])

-- Runs after each file save on BufWritePost event.
vim.api.nvim_create_autocmd("BufWritePost", {
	group = vim.api.nvim_create_augroup("FormatOnSave", { clear = true }),
	callback = function(event)
		-- Format the current file with formatter.nvim
		if require("lspconfig.util").get_active_client_by_name(event.buf, "eslint") then
			vim.cmd("EslintFixAll")
		end
	end,
})
