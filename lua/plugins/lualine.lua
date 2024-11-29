return {
    'nvim-lualine/lualine.nvim',
    dependencies = {
        'nvim-tree/nvim-web-devicons'
    },
    config = function ()
        local function diff_source()
            local gitsigns = vim.b.gitsigns_status_dict
            if gitsigns then
              return {
                added = gitsigns.added,
                modified = gitsigns.changed,
                removed = gitsigns.removed
              }
            end
        end

        require('lualine').setup({
            options = {
                theme = 'dracula'
            },
            sections = {
                lualine_b = {
                    {'b:gitsigns_head', icon = ''},
                    {'diff', source = diff_source},
                },
            }
        })
    end
}
