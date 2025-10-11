return {
  -- Core completion plugin
  {
    "hrsh7th/nvim-cmp",
    enabled = true,
    event = "InsertEnter",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
    },
    config = function ()
      local cmp = require("cmp")
      cmp.setup({
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
          ["<C-e>"] = cmp.mapping.abort(),
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "luasnip" },
          { name = "buffer" },
          { name = "path" },
        }),
      })
    end
  },

  -- LSP source for nvim-cmp, must load **after** nvim-cmp
  { "hrsh7th/cmp-nvim-lsp", dependencies = "nvim-cmp", event = "InsertEnter" },

  -- Additional sources (optional)
  { "hrsh7th/cmp-buffer", dependencies = "nvim-cmp", event = "InsertEnter" },
  { "hrsh7th/cmp-path", dependencies = "nvim-cmp", event = "InsertEnter" },

  -- Snippet engine and source
  { "L3MON4D3/LuaSnip", event = "InsertEnter" },
  { "saadparwaiz1/cmp_luasnip", dependencies = "nvim-cmp", event = "InsertEnter" },
}
