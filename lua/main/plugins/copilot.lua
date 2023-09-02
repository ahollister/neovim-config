local M = {}

M.keys = {
	{
		"<C-Space>",
		"copilot#Accept('<CR>')",
		{
			expr = true,
			silent = true,
		},
	},
}

return M
