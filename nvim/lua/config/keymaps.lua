-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>utj", "<cmd>split | terminal<cr>a", { desc = "Toggle terminal (down)" })
vim.keymap.set("n", "<leader>utl", "<cmd>vsplit | terminal<cr>a", { desc = "Toggle terminal (right)" })
