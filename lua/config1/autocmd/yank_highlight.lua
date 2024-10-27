-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("ahollister-highlight-yank", { clear = true }),
	callback = function()
		--  `:help vim.highlight.on_yank()`
		vim.highlight.on_yank({
			timeout = 300,
		})
	end,
})
