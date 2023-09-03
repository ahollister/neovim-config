local M = {}

M.config = function()
	local dap = require("dap")

	dap.adapters.php = {
		type = "executable",
		command = "node",
		args = { "/Users/adam/vscode-php-debug/out/phpDebug.js" },
	}

	dap.configurations.php = {
		{
			type = "php",
			request = "launch",
			name = "Listen for Xdebug",
			port = 9000,
		},
	}
end

return M
