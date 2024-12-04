return {
    {
        'famiu/bufdelete.nvim',
        version = "*",
        enabled = true,
        config = function()
            vim.keymap.set('n', '<leader>c', function() require('bufdelete').bufdelete(0, false) end, { desc = "✕ buf not win"})
        end,
    }
}

