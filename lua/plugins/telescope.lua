return {
    {
        "nvim-telescope/telescope-ui-select.nvim",
    },
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            require("telescope").setup({
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown({}),
                    },
                },
                pickers = {
                    buffers = {
                        sort_lastused = true,
                        sort_mru = true
                    }
                },
            })
            local builtin = require("telescope.builtin")
            vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find Files" })
            vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
            vim.keymap.set("n", "<leader>gs", builtin.grep_string, {})
            vim.keymap.set("n", "<leader><leader>", builtin.oldfiles, {})
            vim.keymap.set("n", "<C-b>", builtin.buffers, {})
            require("telescope").load_extension("ui-select")
        end,
    },
}
