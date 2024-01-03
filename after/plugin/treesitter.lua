local status, ts = pcall(require, 'nvim-treesitter.configs')
if not status then
  print("Could not load plugin: treesitter")
  return
end

ts.setup({
  
  -- Parsers
  ensure_installed = {
    "markdown",
    "typescript",
    "javascript",
    "yaml",
    "json",
    "toml",
    "c",
    "cpp",
    "lua",
    "rust",
    "go"
  },

  -- Install parsers asynchronously
  sync_install = false,

  -- Automatically install missing parsers
  auto_install = true,

  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },

  rainbow = {
    enable = true,
    disable = { "html" },
    extended_mode = false,
    max_file_lines = nil,
  },

  autotag = { enable = true },
  incremental_selection = { enable = true },
  indent = { enable = true },

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
})
