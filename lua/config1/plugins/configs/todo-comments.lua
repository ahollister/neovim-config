-- TODO: test
return {
	{
		"folke/todo-comments.nvim",
		optional = false,
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {},
		keys = {
			{
				"<leader>td",
				function()
					Snacks.picker.todo_comments()
				end,
				desc = "Todo",
			},
			{
				"<leader>tD",
				function()
					Snacks.picker.todo_comments({ keywords = { "TODO", "FIX", "FIXME" } })
				end,
				desc = "Todo/Fix/Fixme",
			},
		},
	},
}
