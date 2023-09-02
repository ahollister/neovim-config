local M = {}

M.config = function()
	require("lualine").setup({
		options = {
			icons_enabled = true,
			theme = function()
				local colors = {
					darkgray = "#16161d",
					gray = "#70788a",
					innerbg = "NONE",
					outerbg = "NONE",
					normal = "#141414",
					insert = "#ffffff",
					visual = "#ffffff",
					replace = "#ffffff",
					command = "#ffffff",
				}
				return {
					inactive = {
						a = { fg = colors.gray, bg = colors.outerbg, gui = "bold" },
						b = { fg = colors.gray, bg = colors.outerbg },
						c = { fg = colors.gray, bg = colors.innerbg },
					},
					visual = {
						a = { fg = colors.darkgray, bg = colors.visual, gui = "bold" },
						b = { fg = colors.gray, bg = colors.outerbg },
						c = { fg = colors.gray, bg = colors.innerbg },
					},
					replace = {
						a = { fg = colors.replace, bg = colors.outerbg, gui = "bold" },
						b = { fg = colors.gray, bg = colors.outerbg },
						c = { fg = colors.gray, bg = colors.innerbg },
					},
					normal = {
						a = { fg = colors.gray, bg = colors.outerbg, gui = "bold" },
						b = { fg = colors.gray, bg = colors.outerbg },
						c = { fg = colors.gray, bg = colors.innerbg },
					},
					insert = {
						a = { fg = colors.insert, bg = colors.outerbg, gui = "bold" },
						b = { fg = colors.gray, bg = colors.outerbg },
						c = { fg = colors.gray, bg = colors.innerbg },
					},
					command = {
						a = { fg = colors.command, bg = colors.outerbg, gui = "bold" },
						b = { fg = colors.gray, bg = colors.outerbg },
						c = { fg = colors.gray, bg = colors.innerbg },
					},
				}
			end,
			-- component_separators = { left = "", right = "" },
			-- section_separators = { left = "", right = "" },
			component_separators = { left = "|", right = "|" },
			section_separators = { left = "", right = "" },
			disabled_filetypes = {
				statusline = {},
				winbar = {},
			},
			ignore_focus = {},
			always_divide_middle = true,
			globalstatus = false,
			refresh = {
				statusline = 1000,
				tabline = 1000,
				winbar = 1000,
			},
		},
		sections = {
			lualine_a = { "mode" },
			lualine_b = { "branch", "diff", "diagnostics" },
			lualine_c = { { "filename", path = 1 } },
			lualine_x = { "encoding", "fileformat", "filetype" },
			lualine_y = { "progress" },
			lualine_z = { "location" },
		},
		inactive_sections = {
			lualine_a = {},
			lualine_b = {},
			lualine_c = { "filename" },
			lualine_x = { "location" },
			lualine_y = {},
			lualine_z = {},
		},
		tabline = {},
		winbar = {},
		inactive_winbar = {},
		extensions = {},
	})
end

M.requires = {
	"kyazdani42/nvim-web-devicons",
	opt = true,
}

return M
