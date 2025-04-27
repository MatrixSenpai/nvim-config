vim.g.mapleader = ','
vim.g.localleader = ','

-- move lines up and down by displacing content
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- paste, but move text into void register
vim.keymap.set('x', '<leader>p', '"_dP')

-- swap windows
vim.keymap.set({ 'n', 'v' }, '<C-h>', ':wincmd h<CR>', { silent = true })
vim.keymap.set({ 'n', 'v' }, '<C-j>', ':wincmd j<CR>', { silent = true })
vim.keymap.set({ 'n', 'v' }, '<C-k>', ':wincmd k<CR>', { silent = true })
vim.keymap.set({ 'n', 'v' }, '<C-l>', ':wincmd l<CR>', { silent = true })

-- split window
vim.keymap.set('n', '<leader>sv', ':vs', { silent = true })
vim.keymap.set('n', '<leader>sh', ':sp', { silent = true })
