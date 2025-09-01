return {
  "romgrk/barbar.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons", -- иконки
  },
  init = function() 
    vim.g.barbar_auto_setup = false -- мы сами настроим
  end,
  config = function()
    require("barbar").setup {
      -- минимальная настройка
      animation = true,
      insert_at_end = true,
      icons = {
        buffer_index = true,
        filetype = { enabled = true },
        separator = { left = "▎", right = "" },
      },
    }

    -- 🔑 Горячие клавиши
    local map = vim.keymap.set
    map("n", "<Tab>", "<Cmd>BufferNext<CR>", { desc = "Next buffer" })
    map("n", "<S-Tab>", "<Cmd>BufferPrevious<CR>", { desc = "Prev buffer" })
    map("n", "<leader>bc", "<Cmd>BufferClose<CR>", { desc = "Close buffer" })
    map("n", "<leader>bp", "<Cmd>BufferPin<CR>", { desc = "Pin buffer" })
    map("n", "<leader>bl", "<Cmd>BufferCloseAllButCurrent<CR>", { desc = "Close all but current" })
  end,
}

