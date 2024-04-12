-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Basic clipboard configuration
vim.keymap.set({ "n", "x" }, "<leader>y", '"+y"') -- copy
vim.keymap.set({ "n", "x" }, "<leader>p", '"+p"') -- paste

-- Display path and filename
vim.opt.winbar = "%=%m %f"
