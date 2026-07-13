return {
    {
        "hrsh7th/nvim-cmp",
        lazy = false,
        dependencies = {

            "hrsh7th/cmp-nvim-lsp",


            "hrsh7th/cmp-buffer",


            "hrsh7th/cmp-path",
        },

        config = function()
            local cmp = require("cmp")

            cmp.setup({
                snippet = {
                    expand = function(args)
                        vim.snippet.expand(args.body)
                    end,
                },

                completion = {
                    completeopt = "menu,menuone,noinsert",
                },

                window = {
                    completion = cmp.config.window.bordered(),
                    documentation = cmp.config.window.bordered(),
                },

                mapping = cmp.mapping.preset.insert({
                    ["<C-n>"] = cmp.mapping.select_next_item(),
                    ["<C-p>"] = cmp.mapping.select_prev_item(),
                    ["<C-Space>"] = cmp.mapping.complete(),
                    ["<C-e>"] = cmp.mapping.abort(),

                    ["<CR>"] = cmp.mapping.confirm({
                        select = true,
                    }),
                }),

                formatting = {
                    format = function(entry, item)
                        item.menu = ({
                            nvim_lsp = "[LSP]",
                            buffer = "[BUF]",
                            path = "[PATH]",
                        })[entry.source.name]

                        return item
                    end,
                },

                sources = cmp.config.sources({
                    {
                        name = "nvim_lsp",
                        priority = 1000,
                    },
                }, {
                    {
                        name = "buffer",
                        priority = 100,
                    },

                    {
                        name = "path",
                        priority = 50,
                    },
                }),
            })
        end,
    },
}
