
local vnoremap = require("main.keymap").vnoremap
local nnoremap = require("main.keymap").nnoremap

-- wrap selection in console log
vnoremap("<leader>lw", [[di<SPACE>console.log(<c-r>")<esc>]])
nnoremap("<leader>lw", [[viwdi<SPACE>console.log(<c-r>")<esc>]])
-- wrap selection in json stringify
vnoremap("<leader>sw", [[di<SPACE>JSON.stringify(<c-r>")<esc>]])
-- wrap selection in single quotes
vnoremap("<leader>'w", [[di<SPACE>'<c-r>"'<esc>]])
-- wrap selection in double quotes
vnoremap("<leader>\"w", [[di<SPACE>"<c-r>""<esc>]])
