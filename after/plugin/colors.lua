-- COLORS
---------

-- Runs on start
function ManageColors(color)
	-- Set color with a default of rose-pine
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)
	-- Manage Transparency
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

	-- vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none", fg = "none" })
	vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "none", fg = "none" })

	-- vim.api.nvim_set_hl(0, "TelescopePromptBorder", { bg = "none", fg = "none" })
	-- vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { bg = "none", fg = "#f00f00" })

	-- TelescopePromptBorder = { bg = colors.surface0, fg = colors.surface0 },
	-- TelescopeResultsBorder = { bg = colors.mantle, fg = colors.mantle },
	-- TelescopePreviewBorder = { bg = colors.mantle, fg = colors.mantle },
end

ManageColors()
