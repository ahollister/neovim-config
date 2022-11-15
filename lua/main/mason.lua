require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "sumneko_lua", "astro", "cssls", "eslint", "graphql", "html",
        "jsonls", "marksman",
        "intelephense", "svelte", "tailwindcss", "vimls" },
    automatic_installation = true,
})
