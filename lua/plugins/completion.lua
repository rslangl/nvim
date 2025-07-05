return {
  -- Core completion plugin
  { "hrsh7th/nvim-cmp", event = "InsertEnter" },

  -- LSP source for nvim-cmp, must load **after** nvim-cmp
  { "hrsh7th/cmp-nvim-lsp", dependencies = "nvim-cmp", event = "InsertEnter" },

  -- Additional sources (optional)
  { "hrsh7th/cmp-buffer", dependencies = "nvim-cmp", event = "InsertEnter" },
  { "hrsh7th/cmp-path", dependencies = "nvim-cmp", event = "InsertEnter" },

  -- Snippet engine and source
  { "L3MON4D3/LuaSnip", event = "InsertEnter" },
  { "saadparwaiz1/cmp_luasnip", dependencies = "nvim-cmp", event = "InsertEnter" },
}
