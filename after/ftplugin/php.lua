-- PHP
------

-- Runs after each file save on BufWritePost event.
vim.api.nvim_create_autocmd("BufWritePost", {
	group = vim.api.nvim_create_augroup("FormatOnSave", { clear = true }),
	callback = function()
		-- Format the current file.
		vim.cmd([[silent PHPCBF auto_format_phpcbf]])
	end,
})
