vim.cmd("set shiftwidth=4")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set expandtab")
vim.cmd("set number")
vim.cmd("set shell=bash\\ -l")
-- vim.cmd("set shellcmdflag=-i")

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("config.lazy")
require("config.options")

-- setup must be called before loading
-- require("config.catppuccin")
vim.cmd.colorscheme("catppuccin")
-- vim.api.nvim_command 'colorscheme highlite-solarized8-high'

-- Ansible vars and lists
vim.api.nvim_set_keymap("i", "<C-g>h", '"{{  }}"<Left><Left><left><left>', { noremap = true })
vim.api.nvim_set_keymap("i", "<C-g>j", "['']<Left><left>", { noremap = true })
vim.api.nvim_set_keymap("i", '"', '""<left>', { noremap = true })
vim.api.nvim_set_keymap("i", "'", "''<left>", { noremap = true })
vim.api.nvim_set_keymap("i", "(", "()<left>", { noremap = true })
vim.api.nvim_set_keymap("i", "[", "[]<left>", { noremap = true })
vim.api.nvim_set_keymap("i", "{", "{}<left>", { noremap = true })
