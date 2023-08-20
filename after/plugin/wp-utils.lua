local state = require("wp-state")
local utils = {}

-- Position of wp-content, wp-includes, wp-admin relative to working directory
utils.wp_content_pos = string.find(state.cwd, "/wp-content", 1, true)
utils.wp_includes_pos = string.find(state.cwd, "/wp-includes", 1, true)
utils.wp_admin_pos = string.find(state.cwd, "/wp-admin", 1, true)

-- Does the working directory contain wp-content, wp-includes, wp-admin?
utils.cwd_has_wp_content = string.find(state.cwd_content, "wp-content", 1, true)
utils.cwd_has_wp_includes = string.find(state.cwd_content, "wp-includes", 1, true)
utils.cwd_has_wp_admin = string.find(state.cwd_content, "wp-admin", 1, true)

-- Is this a WordPress environment?
function utils.is_wp()
	if utils.is_wp_subdirectory() or utils.is_wp_root() then
		return true
	end
	return false
end

-- Is the current directory a WordPress subdirectory?
function utils.is_wp_subdirectory()
	if utils.wp_content_pos or utils.wp_includes_pos or utils.wp_admin_pos then
		return true
	end
	return false
end

-- Does the current directory contain a wp-content directory?
function utils.is_wp_root()
	if utils.cwd_has_wp_content or utils.cwd_has_wp_includes or utils.cwd_has_wp_admin then
		return true
	end
	return false
end

-- Get the path to the root of the WordPress installation
function utils.get_wp_path()
	-- Not in a WP environment
	if not utils.is_wp_root() and not utils.is_wp_subdirectory() then
		return nil
	end
	-- We're at root of WP
	if utils.is_wp_root() then
		return state.cwd
	end
	-- We're in a subdirectory of WP
	local pos = utils.wp_content_pos or utils.wp_includes_pos or utils.wp_admin_pos
	local wp_path
	if pos then
		-- -1 to remove trailing slash
		wp_path = string.sub(state.cwd, 1, pos - 1)
		print("WordPress installation found at " .. wp_path)
	end
	return wp_path
end

return utils
