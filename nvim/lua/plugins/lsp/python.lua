return {
    -- add python to treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        opts = function(_, opts)
            table.insert(opts.ensure_installed, "python")
        end,
    },

    -- setup lspconfig for python
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                pyright = {},
            },
        },
    },
}
