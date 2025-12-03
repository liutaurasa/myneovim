-- return {
--   {
--     "neovim/nvim-lspconfig",
--     ---@class PluginLspOpts
--     opts = function(_, opts)
--       opts.autoformat = false
--     end,
--   },
-- }

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ansiblels = {
          settings = {
            ansible = {
              validation = {
                enabled = true,
                lint = {
                    -- This passes the -x (skip_list) flag to ansible-lint execution
                    -- arguments = "--skip-list ANSIBLE0006,ANSIBLE0011",
                    enabled = true,
                    arguments = "-c ~/.config/ansible-lint.yml"
                },
              },
            },
          },
        },
      },
    },
  },
}
