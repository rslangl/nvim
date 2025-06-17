print("[LSP] Loading rust plugin")

return {
  {
    "simrat39/rust-tools.nvim",
    dependencies = {
      "neovim/nvim-lspconfig",
      "nvim-lua/plenary.nvim",
    },
    ft = { "rust" },
    config = function()
      local rt = require("rust-tools")

      rt.setup({
        server = {
          cmd = { vim.fn.expand("~/.nix-profile/bin/rust-analyzer") },
          settings = {
            ["rust-analyzer"] = {
              cargo = {
                allFeatures = true,
              },
              checkOnSave = {
                command = "clippy",
              },
              procMacro = {
                enable = true,
              },
            },
          },
        },
        tools = {
          hover_actions = {
            auto_focus = true,
          },
        },
      })
    end,
  },
}

