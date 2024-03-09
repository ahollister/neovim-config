local M = {}

M.lazy = false

M.config = function()
	local harpoon = require("harpoon")
	harpoon:setup()

	vim.keymap.set("n", "<leader>ha", function()
		harpoon:list():append()
	end)
	vim.keymap.set("n", "<leader>hh", function()
		harpoon.ui:toggle_quick_menu(harpoon:list())
	end)
	vim.keymap.set("n", "<leader><Left>", function()
		harpoon:list():prev({ ui_nav_wrap = true })
	end)
	vim.keymap.set("n", "<leader><Right>", function()
		harpoon:list():next({ ui_nav_wrap = true })
	end)
	vim.keymap.set("n", "<leader>j", function()
		harpoon:list():next({ ui_nav_wrap = true })
	end)
	vim.keymap.set("n", "<leader>ht", function()
		local conf = require("telescope.config").values
		local file_paths = {}
		for _, item in ipairs(harpoon:list().items) do
			table.insert(file_paths, item.value)
		end

		require("telescope.pickers")
			.new({}, {
				prompt_title = "Harpoon",
				finder = require("telescope.finders").new_table({
					results = file_paths,
				}),
				previewer = conf.file_previewer({}),
				sorter = conf.generic_sorter({}),
			})
			:find()
	end, { desc = "Open harpoon window" })
end

return M
