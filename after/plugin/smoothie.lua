-- Smooth scroll up and down with pageup and pagedown
vim.keymap.set("n", "<PageUp>", "<Cmd>call smoothie#upwards() <CR>")
vim.keymap.set("n", "<PageDown>", "<Cmd>call smoothie#downwards() <CR>")
