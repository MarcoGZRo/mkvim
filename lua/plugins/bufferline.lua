return {
    --[[
    NOTE:
    Plugin: bufferline
    GitHub: https://github.com/akinsho/bufferline.nvim
    A buffer line plugin for Neovim
    My config :D
    ]]

    "akinsho/bufferline.nvim",
    version = "*",

    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },

    config = function()
        local bufferline = require("bufferline")

        bufferline.setup({
            options = {
                mode = "buffers",
                style_preset = {
                    bufferline.style_preset.no_bold,
                    bufferline.style_preset.no_italic,
                },

                themable = false,
                numbers = "none",
                modified_icon = "●",
                separator_style = "slant",

                show_buffer_icons = true,
                show_buffer_close_icons = false,
                show_close_icon = false,
                show_tab_indicators = true,
                always_show_bufferline = true,

                offsets = {
                    {
                        filetype = "NvimTree",
                        text = "File Explorer",
                        text_align = "center",
                        separator = true,
                    },
                },
            },

            highlights = {
                fill = {
                    bg = "#15181D",
                },

                background = {
                    fg = "#747C89",
                    bg = "#15181D",
                },

                buffer_visible = {
                    fg = "#89919E",
                    bg = "#15181D",
                },

                buffer_selected = {
                    fg = "#B8C0CC",
                    bg = "#292E38",
                    bold = false,
                    italic = false,
                },

                separator = {
                    fg = "#15181D",
                    bg = "#15181D",
                },

                separator_visible = {
                    fg = "#15181D",
                    bg = "#15181D",
                },

                separator_selected = {
                    fg = "#15181D",
                    bg = "#292E38",
                },

                modified = {
                    fg = "#81A88C",
                    bg = "#15181D",
                },

                modified_visible = {
                    fg = "#81A88C",
                    bg = "#15181D",
                },

                modified_selected = {
                    fg = "#81A88C",
                    bg = "#292E38",
                },
            },
        })
    end,
}