local mason_config = require('mason-lspconfig')

require('mason').setup()

mason_config.setup({
    automatic_installation = true,
    ensure_installed = {
        'biome',
        'css_variables',
        'eslint',
        'harper_ls',
        'lua_ls',
        'rust_analyzer',
        'tailwindcss',
    },
})
mason_config.setup_handlers {
    function(server)
        vim.lsp.config(server, {})
        vim.lsp.enable(server)
    end
}

vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    callback = function(event)
        local opts = { buffer = event.buf }

        vim.keymap.set('n', '<leader>dd', vim.diagnostic.open_float, opts)
        vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    end,
})
