return {
    {
        'akinsho/toggleterm.nvim',
        version = "*",
        enabled = true,
        opts = {},
        config = function()
            require("toggleterm").setup({
                auto_scroll = true,
                close_on_exit = true,
                direction = 'vertical', -- | 'horizontal' | 'tab' | 'float',
                float_opts = {
                    border = "curved",
                    winblend = 0,
                    highlights = {
                        border = "Normal",
                        background = "Normal",
                    },
                },
                insert_mappings = true,
                open_mapping = [[<c-\>]],
                persist_size = true,
                hide_numbers = true,
                  -- size can be a number or function which is passed the current terminal
                -- size = 20,
                size = function(term)
                    if term.direction == "horizontal" then
                      return 15
                    elseif term.direction == "vertical" then
                      return vim.o.columns * 0.4
                    end
                end,
                shade_filetypes = {},
                shade_terminals = true,
                shading_factor = 2,
                shell = vim.o.shell,
                start_in_insert = true,
            })
        end,
    }
}
