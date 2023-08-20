local utils = require("phpcbf-utils")
local config = require("phpcbf-config")

local format = {}

-- Format the current file with phpcbf
function format.format_phpcbf()
	local phpcbf_path = utils.get_phpcbf_path()
	local file_path = vim.fn.expand("%:p")

	-- If we have phpcbf path
	if phpcbf_path then
		-- Show message
		print("formatting file ...")
		local format_command = { phpcbf_path }
		-- Add ruleset if set
		if config.user_opts.phpcbf_ruleset then
			table.insert(format_command, "--standard=" .. config.user_opts.phpcbf_ruleset)
		end
		-- Add file path
		table.insert(format_command, file_path)
		-- Format file
		vim.fn.system(format_command)
		-- Reload file
		vim.cmd("e")
		return
	end

	-- No WP or phpcbf
	print("phpcbf executable not found")
end

-- Wrapper for format_phpcbf() that checks if auto_format is enabled first
function format.auto_format_phpcbf()
	if not config.user_opts.auto_format then
		print("auto_format is disabled")
		return
	end
	format.format_phpcbf()
end

return format
