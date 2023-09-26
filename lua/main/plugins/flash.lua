local M = {}

M.keys = {
	{
		"s",
		mode = { "n", "o", "x" },
		function()
			require("flash").jump({
				search = {
					mode = function(str)
						return "\\<" .. str
					end,
				},
			})
		end,
		desc = "Flash",
	},
	{
		"r",
		mode = "o",
		function()
			require("flash").remote({
				search = {
					mode = function(str)
						return "\\<" .. str
					end,
				},
			})
		end,
		desc = "Remote Flash",
	},
	{
		"R",
		mode = { "n", "o", "x" },
		function()
			require("flash").treesitter_search()
		end,
		desc = "Treesitter Search",
	},
}

M.event = "VeryLazy"

return M
