return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
        mode = "n", -- NORMAL mode
        prefix = "<leader>",
        buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
        silent = true, -- use `silent` when creating keymaps
        noremap = true, -- use `noremap` when creating keymaps
        nowait = true, -- use `nowait` when creating keymaps
        spec = {
        --     { "a", "<cmd>Alpha<cr>", desc = "Alpha" },
        --     { "e", "<cmd>NvimTreeToggle<cr>", desc = "Explorer" },
            { "<leader>f", group = "File fuzzy Search" },
            { "<leader><leader>", "<cmd>Telescope oldfiles<cr>",                        desc = "Recent Files" },
            { "<leader>fc", "<cmd>Telescope colorscheme<cr>",                           desc = "Colorscheme" },
            { "<leader>ff", "<cmd>Telescope find_files<cr>",                            desc = "Find files" },
            { "<leader>fg", "<cmd>Telescope live_grep<cr>",                             desc = "Live grep files"},
            { "<leader>fr", "<cmd>Telescope oldfiles<cr>",                              desc = "Recent Files" },
            { "<leader>ft", "<cmd>Telescope live_grep <cr>",                            desc = "Find Text Pattern" },
            { "<leader>fs", "<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args<cr>", desc = "Live grep files with args"},
            { "<leader>gs", "<cmd>Telescope grep_string<cr>",                           desc = "Grep string"},
            { "<C-b>", "<cmd>Telescope buffers<cr>",                                    desc = "List buffers" },
            --
            { "k", "<cmd>bdelete<CR>", desc = "Kill Buffer" },
        --     --  
        --     { "l", group = "LSP" },
        --     { "lS", "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", desc = "Workspace Symbols" },
        --     { "li", "<cmd>LspInfo<cr>", desc = "Info" },
        --     { "lr", "<cmd>lua vim.lsp.buf.rename()<cr>", desc = "Rename" },
        --     { "ls", "<cmd>Telescope lsp_document_symbols<cr>", desc = "Document Symbols" },
        --     { "m", "<cmd>Mason<cr>", desc = "Mason" },
        --     -- { "p", "<cmd>Lazy<CR>", desc = "Plugin Manager" },
        --     -- { "q", "<cmd>wqall!<CR>", desc = "Quit" },
        --     { "r", "<cmd>lua vim.lsp.buf.format{async=true}<cr>", desc = "Reformat Code" },
        --     --
        --     { "s", group = "Search" },
        --     { "sc", "<cmd>Telescope commands<cr>",      desc = "Commands" },
        --     { "sh", "<cmd>Telescope help_tags<cr>",     desc = "Find Help" },
        --     { "sk", "<cmd>Telescope keymaps<cr>",       desc = "Keymaps" },
        --     { "sm", "<cmd>Telescope man_pages<cr>",     desc = "Man Pages" },
        --     { "sr", "<cmd>Telescope registers<cr>",     desc = "Registers" },
            --
            { "<leader>t", group = "Terminal" },
            { "<leader>tf", "<cmd>ToggleTerm direction=float<cr>",                  desc = "Float terminal" },
            { "<leader>th", "<cmd>ToggleTerm size=10 direction=horizontal<cr>",     desc = "Horizontal terminal" },
            { "<leader>tp", "<cmd>lua _PYTHON_TOGGLE()<cr>",                        desc = "Python terminal" },
            { "<leader>tv", "<cmd>ToggleTerm size=80 direction=vertical<cr>",       desc = "Vertical terminal" },
            --
        -- { "w", "<cmd>w!<CR>", desc = "Save" },
        },
    },
    -- config = function()
    --     require("which-key").setup({
    --         -- plugins = {
    --         --     marks = true,         -- shows a list of your marks on ' and `
    --         --     registers = true,     -- shows your registers on " in NORMAL or <C-r> in INSERT mode
    --         --     spelling = {
    --         --         enabled = true,   -- enabling this will show WhichKey when pressing z= to select spelling suggestions
    --         --         suggestions = 20, -- how many suggestions should be shown in the list?
    --         --     },
    --         --     -- the presets plugin, adds help for a bunch of default keybindings in Neovim
    --         --     -- No actual key bindings are created
    --         --     presets = {
    --         --         operators = true,       -- adds help for operators like d, y, ... and registers them for motion / text object completion
    --         --         motions = true,         -- adds help for motions
    --         --         text_objects = true,    -- help for text objects triggered after entering an operator
    --         --         windows = true,         -- default bindings on <c-w>
    --         --         nav = true,             -- misc bindings to work with windows
    --         --         z = true,               -- bindings for folds, spelling and others prefixed with z
    --         --         g = true,               -- bindings for prefixed with g
    --         --     },
    --         -- },
    -- --         -- add operators that will trigger motion and text object completion
    -- --         -- to enable all native operators, set the preset / operators plugin above
    -- --         operators = { gc = "Comments" },
    -- --         replace = {
    -- --             -- override the label used to display some keys. It doesn't effect WK in any other way.
    -- --             -- For example:
    -- --             ["<space>"] = "SPC",
    -- --             -- ["<cr>"] = "RET",
    -- --             ["<tab>"] = "TAB",
    -- --         },
    -- --         icons = {
    -- --             breadcrumb = "»", -- used in the command line area that shows your active key combo
    -- --             separator = "➜",  -- symbol used between a key and it's label
    -- --             group = "+",      -- symbol prepended to a group
    -- --         },
    -- --         keys = {
    -- --             scroll_down = "<c-d>", -- binding to scroll down inside the popup
    -- --             scroll_up = "<c-u>", -- binding to scroll up inside the popup
    -- --         },
    -- --         win = {
    -- --             border = "rounded",       -- none, single, double, shadow
    -- --             position = "bottom",      -- bottom, top
    -- --             margin = { 1, 0, 1, 0 },  -- extra window margin [top, right, bottom, left]
    -- --             padding = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
    -- --             winblend = 0,
    -- --         },
    -- --         layout = {
    -- --             height = { min = 4, max = 25 }, -- min and max height of the columns
    -- --             width = { min = 20, max = 50 }, -- min and max width of the columns
    -- --             spacing = 3,                    -- spacing between columns
    -- --             align = "left",                 -- align columns left, center or right
    -- --         },
    -- --         -- filter = true, -- hide mappings for which you didn't specify a label
    -- --         -- hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ " }, -- hide mapping boilerplate
    -- --         show_help = true, -- show help message on the command line when the popup is visible
    -- --         -- triggers = "auto", -- automatically setup triggers
    -- --         triggers = {"<leader>"}, -- or specify a list manually
    -- --         -- triggers_blacklist = {
    -- --         --     -- list of mode / prefixes that should never be hooked by WhichKey
    -- --         --     -- this is mostly relevant for key maps that start with a native binding
    -- --         --     -- most people should not need to change this
    -- --         --     i = { "j", "k" },
    -- --         --     v = { "j", "k" },
    -- --         -- },
    --     })
    -- end,
    keys = {
        {
          "<leader>?",
          function()
            require("which-key").show({ global = false })
          end,
          desc = "Buffer Local Keymaps (which-key)",
        }
    }
}

-- local wk = require("whichkey")

