return {
  {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    opts.sections.lualine_c[4] = { LazyVim.lualine.pretty_path({
      length = 6,
    }) }
    opts.sections.lualine_z = {}
  end,
  },
}
