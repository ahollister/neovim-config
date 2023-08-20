local config = require("wp-config")
local utils = require("wp-utils")
local format = require("wp-format")
local builtin = {}

builtin.set_auto_format = function(value)
	config.set_auto_format(value)
end

builtin.get_auto_format = function()
	return config.get_auto_format()
end

builtin.is_wp = function()
	return utils.is_wp()
end

builtin.is_wp_subdirectory = function()
	return utils.is_wp_subdirectory()
end

builtin.is_wp_root = function()
	return utils.is_wp_root()
end

builtin.get_wp_path = function()
	return utils.get_wp_path()
end

builtin.get_phpcbf_path = function()
	return format.get_phpcbf_path()
end

builtin.format_phpcbf = function()
	return format.format_phpcbf()
end

builtin.auto_format_phpcbf = function()
	return format.auto_format_phpcbf()
end

return builtin
