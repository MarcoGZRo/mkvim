-- NOTE: my custom keybinds
vim.keymap.set('n', '<Leader>w', function()
    -- NOTE: Notification to save file
  vim.cmd("w")
  vim.notify("Guardado correctamente", "info", {
    title = "mkvim",
    timeout = 2000
  })
end, { desc = 'Write current buffer' })

vim.keymap.set('n', '<leader>q', '<Cmd>q<CR>', { desc = 'Quit nvim' })
vim.keymap.set('n', '<leader>qy', '<Cmd>q!<CR>', { desc = 'Force quit nvim' })



-- NOTE: keybinds for nvim-tree plugin
vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<CR>', { silent = true })
vim.keymap.set('n', '<leader>e', ':NvimTreeFocus<CR>', { silent = true })



-- NOTE: keybinds for bufferline plugin
vim.keymap.set('n', '<Leader>bd', '<cmd>bdelete<CR>',			{ desc = 'Close buffer'})
vim.keymap.set('n', '<Tab>', '<cmd>BufferLineCycleNext<CR>',	{ desc = 'Next buffer'})
vim.keymap.set('n', '<S-Tab>', '<cmd>BufferLineCyclePrev<CR>',	{ desc = 'Prev buffer'})



-- NOTE: keybinds for goto-preview plugin
vim.keymap.set("n", "pd", "<cmd>lua require('goto-preview').goto_preview_definition()<CR>", { noremap = true })
vim.keymap.set("n", "pt", "<cmd>lua require('goto-preview').goto_preview_type_definition()<CR>", { noremap = true })
vim.keymap.set("n", "pi", "<cmd>lua require('goto-preview').goto_preview_implementation()<CR>", { noremap = true })
vim.keymap.set("n", "pD", "<cmd>lua require('goto-preview').goto_preview_declaration()<CR>", { noremap = true })
vim.keymap.set("n", "pc", "<cmd>lua require('goto-preview').goto_preview_close_all_win()<CR>", { noremap = true })
vim.keymap.set("n", "pr", "<cmd>lua require('goto-preview').goto_preview_references()<CR>", { noremap = true })



-- NOTE: keybinds for git-nvim plugin
vim.keymap.set('n', '<leader>gs', '<cmd>Git status<cr>', { silent = true })
vim.keymap.set('n', '<leader>gA', '<cmd>Git add .<cr>', { silent = true })
vim.keymap.set('n', '<leader>gc', '<cmd>Git commit<cr>', { silent = true })
vim.keymap.set('n', '<leader>gv', '<cmd>Git log<cr>', { silent = true })
vim.keymap.set('n', '<leader>gV', '<cmd>Git log %<cr>', { silent = true })
vim.keymap.set('n', '<leader>gp', '<cmd>Git push<cr>', { silent = true })
vim.keymap.set('n', '<leader>gP', '<cmd>Git pull<cr>', { silent = true })
vim.keymap.set('n', '<leader>gd', '<cmd>Git diff<cr>', { silent = true })
vim.keymap.set('n', '<leader>gS', '<cmd>Git stash<cr>', { silent = true })
vim.keymap.set('n', '<leader>gB', '<cmd>Git blame<cr>', { silent = true })
vim.keymap.set('n', '<leader>gR', '<cmd>Git remote<cr>', { silent = true })


-- NOTE: LSP keymap
vim.keymap.set('n', '<leader>ch', vim.lsp.buf.hover, { desc = "[C]ode [H]over Documentation"})
