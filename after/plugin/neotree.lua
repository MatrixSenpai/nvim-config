local neotree = require('neo-tree')
neotree.setup({
    filesystem = {
        visible = true,
        hijack_netrw_behavior = 'open_current'
    }
})

vim.keymap.set('n', '<leader>pv', '<cmd>Neotree current<CR>')
vim.keymap.set('n', '<leader>pl', '<cmd>Neotree<CR>')
