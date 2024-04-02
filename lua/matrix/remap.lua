vim.g.mapleader = ','

-- move lines up and down, displacing existing content
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- paste and move highlighted text into void register
vim.keymap.set('x', '<leader>p', '"_dP')

-- tab editing
vim.keymap.set('n', '<leader>z', vim.cmd.tabprev)
vim.keymap.set('n', '<leader>x', vim.cmd.tabnext)
vim.keymap.set('n', '<leader>t', ':tabedit ')

-- find and replace inside block
vim.keymap.set('n', '<leader>fb', ':\'<,\'>s/')
-- find marked todos
vim.keymap.set('n', '<leader>ft', function()
  require('telescope.builtin').grep_string({ search = '(mason)' })
end)

-- buffer shortcuts
vim.keymap.set('n', '<leader>q', vim.cmd.wq)

-- window management shortcuts
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>', { silent = true })
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>', { silent = true })
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>', { silent = true })
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', { silent = true })
