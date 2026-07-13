return{
    'nvimdev/dashboard-nvim',
    dependencies = {

    },
  event = 'VimEnter',
    config = function()
        local  map = require("telescope.builtin")
        local db = require("dashboard").setup({
            vim.api.nvim_set_hl(0, "DashboardHeader", { fg = "#e63946", bold = true }),
            vim.api.nvim_set_hl(0, "DashboardKey", { fg = "#ff5252", bold = true }),
            vim.api.nvim_set_hl(0, "DashboardIcon", { fg = "#9d4edd" }),
            vim.api.nvim_set_hl(0, "DashboardShortCutIcon", { fg = "#4a5759" }),
            vim.api.nvim_set_hl(0, "DashboardDesc", { fg = "#ced4da" }),
            theme = "doom",
            config = {
                header = {
                    [[]],
                    [[]],
                    [[]],
                    [[]],
                    [[]],
                    [[]],
                    [[]],
                    [[]],
                    [[]],
                    [[]],
                    [[░███      ░███ ░██     ░██ ░██    ░██ ░██████░███      ░███ ]],
                    [[░████   ░████ ░██    ░██  ░██    ░██   ░██  ░████   ░████ ]],
                    [[░██░██ ░██░██ ░██   ░██   ░██    ░██   ░██  ░██░██ ░██░██ ]],
                    [[░██ ░████ ░██ ░███████    ░██    ░██   ░██  ░██ ░████ ░██ ]],
                    [[░██  ░██  ░██ ░██   ░██    ░██  ░██    ░██  ░██  ░██  ░██ ]],
                    [[░██       ░██ ░██    ░██    ░██░██     ░██  ░██       ░██ ]],
                    [[░██       ░██ ░██     ░██    ░███    ░██████░██       ░██ ]],
                    [[]],
                    [[]],
                    [[]],
                },
                header_padding = 20,
                center = {
                    {
                        icon = ' ',
                        icon_hl = 'DashboardIcon',
                        desc = 'Find Files           ',
                        desc_hl = 'DashboardDesc',
                        key = 'f',
                        keymap = '<Leader> ff',
                        key_hl = 'DashboardKey',
                        key_format = ' %s', -- remove default surrounding `[]`
                        action = map.find_files
                    },
                    {
                        icon = '󰩉 ',
                        icon_hl = 'DashboardIcon',
                        desc = 'Live Grep           ',
                        desc_hl = 'DashboardDesc',
                        key = 'l',
                        keymap = '<Leader> fg',
                        key_hl = 'DashboardKey',
                        key_format = ' %s', -- remove default surrounding `[]`
                        action = map.live_grep
                    }
                },
                footer = {
                    "⚡ MhvIm - Configuración cargada con éxito ⚡"
                }
            }
        })
  end
}
