-- TYPESCRIPT REACT
-------------------

-- Tabs widths
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

-- JavaScript specific keymappings
vim.keymap.set("n", "<leader>lw", [[viwdi<SPACE>console.log(<c-r>")<esc>]])
vim.keymap.set("v", "<leader>;", [[di<SPACE>console.log(<c-r>")<esc>]])

-- Runs after each file save on BufWritePost event.
vim.api.nvim_create_autocmd("BufWritePost", {
	group = vim.api.nvim_create_augroup("FormatOnSave", { clear = true }),
	callback = function()
		-- Format the current file with formatter.nvim
		vim.cmd("FormatWrite")
	end,
})
