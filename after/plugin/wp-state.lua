local state = {}

state.cwd = vim.api.nvim_exec("pwd", true)
state.cwd_content = vim.api.nvim_exec("!ls $PWD", true)

return state
