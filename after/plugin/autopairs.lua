local status, autopairs = pcall(require, 'nvim-autopairs')
if not status then
  print("Could not load plugin: nvim-autopairs")
  return
end

autopairs.setup({
  disable_filetype = { "TelescopePrompt", "vim" },
})
