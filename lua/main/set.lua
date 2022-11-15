vim.opt.guicursor = {
    "n-v:block",
    "i-c-ci-ve:ver25",
    "r-cr:hor20",
    "o:hor50",
    "i:blinkwait100-blinkoff300-blinkon250-Cursor/lCursor",
    "sm:block-blinkwait175-blinkoff150-blinkon175",
}

vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 1

vim.opt.errorbells = false

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.hlsearch = true
vim.opt.incsearch = true
-- Default to case insensitive search
vim.opt.ignorecase = true
-- Use case sensitive search if pattern includes uppercase letter
vim.opt.smartcase = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 999
vim.opt.signcolumn = "yes"

-- Give more space for displaying messages.
vim.opt.cmdheight = 1

-- Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
-- delays and poor user experience.
vim.opt.updatetime = 50

-- Set leader key
vim.g.mapleader = " "

-- Whitespace chars
vim.opt.listchars = { tab = '>-', trail = '~', space = '·', eol = '↵' }
