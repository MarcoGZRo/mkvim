return {
    --[[
    NOTE:
    Plugin: todo-comments
    GitHub: https://github.com/folke/todo-comments.nvim
    A plugin for Neovim that highlights and searches for TODO comments
    ]]
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function ()
          require('todo-comments').setup({
              signs = true,                         -- show icons in the column
              signs_priority = 8,                   -- signs priority
              keywords = {                          -- signs and icons
                  TODO = { icon = ' ' , color  = '#1358f0'   },
                  FIX  = { icon = ' ' , color  = '#e01212' , alt = {'FIXME','BUG','ISSUE'}},
                  HACK = { icon = '󰚑 ' , color  = '#FBBF24'},
                  WARN = { icon = ' ' , color  = '#FBBF24'},
                  PERF = { icon = '󱩗 ' , color  = '#792dfa'},
                  NOTE = { icon = '󰆈'  , color  = '#18b860'   },
                  TEST = { icon = '󰙨 ' , color  = '#f28435'   },
              },
              gui_style = {
                  fg = "NONE",                      -- The gui style to use for the fg highlight group.
                  bg = "BOLD",                      -- The gui style to use for the bg highlight group.
              },
              highlight = {
                  multiline = true,                 -- enable multiline comments
                  multiline_pattern = '^%s*%-%-',   -- lua pattern to match the next multiline
                  multiline_context = 10,           -- extra lines that will re-valueated when changing a line
                  max_lenght = 400                  -- max characters for each TODO comment
              },
          })
      end
}
