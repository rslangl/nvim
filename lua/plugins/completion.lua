-- Core completion plugin
return {
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
        completion = {
          autocomplete = { require("cmp.types").cmp.TriggerEvent.TextChanged },
          keyword_length = 2,
        },
        mapping = {
          ["<Space><CR>"] = cmp.mapping.complete(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
          ["<C-n>"] = cmp.mapping.select_next_item(),
          ["<C-p>"] = cmp.mapping.select_prev_item(),
          ["<C-e>"] = cmp.mapping.abort(),
        },
        sources = {
          { name = "nvim_lsp" },
          { name = "luasnip" },
          { name = "buffer" },
          { name = "path" },
        },
        window = {
          documentation = cmp.config.window.bordered(),
        }
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
