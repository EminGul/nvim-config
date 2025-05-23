return {
    "ellisonleao/gruvbox.nvim",
    config = function()
        require("gruvbox").setup({
            overrides = {
                SignColumn = { link = "Normal" },
                GruvboxGreenSign = { bg = "" },
                GruvboxOrangeSign = { bg = "" },
                GruvboxPurpleSign = { bg = "" },
                GruvboxYellowSign = { bg = "" },
                GruvboxRedSign = { bg = "" },
                GruvboxBlueSign = { bg = "" },
                GruvboxAquaSign = { bg = "" },
            },
        })

        vim.o.background = "dark"
        vim.cmd.colorscheme("gruvbox")
    end,
}
