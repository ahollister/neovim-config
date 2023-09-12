local M = {}

M.keys = {
	{ "<leader>hh", "<cmd> lua require('harpoon.ui').toggle_quick_menu()<CR>", desc = "Quick menu" },
	{ "<leader>ha", "<cmd> lua require('harpoon.mark').add_file()<CR>", desc = "Add file to harpoon" },
	{ "<leader><Right>", "<cmd> lua require('harpoon.ui').nav_next()<CR>", desc = "Harpoon Next File" },
	{ "<leader><Left>", "<cmd> lua require('harpoon.ui').nav_prev()<CR>", desc = "Harpoon Previous File" },
	{ "<leader>j", "<cmd> lua require('harpoon.ui').nav_next()<CR>", desc = "Harpoon Next File" },
}

return M
