local configs = require('nvim-treesitter.configs')

configs.setup({
    auto_install = true,
    ensure_installed = {
        'lua', 'rust', 'typescript', 'vim', 'vimdoc',
    },
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = true,
    },
    indent = { enable = true },
})
