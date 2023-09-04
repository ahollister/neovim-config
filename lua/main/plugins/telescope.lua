local telescope = require("telescope")
local builtin = require("telescope.builtin")

local M = {}

M.config = function()
	telescope.setup({
		pickers = {
			find_files = {
				find_command = {
					"rg",
					"--files",
					"--hidden",
					"--glob",
					"!.git",
					"--glob",
					"!node_modules",
				},
			},
		},
		telescope.load_extension("harpoon"),
		telescope.load_extension("notify"),
	})
end

M.keys = {
	{ "<leader>ff", builtin.find_files, desc = "Find Files" },
	{ "<leader>fs", builtin.live_grep, desc = "Live Grep" },
	{ "<leader>fg", builtin.git_files, desc = "Git Files" },
	{ "<leader>fh", builtin.help_tags, desc = "Help tags" },
	{ "<leader>fo", builtin.oldfiles, desc = "Recent files" },
	{ "<leader>hs", ":Telescope harpoon marks<CR>", desc = "Harpoon marks" },
	{ "<leader>gs", ":Telescope git_status<CR>", desc = "Git Status" },
}

M.tag = "0.1.2"

M.dependencies = {
	"nvim-lua/plenary.nvim",
	"theprimeagen/harpoon",
}

M.lazy = false

return M
