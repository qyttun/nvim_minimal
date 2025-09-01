-- lua/user/keymaps.lua

-- Упрощение для keymap
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- jk как ESC
map("i", "jk", "<Esc>", opts)

-- :q по <leader>q
map("n", "<leader>q", ":q<CR>", { desc = "Quit", noremap = true, silent = true })

-- Сохранение по <leader>w
map("n", "<leader>w", ":w<CR>", { desc = "Save", noremap = true, silent = true })

-- Быстрое закрытие текущего буфера
map("n", "<leader>c", ":bd<CR>", { desc = "Close buffer", noremap = true, silent = true })

-- Перемещение между окнами (Ctrl + h/j/k/l)
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

