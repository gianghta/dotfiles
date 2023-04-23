return {
    { -- override: use "/" instead of "g" for search
        "goolord/alpha-nvim",
        opts = function(_, dashboard)
            dashboard.section.buttons.val[4].opts.keymap[2] = "/"
            dashboard.section.buttons.val[4].opts.shortcut = "/"
        end,
    },

    { -- override: add message filters
        "folke/noice.nvim",
        opts = function(_, opts)
            opts.routes = {
                { -- filter write messages "xxxL, xxxB"
                    filter = {
                        event = "msg_show",
                        find = "%dL",
                    },
                    opts = { skip = true },
                },
                { -- filter search messages
                    filter = {
                        event = "msg_show",
                        find = "search hit",
                    },
                    opts = { skip = true },
                },
            }
        end,
    },
}
