local config = require("wp-config")
local builtin = require("wp-builtin")

-- Create the WP command
vim.api.nvim_create_user_command("WP", function(opts)
	if opts.fargs[1] == "format_phpcbf" then
		builtin.format_phpcbf()
	elseif opts.fargs[1] == "auto_format_phpcbf" then
		builtin.auto_format_phpcbf()
	elseif opts.fargs[1] == "get_auto_format" then
		print(builtin.get_auto_format())
	elseif opts.fargs[1] == "disable_formatter" then
		builtin.set_auto_format(false)
	elseif opts.fargs[1] == "enable_formatter" then
		builtin.set_auto_format(true)
	elseif opts.fargs[1] == "toggle_formatter" then
		builtin.set_auto_format(not config.user_opts.auto_format)
	elseif opts.fargs[1] == "is_wp" then
		print(builtin.is_wp())
	elseif opts.fargs[1] == "is_wp_root" then
		print(builtin.is_wp_root())
	elseif opts.fargs[1] == "is_wp_subdirectory" then
		print(builtin.is_wp_subdirectory())
	elseif opts.fargs[1] == "get_wp_path" then
		print(builtin.get_wp_path())
	elseif opts.fargs[1] == "get_phpcbf_path" then
		print(builtin.get_phpcbf_path())
	end
end, {
	-- Expect one argument
	nargs = 1,
	-- Autocomplete command arguments
	complete = function(ArgLead)
		local commands = {
			"format_phpcbf",
			"auto_format_phpcbf",
			"get_auto_format",
			"enable_formatter",
			"disable_formatter",
			"toggle_formatter",
			"is_wp",
			"get_wp_path",
			"get_phpcbf_path",
			"is_wp_root",
			"is_wp_subdirectory",
		}

		local results = {}
		for _, v in pairs(commands) do
			if v:match(ArgLead) then
				table.insert(results, v)
			end
		end

		return results
	end,
})
