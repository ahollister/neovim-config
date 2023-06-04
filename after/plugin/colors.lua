-- COLORS
---------

-- See which colorschemes are available
function PrintAvailableColors()
	print("Available colors:")
	print("rose-pine")
	print("catppuccin")
	print("zenbones")
	print("tokyobones")
	print("neobones")
	print("rosebones")
	print("seoulbones")
	print("duckbones")
	print("kanagawabones")
	print("nordbones")
	print("forestbones")
	print("zenburned")
	print("vimbones")
	print("meh")
end

-- Runs on start
function ManageColors(color)
	local default = "catppuccin"
	-- local default = "meh"

	-- Set color, default to rose-pine if NONE provided
	color = color or default
	vim.cmd.colorscheme(color)

	-- Fix Fidget color
	vim.api.nvim_set_hl(0, "FidgetTask", { bg = "NONE", fg = "#70788a" })
	vim.api.nvim_set_hl(0, "FidgetTitle", { bg = "NONE", fg = "#70788a" })

	-- Manage Transparency
	vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
	vim.api.nvim_set_hl(0, "FloatShadow", { bg = "NONE" })
	vim.api.nvim_set_hl(0, "FloatShadowThrough", { bg = "NONE" })
	vim.api.nvim_set_hl(0, "FloatBorder", { bg = "NONE", fg = "#70788a" })
	vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "NONE" })

	-- Fixes Wilder command view
	vim.api.nvim_set_hl(0, "dkoBgLight", { bg = "NONE" })

	-- Line numbers
	vim.api.nvim_set_hl(0, "LineNr", { bg = "NONE", fg = "#70788a" })
	vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "#000000", fg = "#bbbbbb" })
	vim.api.nvim_set_hl(0, "CursorLine", { bg = "#000000" })

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

-- Quick functions for fave color schemes
function Catppuccin()
	ManageColors("catppuccin")
end

function Meh()
	ManageColors("meh")
end
