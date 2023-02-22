-- CSS
------

-- CSS specific keymappings
vim.keymap.set("n", "<leader>a", [[i@apply<esc>]])

-- Runs after each file save on BufWritePost event.
vim.api.nvim_create_autocmd("BufWritePost", {
	group = vim.api.nvim_create_augroup("FormatOnSave", { clear = true }),
	callback = function()
		-- Format the current file with formatter.nvim
		vim.cmd("FormatWrite")
	end,
})
