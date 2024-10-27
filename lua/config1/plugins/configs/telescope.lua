return {
	{
		"nvim-telescope/telescope.nvim",
		config = function()
			local telescope = require("telescope")
			telescope.setup({
				extensions = {
					fzf = {
						fuzzy = true, -- false will only do exact matching
						override_generic_sorter = true, -- override the generic sorter
						override_file_sorter = true, -- override the file sorter
						case_mode = "smart_case", -- or "ignore_case" or "respect_case"
						-- the default case_mode is "smart_case"
					},
				},
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
				telescope.load_extension("fzf"),
			})
		end,
		keys = function()
			local builtin = require("telescope.builtin")
			return {
				{ "<leader>ff", builtin.find_files, desc = "Find Files" },
				{ "<leader>fs", builtin.live_grep, desc = "Live Grep" },
				{ "<leader>fg", builtin.git_files, desc = "Git Files" },
				{ "<leader>fh", builtin.help_tags, desc = "Help tags" },
				{ "<leader>fo", builtin.oldfiles, desc = "Recent files" },
				{ "<leader>gs", ":Telescope git_status<CR>", desc = "Git Status" },
			}
		end,
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		tag = "0.1.2",
		lazy = false
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function ()
			require("telescope").setup {
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown {}
					}
				}
			}
			require("telescope").load_extension("ui-select")
		end
	},
	{
		"nvim-telescope/telescope-fzf-native.nvim",
		build = "make"
	}
}
