-- set block cursor instead of line
vim.opt.guicursor = ""

-- use line numbers and relative line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- sane tab defaults
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- be smart about indents
vim.opt.smartindent = true

-- no line wrapping
vim.opt.wrap = false

-- we are using undotree so configure vim for it
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- use incremental search but don't highlight
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- sane defaults for end of file scrolling
vim.opt.scrolloff = 8

-- use terminal colors
vim.opt.termguicolors = true
