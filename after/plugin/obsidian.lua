vim.keymap.set("n", "<CR>", function()
	if require("obsidian").util.cursor_on_markdown_link() then
		return "<cmd>ObsidianFollowLink<CR>"
	else
		return "<CR>"
	end
end, { noremap = false, expr = true })

vim.keymap.set("n", "<leader>foq", function()
	return "<cmd>ObsidianQuickSwitch<CR>"
end, { noremap = false, expr = true })

vim.keymap.set("n", "<leader>fos", function()
	return "<cmd>ObsidianSearch<CR>"
end, { noremap = false, expr = true })
