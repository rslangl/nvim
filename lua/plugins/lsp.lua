return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    local lspconfig = require("lspconfig")
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    -- LSP setups using Nix-provided binaries
    lspconfig.rust_analyzer.setup({ capabilities = capabilities })
    lspconfig.gopls.setup({ capabilities = capabilities })
    lspconfig.terraformls.setup({ capabilities = capabilities })
    lspconfig.ansiblels.setup({ capabilities = capabilities })
    lspconfig.bashls.setup({ capabilities = capabilities })
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
    lspconfig.nil_ls.setup({ capabilities = capabilities })

    -- Kotlin LSP (kotlin-language-server)
    local kotlin_ls_path = vim.fn.exepath("kotlin-language-server")
    if kotlin_ls_path ~= "" then
      lspconfig.kotlin_language_server.setup({
        cmd = { kotlin_ls_path },
        capabilities = capabilities,
      })
    else
      vim.notify("kotlin-language-server not found in PATH", vim.log.levels.WARN)
    end

    -- Java LSP (jdtls)
    local jdtls_path = vim.fn.exepath("jdtls")
    if jdtls_path ~= "" then
      lspconfig.jdtls.setup({
        cmd = { jdtls_path },
        capabilities = capabilities,
        root_dir = lspconfig.util.root_pattern("build.gradle", "settings.gradle", ".git"),
      })
    else
      vim.notify("jdtls not found in PATH", vim.log.levels.WARN)
    end
  end,
}
