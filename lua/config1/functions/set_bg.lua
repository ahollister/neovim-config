vim.api.nvim_create_user_command(
	"SetBufferBackground",
	function(opts)
		local bg_color = opts.args
		vim.cmd("hi MyBufferBackground guibg=" .. bg_color)
		vim.cmd("setlocal winhighlight=Normal:MyBufferBackground")
	end,
	{ nargs = 1 } -- Command expects one argument (the hex color)
)
