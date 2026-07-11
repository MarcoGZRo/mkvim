return{
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
            -- initial values
            theme = 'doom',
            disable_move = false,
            shortcut_type = 'number',

            hide = {
                statusline = 'true',
                tabline = 'true',
                winbar = 'true'
            },

            -- config
            config = {
              center = {
                {
                    icon = ' ',
                            icon_hl = 'Title',
                            desc = 'Find File           ',
                            desc_hl = 'String',
                            key = 'b',
                            keymap = 'SPC f f',
                            key_hl = 'Number',
                            key_format = ' %s', -- remove default surrounding `[]`
                            action = 'lua print(2)'
                },
              },
              footer = {},
              vertical_center = false, -- Center the Dashboard on the vertical (from top to bottom)
            }
    }
  end
}
