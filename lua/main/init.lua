-- Native vim settings
require("main.settings.set")
require("main.settings.remap")

-- Lazy plugin manager
require("main.plugins._lazy")

-- Startup functions
require("main.functions.colorscheme")

-- AutoCmds
require("main.autocmd.yank_highlight")
