local M = {}

M.config = function()
	local telescope = require("telescope")

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
	})
end

M.keys = function()
	local builtin = require("telescope.builtin")
	return {
		{ "<leader>ff", builtin.find_files, desc = "Find Files" },
		{ "<leader>fs", builtin.live_grep, desc = "Live Grep" },
		{ "<leader>fg", builtin.git_files, desc = "Git Files" },
		{ "<leader>fh", builtin.help_tags, desc = "Help tags" },
		{ "<leader>fo", builtin.oldfiles, desc = "Recent files" },
		{ "<leader>ht", ":Telescope harpoon marks<CR>", desc = "Harpoon marks" },
		{ "<leader>gs", ":Telescope git_status<CR>", desc = "Git Status" },
	}
end

M.tag = "0.1.2"

M.dependencies = {
	"nvim-lua/plenary.nvim",
	"theprimeagen/harpoon",
}

M.lazy = false

return M
