-- =========================
-- NvimTree (File Explorer)
-- =========================

return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    { "<C-n>", "<cmd>NvimTreeToggle<CR>", desc = "Toggle file tree" },
  },
  config = function()
    require("nvim-tree").setup({
      diagnostics = { enable = false },
      git = { enable = false },
    })
  end,
}
