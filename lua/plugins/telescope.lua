return {
    {
        "nvim-telescope/telescope-ui-select.nvim",
    },
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        dependencies = {
            { 
                "nvim-telescope/telescope-live-grep-args.nvim" ,
                -- This will not install any breaking changes.
                -- For major updates, this must be adjusted manually.
                version = "^1.0.0",
            },
            "nvim-lua/plenary.nvim"
        },
        config = function()
            local telescope = require("telescope")
            local lga_actions = require("telescope-live-grep-args.actions")

            telescope.setup({
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown({}),
                    },
                    live_grep_args = {
                        auto_quoting = true, -- enable/disable auto-quoting
                        -- define mappings, e.g.
                        mappings = { -- extend mappings
                          i = {
                            ["<C-s>"] = lga_actions.quote_prompt(),
                            ["<C-i>"] = lga_actions.quote_prompt({ postfix = " --iglob " }),
                            -- freeze the current list and start a fuzzy search in the frozen list
                            ["<C-space>"] = lga_actions.to_fuzzy_refine,
                          },
                        },
                        -- ... also accepts theme settings, for example:
                        -- theme = "dropdown", -- use dropdown theme
                        -- theme = { }, -- use own theme spec
                        -- layout_config = { mirror=true }, -- mirror preview pane
                    }
                },
                pickers = {
                    buffers = {
                        sort_lastused = true,
                        sort_mru = true
                    }
                },
            })
            telescope.load_extension("ui-select")
            telescope.load_extension("live_grep_args")
        end,
    },
}
