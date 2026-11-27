return {
    --[[
    NOTE:
    Plugin: lualine
    GitHub: https://github.com/nvim-lualine/lualine.nvim
    A status line plugin for Neovim
    ]]

    "nvim-lualine/lualine.nvim",

    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },

    config = function()
        require("lualine").setup({
            options = {
                theme = "codedark",
                icons_enabled = true,
                globalstatus = true,
            },

            extensions = {
                "quickfix",
                "fugitive",
            },

            sections = {
                lualine_a = {
                    { "mode", upper = true },
                },

                lualine_b = {
                    { "branch", icon = "" },
                    "diff",
                    "db_ui#statusline",
                },

                lualine_c = {
                    {
                        "filename",
                        file_status = true,
                        path = 1,
                    },
                },

                lualine_x = {
                    "diagnostics",
                    {
                        require("lazy.status").updates,
                        cond = require("lazy.status").has_updates,
                        color = { fg = "#ff9e64" },
                    },
                },

                lualine_y = {
                    "filetype",
                },

                lualine_z = {
                    "location",
                },
            },
        })
    end,
}