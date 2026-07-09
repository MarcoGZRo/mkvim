-- NOTE: my custom keybinds
vim.keymap.set('n', '<leader>w', '<cmd>w<CR>', { desc = 'write current buffer' })
vim.keymap.set('n', '<leader>q', '<cmd>q<CR>', { desc = 'quit nvim' })

-- NOTE: keybinds for bufferline -> plugin
vim.keymap.set('n', '<Tab>', '<cmd>BufferLineCycleNext<CR>',	{ desc = 'Next buffer'})
vim.keymap.set('n', '<S-Tab>', '<cmd>BufferLineCyclePrev<CR>',	{ desc = 'Prev buffer'})
vim.keymap.set('n', '<leader>bd', '<cmd>bdelete<CR>',			{ desc = 'Close buffer'})
