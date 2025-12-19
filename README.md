# 💤 LazyVim

## Keybinds

### Formatters and linters (`conform.nvim`)

| Keybinding     | Action                              | Notes                                       |
| -------------- | ----------------------------------- | ------------------------------------------- |
| `gq`           | Format selected range (in visual)   | Also triggers `conform`                     |
| `:ConformInfo` | Show loaded formatters per filetype | Diagnostic command                          |

### Code completion (`nvim-cmp`)

| Keybinding          | Action                              | Notes                              |
| ------------------- | ----------------------------------- | ---------------------------------- |
| `<Tab>` / `<S-Tab>` | Navigate completion list            | Snippet & cmp context-aware        |
| `<C-Space>`         | Manually trigger completion menu    | Default cmp trigger                |
| `<Space><CR>` | Manual completion trigger | Explicit trigger for suggestions |
| `<CR>`              | Confirm selected item (insert mode) | Uses `confirm_opts`, selects first by default |
| `<C-n>` / `<C-p>` | Navigate completion menu | Next / previous item in list |

### LSP  features (`nvim-lspconfig`)

| Keybinding   | Action                              | Notes                             |
| ------------ | ----------------------------------- | --------------------------------- |
| `gd`         | Go to definition                    | Uses attached LSP            |
| `gD`         | Go to declaration                   | Basic LSP                         |
| `gi`         | Go to implementation                | Uses attached LSP            |
| `gr`         | Go to references                    | Uses attached LSP            |
| `K`          | Hover (docs)                        | Show signature / doc popup        |
| `<leader>ca` | Code actions                        | Contextual fixes (rename, import) |
| `<leader>rn` | Rename symbol                       | Inline rename via LSP             |
| `<leader>cf` | Format buffer                       | Uses `conform.nvim`               |
| `<leader>cl` | LSP info popup                      | Overview of attached LSP clients  |
| `<leader>cd` | Show diagnostics for current line   | Uses `vim.diagnostic`             |
| `<leader>cD` | Show diagnostics for current buffer |                                   |
| `[d` / `]d`  | Jump to prev/next diagnostic        | Quick navigation                  |

## Commands

### Log output

LazyVim uses `noice.nvim` to manage and hide messages by default:

```
# View all recent logs, warnings, errors, and messages
:Noice history

# View only errors
:Noice errors
```

Raw log files are found in '~/.local/state/nvim/log'.

### Health checks

```
# Environment and plugin diagnostics
:checkhealth
```

## Language-specific notes

- Rust: `rust-analyzer` is sufficient; `RustaceanVim` is not required.
- Go: Plugin configuration is placed in `after/ftplugin/go.lua`, loaded only for Go buffers.
- LSP keybindings are buffer-local and tied to `on_attach`.
- Diagnostics are persistent and visible inline; automatic clearing in insert mode is disabled.
- Completion suggestions appear automatically while typing and can be manually triggered.

