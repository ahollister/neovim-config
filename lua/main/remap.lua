local nnoremap = require("main.keymap").nnoremap
local inoremap = require("main.keymap").inoremap
local vnoremap = require("main.keymap").vnoremap

-- Generic
nnoremap("<leader>r", "<cmd>source $MYVIMRC<CR>", silent)
nnoremap("<leader>n", "<cmd>set invnumber invrelativenumber<CR>", silent)
nnoremap("<leader>w", "<cmd>set list!<CR>", silent)
nnoremap("<leader>s", "<cmd>w<CR>", silent)
nnoremap("<leader>b", "<cmd>Ex<CR>", silent)
nnoremap("<leader>R", "\"_diwP<CR>", silent)
nnoremap("<leader>r", "\"_diwp<CR>", silent)
-- Open and close nvimtree file explorer based on current state
nnoremap("<leader>b", "<cmd>:NvimTreeToggle <CR>")
nnoremap("<leader>ff", "<cmd>:NvimTreeFindFileToggle <CR>")
-- Move lines
nnoremap("<C-k>", "<cmd>m .-2<CR>==", silent)
nnoremap("<C-j>", "<cmd>m .+1<CR>==", silent)
inoremap("<C-k>", "<cmd>m .-2<CR>")
inoremap("<C-j>", "<cmd>m .+1<CR>")
-- So I can move around in insert (Alt + hjkl)
inoremap("˚", "<Up>")
inoremap("∆", "<Down>")
inoremap("˙", "<Left>")
inoremap("¬", "<Right>")
-- Telescope Neoclip
nnoremap("<leader>v", "<cmd>Telescope neoclip<CR>", silent)
-- Treesitter
nnoremap("<leader>ts", "<CMD>lua require'telescope.builtin'.treesitter{}<CR>", silent)
-- Harpoon
nnoremap("<leader>hs", function() require("harpoon.ui").toggle_quick_menu() end, silent)
nnoremap("<leader>ha", function() require("harpoon.mark").add_file() end, silent)
nnoremap("<leader>1", function() require("harpoon.ui").nav_file(1) end, silent)
nnoremap("<leader>2", function() require("harpoon.ui").nav_file(2) end, silent)
nnoremap("<leader>3", function() require("harpoon.ui").nav_file(3) end, silent)
nnoremap("<leader>4", function() require("harpoon.ui").nav_file(4) end, silent)
nnoremap("<leader><Right>", function() require("harpoon.ui").nav_next() end, silent)
nnoremap("<leader><Left>", function() require("harpoon.ui").nav_prev() end, silent)
nnoremap("<leader><Up>", function() require("harpoon.term").gotoTerminal(1) end, silent)
-- GitGutter
nnoremap("<leader>ggt", "<cmd>GitGutterToggle<CR>", silent)
nnoremap("<leader>ggp", "<cmd>GitGutterPreviewHunk<CR>", silent)
nnoremap("<leader>ggl", "<cmd>GitGutterLineNrHighlightsToggle<CR>", silent)

-- Toggle Transparency
nnoremap("<leader>tr", "<cmd>TransparentToggle<CR>", silent)
