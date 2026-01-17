-- =========================
-- Atalhos de teclado
-- =========================

local keymap = vim.keymap. set

-- Diagnóstico flutuante (LSP/ALE)
keymap('n', '<leader>d', vim.diagnostic.open_float, { desc = "Diagnostic float" })

-- Toggle autocomplete
keymap('n', '<leader>ta', function()
  require("config.functions").toggle_autocomplete()
end, { desc = "Toggle autocomplete" })
