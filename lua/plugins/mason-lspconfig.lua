return {
  "williamboman/mason-lspconfig.nvim",
  event = "VeryLazy",
  dependencies = {
    "williamboman/mason.nvim",
    "neovim/nvim-lspconfig",
  },
  config = function()
    require("mason-lspconfig").setup({
      ensure_installed = {}, -- We use Nix to install LSPs
      automatic_installation = false,
    })
  end,
}

