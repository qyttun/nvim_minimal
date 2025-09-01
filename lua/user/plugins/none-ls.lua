return {
  "nvimtools/none-ls.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.goimports,
        null_ls.builtins.formatting.gofmt,
        null_ls.builtins.diagnostics.golangci_lint,
      },
    })

    -- Автоформат при сохранении
    vim.api.nvim_create_autocmd("BufWritePre", {
      callback = function()
        vim.lsp.buf.format({ async = false })
      end,
    })
  end,
}

