local neotree = require('neo-tree')
neotree.setup({
    filesystem = {
        hijack_netrw_behavior = 'open_current'
    }
})

vim.keymap.set('n', '<leader>pv', '<cmd>Neotree current<CR>')
