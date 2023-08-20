local builtin = require("phpcbf-builtin")

-- create the PHPCBF command
vim.api.nvim_create_user_command("PHPCBF", function(opts)
	if opts.fargs[1] == "format_phpcbf" then
		builtin.format_phpcbf()
	elseif opts.fargs[1] == "get_phpcbf_path" then
		print(builtin.get_phpcbf_path())
	elseif opts.fargs[1] == "get_phpcbf_ruleset" then
		print(builtin.get_phpcbf_ruleset())
	elseif opts.fargs[1] == "enable_auto_format" then
		print(builtin.set_auto_format(true))
	elseif opts.fargs[1] == "disable_auto_format" then
		print(builtin.set_auto_format(false))
	elseif opts.fargs[1] == "toggle_auto_format" then
		print(builtin.set_auto_format(not builtin.get_auto_format()))
	end
end, {
	-- expect one argument
	nargs = 1,
	-- autocomplete command arguments
	complete = function(arglead)
		local commands = {
			"format_phpcbf",
			"get_phpcbf_path",
			"get_phpcbf_ruleset",
			"enable_auto_format",
			"disable_auto_format",
			"toggle_auto_format",
		}

		local results = {}
		for _, v in pairs(commands) do
			if v:match(arglead) then
				table.insert(results, v)
			end
		end

		return results
	end,
})
