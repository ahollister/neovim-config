local M = {}

M.config = function()
	require("lspsaga").setup({
		lightbulb = {
			enable = false,
		},
		symbol_in_winbar = {
			enable = false,
			color_mode = false,
			folder_level = 2,
		},
		outline = {
			left_width = 0.7,
			win_width = 50,
			close_after_jump = true,
		},
	})
end

M.keys = {
	{
		"<leader>k",
		"<cmd>Lspsaga hover_doc<CR>",
		desc = "Hover docs",
	},
}

M.after = "nvim-lspconfig"

return M
