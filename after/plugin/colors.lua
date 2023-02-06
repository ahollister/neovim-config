-- COLORS
---------

require("rose-pine").setup({
    disable_background = true,
    disable_italics = true,
    dark_variant = 'moon',
})

function ManageColors(color)
	-- Set color with a default of rose-pine
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)
	-- Manage Transparency
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ManageColors()
