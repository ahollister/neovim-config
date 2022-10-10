local nnoremap = require("main.keymap").nnoremap
local inoremap = require("main.keymap").inoremap
local vnoremap = require("main.keymap").vnoremap

-- Generic
nnoremap("<leader>n", "<cmd>set invnumber invrelativenumber<CR>")
nnoremap("<leader>w", "<cmd>set list!<CR>")
nnoremap("<leader>s", "<cmd>w<CR>")
nnoremap("<leader>b", "<cmd>Ex<CR>")
-- Open terminal instance
nnoremap("<leader>tt", "<CMD>lua require(\"FTerm\").toggle()<CR>")
-- Move lines
nnoremap("<C-k>", "<cmd>m .-2<CR>==")
nnoremap("<C-j>", "<cmd>m .+1<CR>==")
inoremap("<C-k>", "<cmd>m .-2<CR>")
inoremap("<C-j>", "<cmd>m .+1<CR>")
-- Prettier
nnoremap("<leader>p", "<cmd>Prettier<CR>")
nnoremap("<leader>a", "<cmd>AerialToggle left<CR>")
-- Telescope 'find'
nnoremap("<leader>fs", "<cmd>Telescope find_files<CR>")
nnoremap("<leader>fg", "<cmd>Telescope live_grep<CR>")
nnoremap("<leader>fw", function() require("telescope.builtin").grep_string({search = vim.fn.expand("<cword>")}) end, silent)
-- Telescope Neoclip
nnoremap("<leader>v", "<cmd>Telescope neoclip<CR>")
-- COC
nnoremap("<leader>cd", "<CMD>Telescope coc definitions<CR>")
nnoremap("<leader>ct", "<CMD>Telescope coc type_definitions<CR>")
nnoremap("<leader>cr", "<CMD>Telescope coc references<CR>")
-- Treesitter
nnoremap("<leader>ts", "<CMD>lua require'telescope.builtin'.treesitter{}<CR>")
-- Harpoon
nnoremap("<leader>hs", function() require("harpoon.ui").toggle_quick_menu() end, silent)
nnoremap("<leader>ha", function() require("harpoon.mark").add_file() end, silent)
nnoremap("<leader>1", function() require("harpoon.ui").nav_file(1) end, silent)
nnoremap("<leader>2", function() require("harpoon.ui").nav_file(2) end, silent)
nnoremap("<leader>3", function() require("harpoon.ui").nav_file(3) end, silent)
nnoremap("<leader>4", function() require("harpoon.ui").nav_file(4) end, silent)
nnoremap("<leader><Right>", function() require("harpoon.ui").nav_next() end, silent)
nnoremap("<leader><Left>", function() require("harpoon.ui").nav_prev() end, silent)

-- Use K to show documentation in preview window.
function _G.show_docs()
    local cw = vim.fn.expand('<cword>')
    if vim.fn.index({'vim', 'help'}, vim.bo.filetype) >= 0 then
        vim.api.nvim_command('h ' .. cw)
    elseif vim.api.nvim_eval('coc#rpc#ready()') then
        vim.fn.CocActionAsync('doHover')
    else
        vim.api.nvim_command('!' .. vim.o.keywordprg .. ' ' .. cw)
    end
end
nnoremap("<leader>k", "<CMD>lua _G.show_docs()<CR>")

-- TAB for completion 
vim.cmd([[
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

]])
