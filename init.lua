vim.cmd("set shiftwidth=4")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set expandtab")
vim.cmd("set number")
vim.g.mapleader = " "

require("config.lazy")
require("config.options")

-- setup must be called before loading
-- require("config.catppuccin")
vim.cmd.colorscheme "catppuccin"
-- vim.api.nvim_command 'colorscheme highlite-solarized8-high'

-- Ident-blankline pluging
local highlight = {
    "CursorColumn",
    "Whitespace",
}
require("ibl").setup {
    indent = { highlight = highlight, char = "" },
    whitespace = {
        highlight = highlight,
        remove_blankline_trail = false,
    },
    scope = { enabled = false },
}

