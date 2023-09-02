local M = {}

M.config = function()
	require("smartcolumn").setup({
		disabled_filetypes = {
			"help",
			"xhtml",
			"text",
			"markdown",
			"netrw",
			"typescriptreact",
			"php",
			"sh",
			"tmux",
			"lua",
			"zsh",
		},
	})
end

return M
