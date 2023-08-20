-- phpcbf_path: string, set the path to phpcbf executable manually
-- auto_format: boolean, enable/disable auto formatting

local config = require("phpcbf-config")
local phpcbf = {}
local user_opts = {}

phpcbf.setup = function(opts)
	opts = opts or {}
	user_opts.phpcbf_path = opts.phpcbf_path or nil
	user_opts.phpcbf_ruleset = opts.phpcbf_ruleset or nil
	user_opts.auto_format = opts.auto_format or false
	config.set_user_opts(user_opts)
end

return phpcbf
