-- lua/user/plugins/fugitive.lua
-- Gitflow / Fugitive keymaps

return {
  "tpope/vim-fugitive",
	config = function()
-- Основные команды Git
vim.keymap.set("n", "<leader>gg", ":Git<CR>", { desc = "Git status" })
vim.keymap.set("n", "<leader>gc", ":Git commit<CR>", { desc = "Git commit" })
vim.keymap.set("n", "<leader>gp", ":Git push<CR>", { desc = "Git push" })
vim.keymap.set("n", "<leader>gP", ":Git pull<CR>", { desc = "Git pull" })
vim.keymap.set("n", "<leader>gl", ":Git log --oneline --graph --decorate<CR>", { desc = "Git log" })

-- Работа с ветками
vim.keymap.set("n", "<leader>gb", ":Git branch<CR>", { desc = "Git branches" })
vim.keymap.set("n", "<leader>gco", ":Git checkout ", { desc = "Git checkout" })
vim.keymap.set("n", "<leader>gM", ":Git merge ", { desc = "Git merge" })

-- Интерактивный rebase прямо из nvim
vim.keymap.set("n", "<leader>grb", ":Git rebase -i HEAD~", { desc = "Git rebase" })

-- Diff текущего файла
vim.keymap.set("n", "<leader>gd", ":Gvdiffsplit<CR>", { desc = "Git diff split" })
	end,
}

