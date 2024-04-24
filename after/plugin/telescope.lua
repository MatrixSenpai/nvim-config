local builtin = require('telescope.builtin')
local nui = require('nui-components')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<C-f>', builtin.git_files, {})
vim.keymap.set('n', '<leader>nx', '<cmd>Telescope nx actions<CR>')

local grep_renderer = nui.create_renderer({
    width = 60,
    height = 8,
})

local grep_signal = nui.create_signal({
    is_loading = false,
    text = ''
})

local grep_body = function()
    return nui.rows(
        nui.columns(
            { flex = 0 },
            nui.text_input({
                id = 'search-input',
                autofocus = true,
                flex = 1,
                max_lines = 1,
            }),
            nui.gap(1),
            nui.button({
                label = 'Search',
                padding = {
                    top = 1,
                },
                on_press = function()
                    grep_signal.is_loading = true

                    local input_ref = grep_renderer:get_component_by_id('search-input')
                    builtin.grep_string({ search = input_ref:get_current_value() })

                    grep_signal.is_loading = false
                    grep_renderer:close()
                end,
            }),
            nui.spinner({
                is_loading = grep_signal.is_loading,
                padding = { top = 1, left = 1 },
                hidden = grep_signal.is_loading:negate(),
            })
        ),
        nui.paragraph({
            lines = 'Grep search',
            align = 'center',
            is_focusable = false,
        })
    )
end

vim.keymap.set('n', '<leader>fs', function()
    grep_renderer:render(grep_body)
end)
