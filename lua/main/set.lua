-- VIM SETTINGS
---------------

-- Line numbers
vim.opt.nu = true

-- Relative line numbers
vim.opt.relativenumber = true

-- Width of numbers
vim.opt.numberwidth = 1

-- Disable error bells
vim.opt.errorbells = false

-- Tabs widths
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

-- Use spaces for indents
vim.opt.expandtab = true

-- Smart auto indenting
vim.opt.smartindent = true

-- Don't line wrap
vim.opt.wrap = false

-- Don't highlight all search matches, but use incremental highlight
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Default to case insensitive search
vim.opt.ignorecase = true

-- Use case sensitive search if pattern includes uppercase letter
vim.opt.smartcase = true

-- Better colors
vim.opt.termguicolors = true

-- Attempts to keep cursor in center of screen
vim.opt.scrolloff = 999

-- Keep a left hand column for error icons etc.
vim.opt.signcolumn = "yes"

-- Give more space for displaying messages.
vim.opt.cmdheight = 1

-- Make fast!
vim.opt.updatetime = 50

-- Set leader key
vim.g.mapleader = " "

-- Whitespace chars
vim.opt.listchars = { tab = ">-", trail = "~", space = "·", eol = "↵" }
vim.opt.whichwrap = "<,>,h,l,[,]"


