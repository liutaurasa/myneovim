return {
    {
        "akinsho/bufferline.nvim",
        version = "*",
        dependencies = "nvim-tree/nvim-web-devicons",
        config = function()
            local bufferline = require("bufferline")
            bufferline.setup{
                options = {
                    offsets = {
                        {
                            filetype = "neo-tree",
                            text = "File Explorer",
                            text_align = "center",
                            separator = true
                        }
                    },
                }
            }
            vim.keymap.set('n', '<C-tab>', ':BufferLineCycleNext', {})
            vim.keymap.set('n', '<C-Shift-tab>', ':BufferLineCyclePrev', {})
        end
    }
}
