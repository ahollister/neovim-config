vim.keymap.set("n", "<leader>foq", function()
	return "<cmd>ObsidianQuickSwitch<CR>"
end, { noremap = false, expr = true })

vim.keymap.set("n", "<leader>fos", function()
	return "<cmd>ObsidianSearch<CR>"
end, { noremap = false, expr = true })
