return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        formatters = {
          file = {
            filename_first = false, -- display filename before the file path
            truncate = 100, -- truncate the file path to (roughly) this length
            filename_only = false, -- only show the filename
            icon_width = 2, -- width of the icon (in characters)
          },
        },
      },
      explorer = {
        focus = "input",
        auto_close = false,
      },
    },
  },
}
