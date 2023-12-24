vim.g.mapleader = " "

-- File explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move marked lines while in visual mode
vim.keymap.set("v", "j", ":m '>+1<CR>gv=gv") 
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Leave cursor at the same place when applying lines
vim.keymap.set("n", "J", "mzJ`z")

-- Half page jumping while keeping cursor in the centre
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Search terms while keeping cursor in the centre
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Uses the contents in the void register and pastes it in-place in highlighted area
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Yank to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Clears the void register
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- Dont press Q as its the worst place in the universe
vim.keymap.set("n", "Q", "<nop>")

-- Use tmux session to switch to another project
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", function()
  vim.lsp.buf.format()
end)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k>", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Terminal
vim.keymap.set("n", "<leader>th", "<cmd>ToggleTerm size=10 direction=horizontal<CR>")
vim.keymap.set("n", "<leader>tv", "<cmd>ToggleTerm size=80 direction=vertical<CR>")

-- Quickly replace the word that I am on
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Make current file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Save
vim.keymap.set("n", "<leader>w", "<cmd>w<CR>")

-- Quite
vim.keymap.set("n", "<leader>q", "<cmd>q<CR>")
