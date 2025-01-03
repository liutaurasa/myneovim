return {
    {
        'akinsho/toggleterm.nvim',
        version = "*",
        enabled = true,
        opts = {},
        config = function()
            require("toggleterm").setup({
                open_mapping = [[<c-\>]],
                hide_numbers = true,
                auto_scroll = true,
                direction = 'vertical', -- | 'horizontal' | 'tab' | 'float',
                  -- size can be a number or function which is passed the current terminal
                size = function(term)
                  if term.direction == "horizontal" then
                    return 15
                  elseif term.direction == "vertical" then
                    return vim.o.columns * 0.4
                  end
                end,
            })
        end,
    }
}
