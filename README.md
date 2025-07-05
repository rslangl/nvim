# 💤 LazyVim

## Keybinds

### Formatters and linters (`conform.nvim`)

| Keybinding     | Action                              | Notes                                       |
| -------------- | ----------------------------------- | ------------------------------------------- |
| `:Format`      | Manually format current buffer      | LazyVim wrapper for `conform.nvim.format()` |
| `gq`           | Format selected range (in visual)   | Also triggers `conform`                     |
| `:ConformInfo` | Show loaded formatters per filetype | Diagnostic command                          |

### Code completion (`nvim-cmp`)

| Keybinding          | Action                              | Notes                              |
| ------------------- | ----------------------------------- | ---------------------------------- |
| `<Tab>` / `<S-Tab>` | Navigate completion list            | Snippet & cmp context-aware        |
| `<C-Space>`         | Manually trigger completion menu    | Default cmp trigger                |
| `<CR>`              | Confirm selected item (insert mode) | Uses `confirm_opts` set by LazyVim |

### LSP  features (`nvim-lspconfig`)

| Keybinding   | Action                              | Notes                             |
| ------------ | ----------------------------------- | --------------------------------- |
| `gd`         | Go to definition                    | Uses `telescope.nvim`             |
| `gD`         | Go to declaration                   | Basic LSP                         |
| `gi`         | Go to implementation                | Uses `telescope.nvim`             |
| `gr`         | Go to references                    | Uses `telescope.nvim`             |
| `K`          | Hover (docs)                        | Show signature / doc popup        |
| `<leader>ca` | Code actions                        | Contextual fixes (rename, import) |
| `<leader>rn` | Rename symbol                       | Inline rename via LSP             |
| `<leader>cf` | Format buffer                       | Uses `conform.nvim`               |
| `<leader>cl` | LSP info popup                      | Overview of attached LSP clients  |
| `<leader>cd` | Show diagnostics for current line   | Uses `vim.diagnostic`             |
| `<leader>cD` | Show diagnostics for current buffer |                                   |
| `[d` / `]d`  | Jump to prev/next diagnostic        | Quick navigation                  |

