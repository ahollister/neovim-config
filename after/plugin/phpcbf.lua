local is_wp = require("wp-utils.utils").is_wp()
local wp_path = require("wp-utils.utils").get_wp_path()

-- Generic PHPCBF settings
local settings = {
	auto_format = true,
	phpcbf_path = "/Users/adam/.composer/vendor/bin/phpcbf",
	phpcbf_ruleset = "PSR2",
}

-- WP specific settings
if is_wp then
	settings.auto_format = true
	settings.phpcbf_path = wp_path .. "/vendor/bin/phpcbf"
	settings.phpcbf_ruleset = nil
end

require("phpcbf").setup(settings)
