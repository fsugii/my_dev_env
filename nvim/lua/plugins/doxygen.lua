return {
  "vim-scripts/DoxygenToolkit.vim",
  -- opcional: só carregar quando usar comandos (se quiser lazy-load)
  -- cmd = { "Dox", "DoxAuthor", "DoxLic", "DoxBlock", "DoxLine", "DoxComment" },

  config = function()
    -- ajustes opcionais
    vim.g.DoxygenToolkit_authorName = "fshiniti"
    vim.g.DoxygenToolkit_briefTag_pre = "@brief "
    vim.g.DoxygenToolkit_paramTag_pre = "@param "
    vim.g.DoxygenToolkit_returnTag = "@return "
  end,
}
