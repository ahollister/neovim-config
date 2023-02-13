-- FORMATTER - WIP
------------

-- Keymap to format
vim.keymap.set("n", "<leader>ff", "<cmd>Format<CR>", { noremap = true, silent = true })

-- Utilities for creating configurations
local util = require("formatter.util")

-- filetype config for prettier
local prettier_config = {
	function()
		return {
			exe = "prettier",
			args = { "--stdin-filepath", vim.api.nvim_buf_get_name(0) },
			stdin = true,
		}
	end,
}

-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
require("formatter").setup({
	-- Enable or disable logging
	logging = true,
	-- Set the log level
	log_level = vim.log.levels.WARN,
	-- All formatter configurations are opt-in
	filetype = {
		javascript = prettier_config,
		javascriptreact = prettier_config,
		json = prettier_config,
		["jsonc"] = prettier_config,
		["json5"] = prettier_config,
		["json-stringify"] = prettier_config,
		["json-to-graphql-query"] = prettier_config,
		["json-to-graphql"] = prettier_config,
		["json-to-graphql-mutation"] = prettier_config,
		["json-to-graphql-variables"] = prettier_config,
		["json-to-graphql-variables-mutation"] = prettier_config,
		["json-to-graphql-variables-query"] = prettier_config,

		-- Formatter configurations for filetype "lua" go here
		-- and will be executed in order
		lua = {
			-- "formatter.filetypes.lua" defines default configurations for the
			-- "lua" filetype
			require("formatter.filetypes.lua").stylua,

			-- You can also define your own configuration
			function()
				-- Supports conditional formatting
				if util.get_current_buffer_file_name() == "special.lua" then
					return nil
				end

				-- Full specification of configurations is down below and in Vim help
				-- files
				return {
					exe = "stylua",
					args = {
						"--search-parent-directories",
						"--stdin-filepath",
						util.escape_path(util.get_current_buffer_file_path()),
						"--",
						"-",
					},
					stdin = true,
				}
			end,
		},

		-- php = {
		-- 	function()
		-- 		return {
		-- 			exe = "composer run lint:phpcbf",
		-- 			stdin = true,
		-- 			ignore_exitcode = true,
		-- 		}
		-- 	end,
		-- },

		-- Use the special "*" filetype for defining formatter configurations on
		-- any filetype
		["*"] = {
			-- "formatter.filetypes.any" defines default configurations for any
			-- filetype
			require("formatter.filetypes.any").remove_trailing_whitespace,
		},
	},
})
