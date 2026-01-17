-- =========================
-- Norminette 42
-- =========================

return {
  "MrSloth-dev/42-NorminetteNvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "echasnovski/mini.icons",
  },
  ft = { "c", "h" },
  keys = {
    { "<leader>n", desc = "Check norminette" },
    { "<leader>ns", desc = "Show file size" },
  },
  config = function()
    require("norminette").setup({
      norm_keybind = "<leader>n",
      size_keybind = "<leader>ns",
      show_size = true,
      prefix = "✗",
    })
  end,
}
