require("lsp-format").setup {}

local nnoremap = require("main.keymap").nnoremap

-- Definitions
nnoremap("<leader>k", vim.lsp.buf.hover)
nnoremap("<leader>gd", vim.lsp.buf.definition)
nnoremap("<leader>e", vim.diagnostic.open_float)
nnoremap("<leader>[e", vim.diagnostic.goto_prev)
nnoremap("<leader>]e", vim.diagnostic.goto_next)

-- Telescope
local builtin = require('telescope.builtin')
nnoremap("<leader>fs", builtin.find_files)
nnoremap("<leader>fg", builtin.live_grep)
nnoremap("<leader>fr", builtin.lsp_references)
nnoremap("<leader>fd", builtin.lsp_definitions)
nnoremap("<leader>a", builtin.lsp_document_symbols)

-- Format
nnoremap("<leader>p", vim.lsp.buf.formatting)

-- Git
nnoremap("<leader>gc", builtin.git_commits)
nnoremap("<leader>gs", builtin.git_status)
nnoremap("<leader>gst", builtin.git_stash)
nnoremap("<leader>gb", builtin.git_branches)
nnoremap("<leader>fb", builtin.buffers)

-- Telescope find word under cursor
nnoremap("<leader>fw", function() require("telescope.builtin").grep_string({ search = vim.fn.expand("<cword>") }) end)

-- cssls
require 'lspconfig'.cssls.setup {
    settings = {
        css = {
            validate = false,
            lint = {
                unknownAtRules = 'ignore',
            },
        },
    },
}
require 'lspconfig'.cssmodules_ls.setup {}
require 'lspconfig'.tailwindcss.setup {}
-- js, ts etc.
require 'lspconfig'.eslint.setup {}
-- PHP
require 'lspconfig'.intelephense.setup {}
-- require 'lspconfig'.tsserver.setup {
--     on_attach = require("lsp-format").on_attach
-- }
-- lua
require 'lspconfig'.sumneko_lua.setup {
    on_attach = require("lsp-format").on_attach,
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim', 'silent' }
            }
        }
    }
}
