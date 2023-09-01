local wp = require("wp-utils.utils")
local is_wp = wp.is_wp()
local wp_path = wp.get_wp_path()

-- Generic PHPCBF settings
local settings = {
	auto_format = true,
	phpcbf_path = "/Users/adam/.composer/vendor/bin/phpcbf",
	phpcbf_ruleset = "PSR2",
	check_file_extension = true,
}

-- WP specific settings
if is_wp then
	settings.auto_format = true
	settings.phpcbf_path = wp_path .. "/vendor/bin/phpcbf"
	settings.phpcbf_ruleset = nil
	settings.check_file_extension = true
end

require("phpcbf").setup(settings)
