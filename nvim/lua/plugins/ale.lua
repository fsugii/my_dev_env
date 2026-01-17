-- =========================
-- ALE (Linting)
-- =========================

return {
  "dense-analysis/ale",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    vim.g.ale_linters = { c = { 'gcc' } }
    vim. g.ale_fixers = { c = { 'clang-format' } }
    vim. g.ale_sign_error = '✗'
    vim. g.ale_sign_warning = '⚠'
    vim.g.ale_virtualtext_cursor = 0
    vim. g.ale_c_cc_options = '-std=c11 -Wall -I./includes -I./libft'
    vim. g.ale_c_gcc_options = '-std=c11 -Wall -I./includes -I./libft'
  end,
}
