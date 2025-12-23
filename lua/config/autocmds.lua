-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua

vim.api.nvim_create_autocmd("BufWritePre", {

  -- Without any LSPs attached, `format()` becomes a no-op or returns stale content,
  -- which causes nvim to write the pre-format buffer to disk. We therefore need to
  -- check whether there is at least one LSP attached to prevent this behavior
  callback = function(args)
    local clients = vim.lsp.get_active_clients({ bufnr = args.buf })
    if #clients > 0 then
      vim.lsp.buf.format({ async = false })
    end
  end,
})
