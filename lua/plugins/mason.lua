return {
    { -- Install lspconfig
        "neovim/nvim-lspconfig",
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
            require("mason-lspconfig").setup()
            require("mason-lspconfig").setup_handlers({
                function(server_name)
                    require("lspconfig")[server_name].setup({})
                end,
            })
        end,
    }
}
