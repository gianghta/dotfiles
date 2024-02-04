return {
    {
        "stevearc/conform.nvim",
        opts = {
            formatters_by_ft = {
                javascript = { "prettier" },
                css = { "prettier" },
                html = { "prettier" },
                json = { "prettier" },
                yaml = { "prettier" },
                markdown = { "prettier" },
                python = { "black" },
                go = { "gofmt " },
            },
            format_on_save = {
                lsp_fallback = true,
                async = false,
                timeout_ms = 500
            }
        },
    },
}
