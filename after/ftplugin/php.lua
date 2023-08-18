-- PHP
------

-- Re-load file - useful when running phpcbf and getting a report printed into buffer.
-- vim.keymap.set("n", "<leader>r", ":e!<CR>")

-- Runs after each file save on BufWritePost event.
vim.api.nvim_create_autocmd("BufWritePost", {
	group = vim.api.nvim_create_augroup("FormatOnSave", { clear = true }),
	callback = function()
		-- Format the current file.
		vim.cmd([[silent lua require("utils-wp").format_phpcbf()]])
	end,
})
