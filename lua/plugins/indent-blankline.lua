-- Ident-blankline pluging
return {
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        -- @module "ibl"
        -- @type ibl.config
        opts = {},
        config = function()
            -- calling `setup` is optional for customization
            local highlight = {"CursorColumn", "Whitespace"}
            require("ibl").setup {
                indent = { highlight = highlight, char = "" },
                whitespace = {
                    highlight = highlight,
                    remove_blankline_trail = false,
                },
                scope = { enabled = false },
            }
        end
    }
}
