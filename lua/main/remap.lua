-- VIM REMAPS
-------------

-- Toggle NETRW
vim.keymap.set("n", "<leader>b", ":Ex<CR>")

-- Write buffer
vim.keymap.set("n", "<leader>s", ":w<CR>")

-- Toggle line numbers
vim.keymap.set("n", "<leader>n", ":set invnumber invrelativenumber<CR>")

-- Toggle whitespace
vim.keymap.set("n", "<leader>w", ":set list!<CR>")

-- Toggle cmdheight
vim.keymap.set("n", "<leader>c", function()
	local cmdheight = vim.api.nvim_get_option("cmdheight")
	if cmdheight == 1 then
		vim.api.nvim_set_option("cmdheight", 0)
	else
		vim.api.nvim_set_option("cmdheight", 1)
	end
end)
