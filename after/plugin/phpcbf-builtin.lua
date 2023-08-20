local config = require("phpcbf-config")
local utils = require("phpcbf-utils")
local format = require("phpcbf-format")

local builtin = {}

builtin.format_phpcbf = function()
	return format.format_phpcbf()
end

builtin.auto_format_phpcbf = function()
	return format.auto_format_phpcbf()
end

builtin.get_phpcbf_path = function()
	return utils.get_phpcbf_path()
end

builtin.get_phpcbf_ruleset = function()
	return utils.get_phpcbf_ruleset()
end

builtin.set_auto_format = function(value)
	return config.set_auto_format(value)
end

builtin.get_auto_format = function()
	return utils.get_auto_format()
end

return builtin
