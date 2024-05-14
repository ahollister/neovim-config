local function has_value(tab, val)
	for index, value in ipairs(tab) do
		if value == val then
			return true
		end
	end

	return false
end

local M = {}

M.default_color = "tokyonight"

-- List of colorschemes to cycle
M.colors = {
	"tokyonight",
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
	M.fix_colors("NONE")
end

M.set_keymaps = function()
	vim.keymap.set(
		"n",
		"<leader>cc",
		":lua require('main.functions.colorscheme').cycle_colors()<CR>",
		{ silent = true }
	)
	vim.keymap.set("n", "<leader>cd", ":lua require('main.functions.colorscheme').set_default()<CR>", { silent = true })
	vim.keymap.set(
		"n",
		"<leader>cb",
		":lua require('main.functions.colorscheme').cycle_backgrounds()<CR>",
		{ silent = true }
	)
	vim.keymap.set(
		"n",
		"<leader>ct",
		":lua require('main.functions.colorscheme').toggle_transparency()<CR>",
		{ silent = true }
	)
end

M.dump = function(o)
	if type(o) == "table" then
		local s = "{ "
		for k, v in pairs(o) do
			if type(k) ~= "number" then
				k = '"' .. k .. '"'
			end
			s = s .. "[" .. k .. "] = " .. M.dump(v) .. ","
		end
		return s .. "} "
	else
		return tostring(o)
	end
end

M.backgrounds = {
	"#181a21",
	"#141414",
	"#000000",
	"NONE",
}

M.cycle_backgrounds = function()
	local hl = vim.api.nvim_get_hl(0, {
		name = "Normal",
	})

	local current_bg = hl["bg"]
	if current_bg then
		current_bg = string.format("#%06x", hl["bg"])
	end

	local new_bg = nil
	for index, value in pairs(M.backgrounds) do
		if value == current_bg then
			local is_end = M.backgrounds[index + 1] == nil
			new_bg = is_end and M.backgrounds[1] or M.backgrounds[index + 1]
		end
	end

	if not new_bg then
		new_bg = M.backgrounds[1]
	end

	M.fix_colors(new_bg)
	vim.api.nvim_set_hl(0, "Normal", { bg = new_bg })
	print("New background: " .. new_bg)
end

M.toggle_transparency = function()
	local hl = vim.api.nvim_get_hl(0, {
		name = "Normal",
	})

	local bg = hl["bg"]

	if bg == nil then
		M.fix_colors(M.backgrounds[1])
		vim.api.nvim_set_hl(0, "Normal", { bg = M.backgrounds[1] })
	else
		M.fix_colors("NONE")
		vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
	end
end

M.fix_colors = function(background)
	-- Get current color scheme
	if background == "NONE" then
		local colorscheme = vim.api.nvim_exec("colorscheme", true)
		if has_value(M.colors_backgrounds, colorscheme) then
			return
		end
	end

	-- Fix Fidget color
	vim.api.nvim_set_hl(0, "FidgetTask", { bg = background, fg = "#70788a" })
	vim.api.nvim_set_hl(0, "FidgetTitle", { bg = background, fg = "#70788a" })
	-- Manage Transparency
	vim.api.nvim_set_hl(0, "Normal", { bg = background })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = background })
	vim.api.nvim_set_hl(0, "FloatShadow", { bg = background })
	vim.api.nvim_set_hl(0, "FloatShadowThrough", { bg = background })
	vim.api.nvim_set_hl(0, "FloatBorder", { bg = background, fg = "#70788a" })
	vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = background })
	-- Fixes Wilder command view
	vim.api.nvim_set_hl(0, "dkoBgLight", { bg = background })
	-- Line numbers
	vim.api.nvim_set_hl(0, "LineNr", { bg = background, fg = "#70788a" })
	vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "#000000", fg = "#bbbbbb" })
	vim.api.nvim_set_hl(0, "CursorLine", { bg = "#000001" })
	-- Normal (command output text)
	vim.api.nvim_set_hl(0, "Normal", { fg = "#ffffff" })
	-- UI vertsplit
	vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#888888" })
	-- GitGutter
	vim.api.nvim_set_hl(0, "GitGutterAdd", { bg = background, fg = "#88bd53" })
	vim.api.nvim_set_hl(0, "DiffChange", { bg = background, fg = "#ad8445" })
	vim.api.nvim_set_hl(0, "DiffChangeDelete", { bg = background, fg = "#ad8445" })
	vim.api.nvim_set_hl(0, "DiffDelete", { bg = background, fg = "#bd5c5c" })
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
	M.fix_colors("NONE")
	M.set_keymaps()
end

-- Runs on nvim start
M.setup()

return M
