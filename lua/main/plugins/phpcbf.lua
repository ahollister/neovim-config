local M = {}

M.config = function()
	-- Generic PHPCBF settings
	local settings = {
		auto_format = true,
		phpcbf_path = "/Users/adam/.composer/vendor/bin/phpcbf",
		phpcbf_ruleset = "PSR2",
		check_file_extension = true,
	}

	-- WP specific settings
	local wp = require("wp-utils.utils")

	if not wp then
		return
	end

	local is_wp = wp.is_wp()
	local wp_path = wp.get_wp_path()

	if is_wp then
		settings.auto_format = true
		settings.phpcbf_path = wp_path .. "/vendor/bin/phpcbf"
		settings.phpcbf_ruleset = nil
		settings.check_file_extension = true
	end

	require("phpcbf").setup(settings)
end

M.lazy = false

return M
