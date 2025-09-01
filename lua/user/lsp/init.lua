-- ~/.config/nvim/lua/user/lsp/init.lua

local lspconfig = require("lspconfig")

-- Настройка go LSP (gopls)
lspconfig.gopls.setup {
  on_attach = function(client, bufnr)
    -- Маппинги для LSP
    local opts = { noremap=true, silent=true, buffer=bufnr }
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
  end,
}

-- Общая настройка отображения диагностик
vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = false,
})

