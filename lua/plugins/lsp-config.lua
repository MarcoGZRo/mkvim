return {
    {
        "mason-org/mason.nvim",

        opts = {
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            },
            firewall = {
                enabled = true,
            },
        },
    },

    {
        "mason-org/mason-lspconfig.nvim",

        dependencies = {
            "mason-org/mason.nvim",
            "neovim/nvim-lspconfig",
        },

        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "ts_ls",
                    "jdtls",
                },
                automatic_enable = false,
            })


            vim.lsp.config("lua_ls", {
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = { "vim" },
                        },
                        workspace = {
                            checkThirdParty = false,
                        },
                    },
                },
            })


            vim.lsp.enable("lua_ls")
            vim.lsp.enable("ts_ls")
        end,
    },

    {
        "mfussenegger/nvim-jdtls",

        ft = "java",

        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
        },
    },
}
