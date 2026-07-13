return {
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
