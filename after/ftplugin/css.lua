vim.api.nvim_create_autocmd('BufEnter', {
    pattern = { '*.module.css' },
    group = group,
    command = 'setlocal wrap'
})

