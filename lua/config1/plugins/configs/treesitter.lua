return {
	"nvim-treesitter/nvim-treesitter",
	config = function()
		require("nvim-treesitter.configs").setup({
			incremental_selection = {
				enable = true,
				keymaps = {
					node_incremental = "v",
					node_decremental = "V",
				},
			},
			ensure_installed = {
				"javascript",
				"typescript",
				"php",
				"html",
				"css",
				"lua",
				"vim",
				"markdown",
				"markdown_inline",
			},
			sync_install = false,
			indent = { enable = true },
			auto_install = true,
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
		})
	end,
}
