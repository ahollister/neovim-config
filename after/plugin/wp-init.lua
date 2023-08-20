-- phpcbf_path: string, set the path to phpcbf executable manually
-- auto_format: boolean, enable/disable auto formatting
-- find_wp_phpcbf: boolean, find phpcbf executable automatically based on WP install path
-- wp_relative_phpcbf_path: string, set the relative path to phpcbf executable from WP install path

local config = require("wp-config")
local wp = {}
local settings = {}

wp.setup = function(opts)
	opts = opts or {}
	settings.phpcbf_path = opts.phpcbf_path or nil
	settings.auto_format = opts.auto_format or false
	settings.find_wp_phpcbf = opts.find_wp_phpcbf or false
	settings.wp_relative_phpcbf_path = opts.wp_relative_phpcbf_path or "/vendor/bin/phpcbf"
	config.set_user_opts(settings)
end

return wp
