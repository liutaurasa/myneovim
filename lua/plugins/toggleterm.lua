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
            })
        end,
    }
}
