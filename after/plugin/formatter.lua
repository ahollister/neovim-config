-- FORMATTER
------------

-- Keymap to format
vim.keymap.set("n", "<leader>ff", "<cmd>Format<CR>", { noremap = true, silent = true })

-- Utilities for creating configurations
local util = require("formatter.util")

-- LUA formatter
----------------
local lua_config = {
	-- "formatter.filetypes.lua" defines default configurations for the "lua" filetype
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
}

-- Prettier formatter
---------------------
local prettier_config = {
	function()
		return {
			exe = "prettier",
			args = {
				"--config-precedence",
				"prefer-file",
				"--print-width",
				vim.bo.textwidth,
				"--stdin-filepath",
				vim.fn.shellescape(vim.api.nvim_buf_get_name(0)),
			},
			stdin = true,
		}
	end,
}

local php_config = {
	function()
		return {
			exe = "composer run lint:phpcbf",
			args = {
				util.escape_path(util.get_current_buffer_file_path()),
			},
			stdin = true,
			ignore_exitcode = true,
		}
	end,
}

local all_config = {
	-- "formatter.filetypes.any" defines default configurations for any filetype
	require("formatter.filetypes.any").remove_trailing_whitespace,
}

-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
require("formatter").setup({
	-- Enable or disable logging
	logging = true,
	-- Set the log level
	log_level = vim.log.levels.WARN,
	-- Formatter config by filetype
	filetype = {
		-- PRETTIER
		css = prettier_config,
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

		-- LUA
		lua = lua_config,

		-- PHP
		php = php_config,

		-- All
		["*"] = all_config,
	},
})
