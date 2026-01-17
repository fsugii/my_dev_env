-- =========================
-- GitHub Copilot
-- =========================

return {
  "github/copilot.vim",
  event = "InsertEnter",
  config = function()
    vim.g.copilot_no_tab_map = true
    vim.g.copilot_assume_mapped = true
    vim.g. copilot_enabled = false
    
    -- Atalhos
    vim.keymap.set('n', '<leader>ce', '<cmd>Copilot<CR>', { desc = "Enable Copilot" })
    vim.keymap.set('i', '<C-l>', 'copilot#Accept("\\<CR>")', {
      expr = true,
      replace_keycodes = false,
      desc = "Accept Copilot suggestion"
    })
  end,
}
