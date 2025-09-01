return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "go",
        "lua",
        "vim",
        "bash",
        "json",
        "yaml",
        "markdown",
      },
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
      },
    })
  end,
}

