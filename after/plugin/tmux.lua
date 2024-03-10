local tmux = require('nvim-tmux-navigation')

tmux.setup({
    keybindings = {
        left = '<Alt-h>',
        down = '<Alt-j>',
        up = '<Alt-k>',
        right = '<Alt-l>',
    },
})
