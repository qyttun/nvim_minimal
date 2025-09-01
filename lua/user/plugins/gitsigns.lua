return {
  "lewis6991/gitsigns.nvim",
  config = function()
    require("gitsigns").setup({
      signs = {
        add          = { text = "+" },
        change       = { text = "~" },
        delete       = { text = "_" },
        topdelete    = { text = "‾" },
        changedelete = { text = "~" },
      },
      on_attach = function(bufnr)
        local gs = package.loaded.gitsigns

        local function map(mode, l, r, desc)
          vim.keymap.set(mode, l, r, { buffer = bufnr, desc = desc })
        end

        -- Навигация по hunks
        map("n", "]c", function()
          if vim.wo.diff then return "]c" end
          vim.schedule(function() gs.next_hunk() end)
          return "<Ignore>"
        end, "Next hunk")

        map("n", "[c", function()
          if vim.wo.diff then return "[c" end
          vim.schedule(function() gs.prev_hunk() end)
          return "<Ignore>"
        end, "Prev hunk")

        -- Действия с hunks
        map("n", "<leader>gs", gs.stage_hunk, "Stage hunk")
        map("n", "<leader>gr", gs.reset_hunk, "Reset hunk")
        map("n", "<leader>gp", gs.preview_hunk, "Preview hunk")
        map("n", "<leader>gb", gs.blame_line, "Git blame")
        map("n", "<leader>gu", gs.undo_stage_hunk, "Undo stage hunk")

        -- Для всего файла
        map("n", "<leader>gS", gs.stage_buffer, "Stage buffer")
        map("n", "<leader>gR", gs.reset_buffer, "Reset buffer")

        -- Диффы
        map("n", "<leader>gd", gs.diffthis, "Diff this")
        map("n", "<leader>gD", function() gs.diffthis("~") end, "Diff against HEAD")

        -- Тогглы
        map("n", "<leader>gt", gs.toggle_current_line_blame, "Toggle blame line")
        map("n", "<leader>gw", gs.toggle_word_diff, "Toggle word diff")
      end,
    })
  end,
}

