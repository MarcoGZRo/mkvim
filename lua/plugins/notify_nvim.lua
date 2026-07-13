return {
  "rcarriga/nvim-notify",
  config = function()
    vim.notify = require("notify")
        require("notify").setup({
            fps = 40,
            timeout = 2000, -- time of notification
            stages = "fade_in_slide_out",       -- (fade, slide, static, fade_in_slide_out)
            background_colour = "#000000",    -- color theme
            render = "default",                 -- clasic style notification (minimal, compact, wrapped)
            level = vim.log.levels.INFO,        -- minimum severity (.TRACE, .DEBUG, .INFO, .WARN,.ERROR)
    })

    vim.notify("¡Hola :D", "info", {
      title = "mknvim",
    })
  end
}
