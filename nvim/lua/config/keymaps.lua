-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "<leader>utj", "<cmd>split | terminal<cr>a", { desc = "Toggle terminal (down)" })
keymap.set("n", "<leader>utl", "<cmd>vsplit | terminal<cr>a", { desc = "Toggle terminal (right)" })

-- vim-tmux-navigator keymap
keymap.set("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", { desc = "window left" })
keymap.set("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>", { desc = "window right" })
keymap.set("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>", { desc = "window down" })
keymap.set("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>", { desc = "window up" })

-- Concatenate line keeps cursor in the same position
keymap.set("n", "J", "mzJ`z")

-- Jumping half page keeps cursor in the same position
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- Pasting doesn't get override
keymap.set("x", "<leader>p", '"_dP')

-- Separate copy buffer of Vim from normal clipboard
keymap.set("n", "<leader>y", '"+y')
keymap.set("v", "<leader>y", '"+y')
keymap.set("n", "<leader>Y", '"+Y')

-- Shortcut escape during edit mode
keymap.set("i", "<C-c>", "<Esc>")

-- Delete a word backwards
keymap.set("n", "dw", "vb_d")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")
