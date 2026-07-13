return {
	'akinsho/bufferline.nvim',
	version = "*",
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	-- TODO: config diagnostic bufferline
    config = function()
        local bufferline = require("bufferline")
        bufferline.setup{
            options = {
                mode = "buffers",
                style_preset = bufferline.style_preset.default, -- or bufferline.style_preset.minimal,
                themable = true,
                numbers = "none", -- {ordinal, buffer_id_, both}
                buffer_close_icon = '󰅖',
                modified_icon = '● ',
                close_icon = ' ',
                separator_style = "slant", -- slant, slope , thick , thin
                show_tab_indicators = true,
                show_buffer_icons = true,
                always_show_bufferline = true,
                offsets = {
                    {
                        filetype = "NvimTree",
                        text = "File Explorer",
                        text_align = "center", --left, center, right
                        separator = true
                    }
                },
            }
        }
	end,
}
