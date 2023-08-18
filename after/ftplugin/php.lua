-- PHP
------

-- Runs after each file save on BufWritePost event.
vim.api.nvim_create_autocmd("BufWritePost", {
	group = vim.api.nvim_create_augroup("FormatOnSave", { clear = true }),
	callback = function()
		local wp = require("utils-wp")
		if wp.auto_format then
			-- Format the current file.
			vim.cmd([[silent lua require("utils-wp").format_phpcbf()]])
		end
	end,
})
