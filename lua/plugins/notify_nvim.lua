local function getGitUsername()
    local captor = io.popen("git config user.name")             -- execute the git command
    if not captor then return nil end                           -- return null if is empty
    local username = captor:read("*l")                          -- read and clean
    captor:close()                                              -- close lectort
    return username
end

local function getOsUsername()
    local captor                                                -- I declare them here first
    local nameResult                                            -- and this xd
    local captorSeparatorxD = package.config:sub(1,1)

    if captorSeparatorxD == '/' then                            -- This checks which operating system is currently in use,
                                                                -- using the directory separator as a reference.
        captor = io.popen('echo $USER')                         -- If used windows, use the $USER environment variable
    else
        captor = io.popen('echo %USERNAME%')                    -- If used linux, use the %USERNAME% environment variable
    end
    nameResult = captor:read('*l')                              -- read and clean
    captor:close()                                              -- close the captor
    return nameResult

end --end

return {
    --[[
    NOTE:
    Plugin: nvim-notify
    GitHub: https://github.com/rcarriga/nvim-notify
    A notification plugin for Neovim
    ]]
    "rcarriga/nvim-notify",
      config = function()
          --[[
          NOTE:I created this function to display the username.
          If the user has a Git username, it will be displayed.
          Otherwise, the system username (Windows or Linux) will be displayed.
          ]]
          local userName = getGitUsername() or getOsUsername() or 'user'
          vim.notify = require("notify")
          require("notify").setup({
              fps = 40,
              timeout = 2000,                                     -- time of notification
              stages = "fade_in_slide_out",                       -- (fade, slide, static, fade_in_slide_out)
              background_colour = "#000000",                      -- color theme
              render = "default",                                 -- clasic style notification (minimal, compact, wrapped)
              level = vim.log.levels.INFO,                        -- minimum severity (.TRACE, .DEBUG, .INFO, .WARN,.ERROR)
              title = 'MKVIM'
          })
          vim.notify("¡Welcome " .. userName .. '!', "info", {
              title = "MKVIM",
          })
      end
}
