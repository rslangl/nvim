return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opts = {
    ensure_installed = {
      "lua", "rust", "go", "bash", "terraform", "yaml",
    },
    highlight = { enable = true },
    indent = { enable = true },
  },
}

