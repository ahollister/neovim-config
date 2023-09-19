local function has_value(tab, val)
	for index, value in ipairs(tab) do
		if value == val then
			return true
		end
	end

	return false
end

local M = {}

M.default_color = "meh"

-- List of colorschemes to cycle
M.colors = {
	"meh",
	"catppuccin-mocha",
	"rose-pine",
	"spaceduck",
	"tokyobones",
	"rosebones",
}

-- colorschemes where I don't want to fix_colors
M.colors_backgrounds = {
	"catppuccin-mocha",
	"spaceduck",
	"rose-pine",
	"tokyobones",
}

M.set_default = function()
	vim.cmd.colorscheme(M.default_color)
	M.fix_colors()
end

M.set_keymaps = function()
	vim.keymap.set(
		"n",
		"<leader>cc",
		":lua require('main.functions.colorscheme').cycle_colors()<CR>",
		{ silent = true }
	)
	vim.keymap.set("n", "<leader>cd", ":lua require('main.functions.colorscheme').set_default()<CR>", { silent = true })
end

M.fix_colors = function()
	-- Get current color scheme
	local colorscheme = vim.api.nvim_exec("colorscheme", true)
	if has_value(M.colors_backgrounds, colorscheme) then
		return
	end

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

M.cycle_colors = function()
	-- Get current color scheme
	local colorscheme = vim.api.nvim_exec("colorscheme", true)

	local new_color = nil
	for index, current_color in pairs(M.colors) do
		if current_color == colorscheme then
			local is_end = M.colors[index + 1] == nil
			new_color = is_end and M.colors[1] or M.colors[index + 1]
		end
	end

	-- If previous colorscheme was not in M.colors, set the first one
	if not new_color then
		new_color = M.colors[1]
	end

	print("New colorscheme = " .. new_color)
	vim.api.nvim_exec("colorscheme " .. new_color, true)
	M.fix_colors()
end

M.print_colors = function()
	local message = ""
	for _, color in pairs(M.colors) do
		message = message .. color .. "\n"
	end
	local notify = require("notify")

	if notify then
		require("notify")(message, "INFO", { title = "Available colors" })
	else
		print(message)
	end
end

M.setup = function()
	M.set_default()
	M.fix_colors()
	M.set_keymaps()
end

-- Runs on nvim start
M.setup()

return M
