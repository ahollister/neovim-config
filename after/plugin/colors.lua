-- COLORS
---------

-- Runs on start
function ManageColors(color)
	-- AVAILABLE COLORS
	-------------------
	-- local default = "rose-pine"
	-- local default = "catppuccin"
	-- local default = "zenbones"
	-- local default = "tokyobones"
	-- local default = "neobones"
	-- local default = "rosebones"
	-- local default = "seoulbones"
	-- local default = "duckbones"
	-- local default = "kanagawabones"
	-- local default = "nordbones"
	-- local default = "forestbones"
	-- local default = "zenburned"
	-- local default = "vimbones"
	local default = "meh"

	-- Set color, default to rose-pine if NONE provided
	color = color or default
	vim.cmd.colorscheme(color)

	-- Fix Fidget color
	vim.api.nvim_set_hl(0, "FidgetTask", { bg = "NONE", fg = "#70788a" })
	vim.api.nvim_set_hl(0, "FidgetTitle", { bg = "NONE", fg = "#70788a" })

	-- Manage Transparency
	vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
	vim.api.nvim_set_hl(0, "FloatBorder", { bg = "NONE", fg = "#70788a" })
	vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "NONE" })

	-- Fixes Wilder command view
	vim.api.nvim_set_hl(0, "dkoBgLight", { bg = "NONE" })

	-- Line numbers
	vim.api.nvim_set_hl(0, "LineNr", { bg = "NONE", fg = "#70788a" })
	vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "NONE", fg = "#bbbbbb" })
	vim.api.nvim_set_hl(0, "CursorLine", { bg = "NONE" })

	-- Normal (command output text)
	vim.api.nvim_set_hl(0, "Normal", { fg = "#ffffff" })

	-- UI vertsplit
	vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#888888" })

	-- GitGutter
	vim.api.nvim_set_hl(0, "GitGutterAdd", { bg = "NONE", fg = "#88bd53" })
	vim.api.nvim_set_hl(0, "DiffChange", { bg = "NONE", fg = "#ad8445" })
	vim.api.nvim_set_hl(0, "DiffChangeDelete", { bg = "NONE", fg = "#ad8445" })
	vim.api.nvim_set_hl(0, "DiffDelete", { bg = "NONE", fg = "#bd5c5c" })
end

ManageColors()
