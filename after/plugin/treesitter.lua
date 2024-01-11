local configs = require('nvim-treesitter.configs')
configs.setup({
	ensure_installed = { 'vimdoc', 'rust', 'toml', 'swift', 'lua', 'vim' },
	indent = { enable = true },
	auto_install = true,
	highlight = { enable = true },
})
