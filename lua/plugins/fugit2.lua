return {
    'SuperBo/fugit2.nvim',
    opts = { width = 70, },
    dependencies = {
        'MunifTanjim/nui.nvim',
        'nvim-tree/nvim-web-devicons',
        'nvim-loa/plenary.nvim',
        {
            'chrisgrieser/nvim-tinygit',
            dependencies = { 'stevearc/dressing.nvim' },
        },
        {
            'sindrets/diffview.nvim',
            dependencies = { 'nvim-tree/nvim-web-devicons', },
            cmd = {
                'DiffviewFileHistory', 'DiffviewOpen', 'DiffviewToggleFiles', 'DiffviewFocusFiles', 'DiffviewRefresh',
            }
        },
    },
    cmd = { 'Fugit2', 'Fugit2Graph', },
    keys = {
        { '<leader>F', mode = 'n', '<cmd>Fugit2<cr>', }
    }
}
