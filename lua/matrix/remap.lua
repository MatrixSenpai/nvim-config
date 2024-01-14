vim.g.mapleader = ','

-- open file explorer
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

-- move lines up and down, displacing existing content
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- paste and move highlighted text into void register
vim.keymap.set('x', '<leader>p', '"_dP')

-- tab editing
vim.keymap.set('n', '<leader>z', vim.cmd.tabprev)
vim.keymap.set('n', '<leader>x', vim.cmd.tabnext)
vim.keymap.set('n', '<leader>t', ':tabedit ')

-- buffer shortcuts
vim.keymap.set('n', '<leader>q', vim.cmd.wq)

-- window management shortcuts
vim.keymap.set('n', '<leader>wj', '<C-w>j')
vim.keymap.set('n', '<leader>wk', '<C-w>k')
vim.keymap.set('n', '<leader>wh', '<C-w>h')
vim.keymap.set('n', '<leader>wl', '<C-w>l')
vim.keymap.set('n', '<leader>wc', '<C-w>c')
