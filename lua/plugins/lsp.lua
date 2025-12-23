-- plugins/lsp.lua: This is the semantic anchor for
-- `vim.diagnostic.config`
-- LSP `on_attach`
-- server setup
-- capability wiring

-- Diagnostics config that enables
-- Inline error/warning text
-- Gutter signs
-- Underlines
-- Stable diagnostics while typing
vim.diagnostic.config({
  virtual_text = {
    spacing = 4,
    prefix = "●",
  },
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})

return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    local lspconfig = require("lspconfig")
    local capabilities = require("cmp_nvim_lsp").default_capabilities()
    local on_attach = function(_, bufnr)
      local opts = { buffer = bufnr, silent = true }

      vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
      vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
      vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
      vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
      vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)

      vim.keymap.set("n", "<leader>f", function()
        vim.lsp.buf.format({ async = false })
      end, opts)
    end

    -- LSP setups using Nix-provided binaries
    lspconfig.rust_analyzer.setup({
      capabilities = capabilities,
      on_attach = on_attach,
      settings = {
        ["rust_analyzer"] = {
          cargo = { allFeatures = true },
          checkOnSave = { command = "clippy" },
        }
      }
    })
    lspconfig.gopls.setup({
      capabilities = capabilities,
      on_attach = on_attach
    })
    lspconfig.terraformls.setup({
      capabilities = capabilities,
      on_attach = on_attach
    })
    lspconfig.ansiblels.setup({
      capabilities = capabilities,
      on_attach = on_attach
    })
    lspconfig.bashls.setup({
      capabilities = capabilities,
      on_attach = on_attach
    })
    lspconfig.jdtls.setup({
      on_attach = on_attach,
      capabilities = capabilities,
    })
    lspconfig.kotlin_language_server.setup({
      on_attach = on_attach,
      capabilities = capabilities,
    })
    lspconfig.clangd.setup({
      on_attach = on_attach,
      capabilities = capabilities,
      init_options = {
        buildDirectory = "build",
      },
      cmd = {
        "clangd",
        "--background-index",
        "--clang-tidy",
        "--completion-style=detailed",
        "--header-insertion=iwyu",
      },
    })
    lspconfig.cmake.setup({
      on_attach = on_attach,
      capabilities = capabilities,
    })
    lspconfig.zls.setup({
      on_attach = on_attach,
      capabilities = capabilities,
    })
    lspconfig.lua_ls.setup({
      cmd = { vim.fn.exepath("lua-language-server") },
      capabilities = capabilities,
      settings = {
        Lua = {
          diagnostics = { globals = { "vim" } },
          workspace = {
            checkThirdParty = false,
            library = vim.api.nvim_get_runtime_file("", true),
          },
        },
      },
    })
  end,
}
