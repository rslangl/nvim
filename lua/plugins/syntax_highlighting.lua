return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  --- event = { "BufReadPost", "BufNewFile" },
  dependencies = {
    "nvim-treesitter/playground",
  },
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "lua",
        "nix",
        "rust",
        "go",
        "bash",
        "terraform",
        "yaml",
      },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}

