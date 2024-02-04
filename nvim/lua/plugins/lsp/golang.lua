return {
    -- add golang to treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        opts = function(_, opts)
            table.insert(opts.ensure_installed, "go")
        end,
    },

    -- setup lspconfig for golang
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                gopls = {},
            },
        },
    },
}
