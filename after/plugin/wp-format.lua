local state = require("wp-state")
local utils = require("wp-utils")
local config = require("wp-config")
local format = {}

-- Enable, disable or toggle auto_format
function format.set_auto_format(value)
	config.set_auto_format(value)
end

-- Get the path to the local phpcbf executable
function format.get_phpcbf_path()
	-- Path is set by user config
	if config.user_opts.phpcbf_path then
		return config.user_opts.phpcbf_path
	end

	-- User has chosen to not find phpcbf automatically in WP
	if not config.user_opts.find_wp_phpcbf then
		print(
			"phpcbf path not set, please set it manually or enable find_wp_phpcbf to find phpcbf as part of composer managed WP install"
		)
		return
	end

	-- Not WP
	if not utils.is_wp() then
		print("not a WP project, no phpcbf path set")
		return nil
	end

	-- WP root
	if utils.is_wp_root() then
		return state.cwd .. config.user_opts.wp_relative_phpcbf_path
	end

	-- WP subdirectory
	return utils.get_wp_path() .. config.user_opts.wp_relative_phpcbf_path
end

-- Format the current file with phpcbf
function format.format_phpcbf()
	local phpcbf_path = format.get_phpcbf_path()
	local file_path = vim.fn.expand("%:p")

	-- If we have phpcbf path
	if phpcbf_path then
		-- Show message
		print("formatting file with project phpcbf ...")
		-- Format file
		vim.fn.system({ phpcbf_path, file_path })
		-- Reload file
		vim.cmd("e")
		return
	end

	-- No WP or phpcbf
	print("wp path or local phpcbf executable not found")
end

-- Wrapper for format.format_phpcbf() that checks if auto_format is enabled first
function format.auto_format_phpcbf()
	if not config.user_opts.auto_format then
		print("auto_format is disabled")
		return
	end
	format.format_phpcbf()
end

return format
