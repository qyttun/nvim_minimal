return {
  -- Тема
  {
    "Mofiqul/vscode.nvim",
    config = function()
      vim.cmd.colorscheme("vscode")
    end,
  },

  -- LSP
  require("user.plugins.lsp"),

  -- Автодополнение
  require("user.plugins.cmp"),


    -- Treesitter
  require("user.plugins.treesitter"),

	-- Gitsigns
	require("user.plugins.gitsigns"),

	-- Fugitive
	require("user.plugins.fugitive"),
}

