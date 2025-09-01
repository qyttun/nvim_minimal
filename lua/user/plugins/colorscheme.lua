return {
  {
    "Mofiqul/vscode.nvim",
    lazy = false,        -- загружаем сразу при старте
    priority = 1000,     -- применяем до остальных
    config = function()
      vim.cmd([[colorscheme vscode]])
    end,
  },
}

