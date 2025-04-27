local tree = require('neo-tree.command')

vim.keymap.set('n', '<leader>pv', function() tree.execute({ action = 'focus', position = 'left', toggle = 'true' }) end, {})
