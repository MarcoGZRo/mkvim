return {
    --[[
    NOTE:
    Plugin: colorscheme
    GitHub: https://github.com/EdenEast/nightfox.nvim
    A colorscheme for Neovim
    My config :D
    ]]
    'EdenEast/nightfox.nvim',
    lazy = false,
    priority = 1000,
    config = function ()
        require('nightfox').setup({
            options = {
                transparent = true, -- Boolean: Sets the background to transparent
            }
        })
    end
}
