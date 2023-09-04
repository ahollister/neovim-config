local M = {}

M.config = function()
	require("obsidian").setup({
		dir = "~/wikis/work",
		-- dir = "~/wikis/personal",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope.nvim",
		},
		mappings = {
			["<CR>"] = require("obsidian.mapping").gf_passthrough(),
		},
		daily_notes = {
			folder = "notes/dailies",
			date_format = "%Y-%m-%d",
		},
		follow_url_func = function(url)
			vim.fn.jobstart({ "open", url }) -- Mac OS
		end,
	})
end

M.keys = {
	{
		"<leader>foq",
		"<cmd>ObsidianQuickSwitch<CR>",
		desc = "Obsidian Quick switch",
		noremap = false,
		expr = true,
	},
	{
		"<leader>fos",
		"<cmd>ObsidianSearch<CR>",
		desc = "Obsidian Search",
		noremap = false,
		expr = true,
	},
}

M.lazy = false

return M
