-- =========================
-- 42 / Copilot Neovim Config
-- =========================

-- Leader key
vim.g.mapleader = " "

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim. loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob: none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Carregar configurações
require("config.options")
require("config.keymaps")
require("config.functions")

-- Carregar plugins
require("lazy").setup("plugins")

-- Transparência (pode mover para config/theme. lua depois)
vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "NONE" })
vim.api.nvim_set_hl(0, "SignColumn", { bg = "NONE" })
vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "NONE" })
