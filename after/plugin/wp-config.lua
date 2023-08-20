local config = {}

config.set_user_opts = function(opts)
	config.user_opts = opts
end

config.set_auto_format = function(value)
	config.user_opts.auto_format = value
	print("Auto format set to: " .. tostring(config.get_auto_format()))
end

config.get_auto_format = function()
	return config.user_opts.auto_format
end

return config
