return {
    "nvim-tree/nvim-tree.lua",
    lazy = false,
    config = function()
        local function on_my_attach(bufnr)
            local api = require("nvim-tree.api")
            local function opts(desc)
                return { desc = "nvim-tree" .. desc, buffer = bufnr, noremap = true, silent = false, nowait = true }
            end



            -- default mappings
            api.map.on_attach.default(bufnr)



            -- Personal Keymaps
            vim.keymap.set("n", "<C-h>", "<cmd>wincmd h<CR>", opts("Go to left window"))
            vim.keymap.set("n", "<C-l>", "<cmd>wincmd l<CR>", opts("Go to right window"))
        end



        require("nvim-tree").setup({
            sort = {
              sorter = "case_sensitive",
            },
            view = {
              width = 30,
            },
            renderer = {
              group_empty = true,
            },
            filters = {
              dotfiles = true,
            },
            -- Set new keymaps
            on_attach = on_my_attach
        })


    end
}
