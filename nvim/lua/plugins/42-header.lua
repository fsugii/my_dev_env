-- =========================
-- 42 Header
-- =========================

return {
  "Diogo-ss/42-header.nvim",
  lazy = false,
  keys = {
    { "<F1>", "<cmd>Stdheader<CR>", desc = "Insert 42 header" },
  },
  config = function()
    require("42header").setup({
      default_map = true,
      auto_update = true,
      user = vim. g.user,
      mail = vim.g.mail,
    })
  end,
}
