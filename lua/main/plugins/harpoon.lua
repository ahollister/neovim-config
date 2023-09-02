local M = {}

M.keys = {
	{ "<leader>ha", require("harpoon.mark").add_file, desc = "Add file to harpoon" },
	{ "<leader>hs", require("harpoon.ui").toggle_quick_menu, desc = "Toggle Harpoon Menu" },
	{ "<leader><Right>", require("harpoon.ui").nav_next, desc = "Harpoon Next File" },
	{ "<leader><Left>", require("harpoon.ui").nav_prev, desc = "Harpoon Previous File" },
	{ "<leader>j", require("harpoon.ui").nav_next, desc = "Harpoon Next File" },
}

return M
