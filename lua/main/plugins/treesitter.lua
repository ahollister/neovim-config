local M = {}

M.config = function()
	require("nvim-treesitter.configs").setup({
		ensure_installed = { "javascript", "typescript", "php", "lua", "vim", "markdown" },
		sync_install = false,
		auto_install = true,
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = false,
		},
	})
end

M.build = "TSUpdate"

return M
