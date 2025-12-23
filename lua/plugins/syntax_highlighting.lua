return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPost", "BufNewFile" },
  config = function()
    require("nvim-treesitter.config").setup({
      auto_install = true,
      ensure_installed = {
        "c",
        "cpp",
        "lua",
        "nix",
        "rust",
        "go",
        "bash",
        "terraform",
        "yaml",
        "zig",
        "java",
        "kotlin",
        "xml",
        "yaml",
        "cmake",
        "make",
      },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
