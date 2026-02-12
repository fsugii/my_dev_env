-- =========================
-- Opções gerais do Neovim
-- =========================

local opt = vim.opt

-- Configuração 42 School
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4         -- Adicione isto: mantém o comportamento do Tab consistente
opt.expandtab = false       -- Tabs reais
opt.smarttab = true

-- Desative o smartindent se ele estiver a causar saltos
-- O smartindent às vezes tenta adivinhar a indentação de C e falha com Tabs
opt.autoindent = true
opt.smartindent = false     -- Tente desativar se o cursor pular sozinho

-- Interface
opt.signcolumn = "auto:1"
opt.listchars = { eol = '¬', tab = '>-', trail = '~' }

-- Usuário 42
vim.g.user = "fshiniti"
vim.g.mail = "fshiniti@student. 42porto.com"
