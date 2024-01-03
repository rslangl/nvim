local status, colors = pcall(require, 'rose-pine')
if not status then
  print("Could not load plugin: rose-pine")
  return
end

colors.setup({

})

vim.cmd.colorscheme("rose-pine")
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
