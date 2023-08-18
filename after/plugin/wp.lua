local wp = require("utils-wp")

vim.api.nvim_create_user_command("WP", function(opts)
	if opts.fargs[1] == "format_phpcbf" then
		print("Formatting...")
		wp.format_phpcbf()
	elseif opts.fargs[1] == "disable_formatter" then
		print("Disabling formatter...")
		wp.set_auto_format("disable")
	elseif opts.fargs[1] == "enable_formatter" then
		print("Enabling formatter...")
		wp.set_auto_format("enable")
	elseif opts.fargs[1] == "toggle_formatter" then
		print("Toggling formatter...")
		wp.set_auto_format("toggle")
	end
end, {
	nargs = 1,
	complete = function()
		return { "format_phpcbf", "enable_formatter", "disable_formatter", "toggle_formatter" }
	end,
})
