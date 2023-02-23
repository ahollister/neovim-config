-- COLORS
---------

-- Runs on start
function ManageColors(color)
	-- Set color, default to rose-pine if none provided
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

	-- Manage Transparency
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
	-- Line numbers
	vim.api.nvim_set_hl(0, "LineNr", { bg = "NONE", fg = "#555555" })
	vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "NONE", fg = "#ffffff" })
	vim.api.nvim_set_hl(0, "CursorLine", { bg = "NONE" })
	-- Normal (command output text)
	vim.api.nvim_set_hl(0, "Normal", { fg = "#ffffff" })
	-- UI vertsplit
	vim.api.nvim_set_hl(0, "VertSplit", { fg = "#888888" })

	-- vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none", fg = "none" })
	-- vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "none", fg = "none" })
	-- vim.api.nvim_set_hl(0, "TelescopePromptBorder", { bg = "none", fg = "none" })
	-- vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { bg = "none", fg = "#f00f00" })
end

ManageColors()
