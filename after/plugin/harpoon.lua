-- HARPOON
----------

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

-- Keybindings
vim.keymap.set("n", "<leader>ha", mark.add_file)
vim.keymap.set("n", "<leader>hs", ui.toggle_quick_menu)
vim.keymap.set("n", "<leader><Up>", ui.toggle_quick_menu)
vim.keymap.set("n", "<leader><Right>", ui.nav_next)
vim.keymap.set("n", "<leader><Left>", ui.nav_prev)
vim.keymap.set("n", "<leader>j", ui.nav_next)
