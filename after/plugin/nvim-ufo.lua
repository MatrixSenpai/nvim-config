local ufo = require('ufo')

vim.opt.foldcolumn = '1'
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99
vim.opt.foldenable = true

vim.keymap.set('n', 'zR', ufo.closeAllFolds)
vim.keymap.set('n', 'zM', ufo.openAllFolds)

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.foldingRange = {
    dynamicRegistration = false,
    lineFoldingOnly = true,
}

ufo.setup({
    provider_selector = function(_, _, _)
        return { 'treesitter', 'indent' }
    end
})
