return {
  "mfussenegger/nvim-lint",
  event = { "BufReadPost", "BufWritePost", "InsertLeave" },
  config = function()
    local lint = require("lint")
    lint.linters_by_ft = {
      rust = { "clippy" },
      go = { "golangci_lint" },
      sh = { "shellcheck" },
      yaml = { "yamllint" },
      kotlin = { "ktlint" },
    }

    vim.api.nvim_create_autocmd({ "BufWritePost", "InsertLeave" }, {
      callback = function() lint.try_lint() end,
    })
  end,
}

