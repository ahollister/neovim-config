local M = {}

-- Position of wp-content, wp-includes, wp-admin relative to working directory
local dir = vim.api.nvim_exec("pwd", true)
M.wp_content_pos = string.find(dir, "/wp-content", 1, true)
M.wp_includes_pos = string.find(dir, "/wp-includes", 1, true)
M.wp_admin_pos = string.find(dir, "/wp-admin", 1, true)
-- Does the working directory contain wp-content, wp-includes, wp-admin?
local dir_content = vim.api.nvim_exec("!ls $PWD", true)
M.dir_has_wp_content = string.find(dir_content, "wp-content", 1, true)
M.dir_has_wp_includes = string.find(dir_content, "wp-includes", 1, true)
M.dir_has_wp_admin = string.find(dir_content, "wp-admin", 1, true)

M.auto_format = true

-- Enable, disable or toggle auto_format
function M.set_auto_format(arg)
	if arg == "toggle" then
		M.auto_format = not M.auto_format
	elseif arg == "enable" then
		M.auto_format = true
	elseif arg == "disable" then
		M.auto_format = false
	end
end

-- Is this a WordPress environment?
function M.is_wp()
	if M.is_wp_subdirectory() or M.is_wp_root() then
		return true
	end
	return false
end

-- Is the current directory a WordPress subdirectory?
function M.is_wp_subdirectory()
	if M.wp_content_pos or M.wp_includes_pos or M.wp_admin_pos then
		return true
	end
	return false
end

-- Does the current directory contain a wp-content directory?
function M.is_wp_root()
	if M.dir_has_wp_content or M.dir_has_wp_includes or M.dir_has_wp_admin then
		return true
	end
	return false
end

-- Get the path to the root of the WordPress installation
function M.get_wp_path()
	-- Not in a WP environment
	if not M.is_wp_root() and not M.is_wp_subdirectory() then
		return nil
	end
	-- We're at root of WP
	if M.is_wp_root() then
		return dir
	end
	-- We're in a subdirectory of WP
	local pos = M.wp_content_pos or M.wp_includes_pos or M.wp_admin_pos
	local wp_path
	if pos then
		-- -1 to remove trailing slash
		wp_path = string.sub(dir, 1, pos - 1)
		print("WordPress installation found at " .. wp_path)
	end
	return wp_path
end

-- Get the path to the local phpcbf executable
function M.get_phpcbf_path()
	-- Not WP
	if not M.is_wp() then
		return nil
	end
	-- WP root
	if M.is_wp_root() then
		return dir .. "/vendor/bin/phpcbf"
	end
	-- WP subdirectory
	return M.get_wp_path() .. "/vendor/bin/phpcbf"
end

-- Format the current file with phpcbf
function M.format_phpcbf()
	local phpcbf_path = M.get_phpcbf_path()
	local file_path = vim.fn.expand("%:p")

	-- Check this is a WP project and phpcbf is installed locally
	if M.is_wp() and phpcbf_path then
		-- Show message
		print("formatting file with project phpcbf ...")
		-- Format file
		vim.fn.system({ phpcbf_path, file_path })
		-- Reload file
		vim.cmd("e")
		return
	end
	-- No WP or phpcbf
	print("wp path or local phpcbf executable not found")
end

return M
