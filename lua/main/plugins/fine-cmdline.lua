local M = {}

M.config = function()
	require("fine-cmdline").setup({
		cmdline = {
			enable_keymaps = true,
			smart_history = true,
			prompt = " ",
		},
		popup = {
			padding = { 0, 0, 0, 0 },
			position = {
				row = "50%",
				col = "50%",
			},
			size = {
				width = 70,
				height = 50,
			},
			border = {
				style = "single",
				text = {
					top = "Enter a command:",
					top_align = "left",
				},
			},
			win_options = {
				winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
			},
		},
	})
end

M.dependencies = {
	{ "MunifTanjim/nui.nvim" },
}

M.keys = {
	{ ";", "<cmd>FineCmdline<CR>", { noremap = true } },
}

return M
