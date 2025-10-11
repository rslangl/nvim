-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

-- Run LSP code action
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action"})

-- Rust-specific debug action
vim.keymap.set("n", "<leader>dr", function ()
  vim.cmd.RustLsp("debuggables")
end, { desc = "Rust debuggables" })
