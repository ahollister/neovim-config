local wk = require("which-key")

wk.register({
	q = "Quit",
	s = "Save",
	n = "Toggle Line Number",
	u = "Toggle UndoTree",
	j = "Next Harpoon file",
	["<Left>"] = "Previous Harpoon file",
	["<Right>"] = "Next Harpoon file",
	["<Up>"] = "Show Harpoon",
	f = {
		name = "Telescope finder",
		s = { "Files" },
		f = { "Recently Opened Files" },
		g = { "Grep Search" },
		o = {
			name = "Obsidian",
			q = { "Quick Switch" },
			s = { "Search" },
		},
		d = { "LSP Definition" },
		r = { "LSP References" },
		h = { "Vim :help" },
	},
	h = {
		name = "Harpoon",
		s = { "Show Harpoon" },
		a = { "Add file to Harpoon" },
	},
}, { prefix = "<leader>" })
