-- VIM REMAPS
-------------

-- Toggle NETRW
vim.keymap.set("n", "<leader>b", ":Ex<CR>")

-- Remap command mode to ; (: still works, default ; is meh)
vim.keymap.set("n", ";", ":")

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

-- Paste replace visual selection without copying it
vim.keymap.set("v", "p", '"_dP')

-- Move lines up and down
vim.keymap.set("i", "<C-j>", "<Esc>:move .+1<CR>==gi")
vim.keymap.set("i", "<C-k>", "<Esc>:move .-2<CR>==gi")
vim.keymap.set("n", "<C-j>", ":move .+1<CR>==")
vim.keymap.set("n", "<C-k>", ":move .-2<CR>==")
vim.keymap.set("v", "<C-j>", ":move '>+1<CR>gv=gv")
vim.keymap.set("v", "<C-k>", ":move '<-2<CR>gv=gv")
