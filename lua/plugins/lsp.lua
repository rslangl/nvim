return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    local lspconfig = require("lspconfig")
    require("mason").setup()
    require("mason-lspconfig").setup({
      ensure_installed = {
        "rust_analyzer",
        "gopls",
        "terraformls",
        "ansiblels",
        "bashls",
      },
      automatic_installation = true,
    })

    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    local servers = {
      rust_analyzer = {},
      gopls = {},
      terraformls = {},
      ansiblels = {},
      bashls = {},
    }

    for name, opts in pairs(servers) do
      opts.capabilities = capabilities
      lspconfig[name].setup(opts)
    end
  end,
}

