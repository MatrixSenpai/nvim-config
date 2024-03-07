return {
    'xbase-lab/xbase',
    dependencies = {
        'neovim/nvim-lspconfig'
    },
    build = 'make install',
    config = function()
        require('xbase').setup({
            simctl = {
                iOS = {
                    "iPhone 15 Pro"
                }
            }
        })
    end
}
