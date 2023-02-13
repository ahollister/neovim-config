-- TELESCOPE
------------

local builtin = require("telescope.builtin")

-- Find file name in project
vim.keymap.set("n", "<leader>fs", builtin.find_files, {})
-- Find file name in git project
vim.keymap.set("n", "<leader>gs", builtin.git_files, {})
-- String search across project (RIPGrep)
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
-- Use Telescope to view help documentation
vim.keymap.set("n", "<leader>h", builtin.help_tags, {})
-- View recently opened files
vim.keymap.set("n", "<leader>fo", builtin.oldfiles, {})
