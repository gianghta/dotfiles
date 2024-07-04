return {
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
  { -- helps with navigating between neovim and tmux panes
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  { -- make background transparent
    "xiyaowong/transparent.nvim",
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        visible = true,
        hide_dotfiles = false,
        hide_gitignored = true,
        hide_by_name = {
          ".github",
          ".gitignore",
          "package-lock.json",
        },
        never_show = { ".git" },
      },
    },
  },
}
