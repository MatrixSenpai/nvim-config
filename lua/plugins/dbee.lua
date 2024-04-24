return {
    'kndndrj/nvim-dbee',
    requires = {
        'MunifTanjim/nui.nvim',
    },
    build = function()
        require('dbee').install()
    end,
    config = function()
        require('dbee').setup()
    end,
}
