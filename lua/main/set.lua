-- VIM SETTINGS
---------------

--Netrw
vim.g.netrw_liststyle = 1
vim.g.netrw_maxfilenamelen = 60

-- Line numbers
vim.opt.nu = true

-- Relative line numbers
vim.opt.relativenumber = true
vim.opt.cursorline = true

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
vim.opt.autoindent = true

-- Don't line wrap
vim.opt.wrap = false

-- Use system clipboard
vim.opt.clipboard = "unnamedplus"

-- complete the longest common match, tab the results to fully complete them
vim.opt.wildmode = "longest:full,full"

-- Highlight all search matches, use incremental highlight
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Default to case insensitive search
vim.opt.ignorecase = true

-- Use case sensitive search if pattern includes uppercase letter
vim.opt.smartcase = true

-- Better colors
vim.opt.termguicolors = true

-- Allow hidden unsaved buffers
vim.opt.hidden = true

-- Attempts to keep cursor in center of screen
vim.opt.scrolloff = 999

-- Keep a left hand column for error icons etc.
vim.opt.signcolumn = "yes"

-- Give more space for displaying messages.
vim.opt.cmdheight = 1

-- Persistent undo
vim.opt.undofile = true

-- Improve sidescroll
vim.opt.sidescroll = 1

-- Make fast!
vim.opt.updatetime = 50

-- Set leader key
vim.g.mapleader = " "

-- Whitespace chars
vim.opt.listchars = { tab = ">-", trail = "~", space = "·", eol = "↵" }
vim.opt.whichwrap = "<,>,h,l,[,]"
