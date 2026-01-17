-- =========================
-- Opções gerais do Neovim
-- =========================

local opt = vim.opt

-- Indentação (42 School)
opt.tabstop = 4
opt. shiftwidth = 4
opt.expandtab = false       -- Tabs reais, não espaços
opt.smarttab = true

-- Interface
opt.signcolumn = "auto:1"
opt.listchars = { eol = '¬', tab = '>-', trail = '~' }

-- Usuário 42
vim.g.user = "fshiniti"
vim.g.mail = "fshiniti@student. 42porto.com"
