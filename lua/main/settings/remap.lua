-- VIM REMAPS
-------------

-- Move between splits
vim.keymap.set("n", "<leader>b", ":Ex<CR>")

-- Move between splits
vim.keymap.set("n", "<leader>w", "<C-w>")

-- Kill split
vim.keymap.set("n", "<leader>q", ":q<CR>")

-- Remap command mode to ; (: still works, default ; is meh)
vim.keymap.set("n", ";", ":")

-- Write buffer
vim.keymap.set("n", "<leader>s", ":w<CR>")

-- Toggle line numbers
vim.keymap.set("n", "<leader>n", ":set invnumber invrelativenumber<CR>")

-- Toggle whitespace
vim.keymap.set("n", "<leader>ws", ":set list!<CR>")

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

-- Run current line as shell command, replace with output
vim.keymap.set("n", "Q", "!!zsh<CR>")

-- Move lines up and down
vim.keymap.set("n", "<C-j>", ":move .+1<CR>==")
vim.keymap.set("n", "<C-k>", ":move .-2<CR>==")
vim.keymap.set("v", "<C-j>", ":move '>+1<CR>gv=gv")
vim.keymap.set("v", "<C-k>", ":move '<-2<CR>gv=gv")

-- Disable arrow keys
vim.keymap.set("n", "<Left>", ":echo 'Use h'<CR>")
vim.keymap.set("n", "<Right>", ":echo 'Use l'<CR>")
vim.keymap.set("n", "<Up>", ":echo 'Use k'<CR>")
vim.keymap.set("n", "<Down>", ":echo 'Use j'<CR>")
