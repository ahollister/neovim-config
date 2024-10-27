-- Native vim settings
require("config1.settings.opts")
require("config1.settings.keymaps")
-- Lazy plugin manager
require("config1.plugins._lazy")
-- Startup functions
require("config1.functions.colorscheme").setup()
-- AutoCmds
require("config1.autocmd.yank_highlight")
