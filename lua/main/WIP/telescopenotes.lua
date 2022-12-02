local M = {}
local telescope = require('telescope')

function M.grep_notes()
    local opts = {}
    opts.search_dirs = {
        '~/Dev/AmericanEagle/MECUM/_notes/'
    }
    opts.prompt_prefix = ' > '
    opts.prompt_title = 'Search notes'
    opts.shorten_path = true
    telescope.builtin.live_grep(opts)
end

return M
