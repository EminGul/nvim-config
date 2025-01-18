return {
    { -- Install lspconfig
        "neovim/nvim-lspconfig",
        event = { "BufReadPre", "BufNewFile" },
    },
    { -- Install Mason
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    { -- Mason-lspconfig maps the mason name to its respective lsp-config name for the language setup (eg. lspconfig.[language].setup())
        "williamboman/mason-lspconfig.nvim",
        dependencies = { "mason.nvim" },
        config = function()
            local capabilities = vim.lsp.protocol.make_client_capabilities()
            capabilities.textDocument.completion.completionItem.snippetSupport = true

            require("mason-lspconfig").setup()

            -- Add LSP configurations
            require("mason-lspconfig").setup_handlers({
                function(server_name)
                    require("lspconfig")[server_name].setup({
                        capabilities = capabilities,
                    })
                end,
            })
        end,
    }
}
