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
        sources = {
          explorer = {
            layout = {
                preview = "main",
                layout = {
                  backdrop = true,
                  width = 30,
                  min_width = 40,
                  height = 0,
                  position = "left",
                  border = "none",
                  box = "vertical",
                  {
                    win = "input",
                    height = 1,
                    border = "rounded",
                    title = "{title} {live} {flags}",
                    title_pos = "center",
                  },
                  { win = "list", border = "none" },
                  { win = "preview", title = "{preview}", boarder = "rounded", width = 0.5, cols = 50 },
                },
            },
          }
        }
      },
      explorer = {
        focus = "input",
        auto_close = false,
      },
    },
  },
}
