local M = {}

M.requires = { "mfussenegger/nvim-dap" }

M.config = function()
	require("dapui").setup()
end

return M
