-- NEOCLIP 
----------

-- Load neoclip functions into Telescope
require("telescope").load_extension("neoclip")

-- Keybindings
vim.keymap.set("n", "<leader>v", "<cmd>Telescope neoclip<CR>")
