local harpoon = require('harpoon')

harpoon:setup()

vim.keymap.set('n', '<leader>ha', function() harpoon:list():append() end)
vim.keymap.set('n', '<leader>hx', function() harpoon:list():next() end)
vim.keymap.set('n', '<leader>hz', function() harpoon:list():prev() end)
vim.keymap.set('n', '<leader>hl', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
