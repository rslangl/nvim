return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        rust = { "rustfmt" },
        go = { "goimports", "gofmt" },
        terraform = { "terraform_fmt" },
        sh = { "shfmt" },
        yaml = { "prettier" },
      },
      format_on_save = {
        lsp_fallback = true,
        timeout_ms = 500,
      },
    })
  end,
}

