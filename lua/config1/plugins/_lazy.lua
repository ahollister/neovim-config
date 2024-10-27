local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
---@diagnostic disable-next-line: undefined-field
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Source plugin configs.
require("lazy").setup("config1.plugins.configs",
	{
		change_detection = { enabled = false },
		dev = {
			path = "/Users/adam/Dev/nvim/plugins/",
			patterns = {}, -- For example {"folke"}
			fallback = false, -- Fallback to git when local plugin doesn't exist
		}
	}
)
