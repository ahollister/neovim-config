local ui = require("harpoon.ui")
local mark = require("harpoon.mark")

local M = {}

M.keys = {
	{ "<leader>ha", mark.add_file, desc = "Add file to harpoon" },
	{ "<leader><Right>", ui.nav_next, desc = "Harpoon Next File" },
	{ "<leader><Left>", ui.nav_prev, desc = "Harpoon Previous File" },
	{ "<leader>j", ui.nav_next, desc = "Harpoon Next File" },
}

return M
