local M = {}

M.config = function()
	-- Test to see if file exists at given path
	local function file_exists(path)
		local file = io.open(path, "r")
		if file then
			file:close()
			return true
		else
			return false
		end
	end

	-- WP specific utils
	local wp = require("wp-utils.utils")

	if not wp then
		return
	end

	local is_wp = wp.is_wp()
	local wp_path = wp.get_wp_path()

	-- Try and find the PHPCBF executable path.
	local function find_phpcbf_path()
		local cwd = vim.fn.getcwd()

		-- First try current working directory + vendor.
		local cwd_vendor = cwd .. "/vendor/bin/phpcbf"
		if file_exists(cwd_vendor) then
			return cwd_vendor
		end

		-- If this is a WP codebase
		if is_wp then
			local base_wp_vendor = wp_path .. "/vendor/bin/phpcbf"
			if file_exists(base_wp_vendor) then
				return base_wp_vendor
			end

			local wp_content_vendor = wp_path .. "/wp-content/vendor/bin/phpcbf"
			if file_exists(wp_content_vendor) then
				return wp_content_vendor
			end
		end

		-- We didn't find it in CWD, wp root, or wp-content. Give up.
		return nil
	end

	local global_phpcbf_path = "/Users/adam/.composer/vendor/bin/phpcbf"
	local global_phpcbf_ruleset = "PSR2"

	-- PHPCBF settings
	local settings = {
		auto_format = true,
		phpcbf_path = find_phpcbf_path() or global_phpcbf_path,
		phpcbf_ruleset = global_phpcbf_ruleset,
		check_file_extension = true,
	}

	if is_wp and settings.phpcbf_path ~= global_phpcbf_path then
		settings.phpcbf_ruleset = nil
	end

	require("phpcbf").setup(settings)
end

M.lazy = false

return M
