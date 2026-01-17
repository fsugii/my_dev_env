-- =========================
-- Funções customizadas
-- =========================

local M = {}

-- Toggle autocomplete manual
function M.toggle_autocomplete()
  local cmp = require("cmp")
  local current = cmp.get_config().completion.autocomplete
  
  if current == false then
    cmp.setup.buffer({
      completion = {
        autocomplete = {
          require("cmp.types").cmp.TriggerEvent.TextChanged
        }
      }
    })
    print("✅ Autopreenchimento HABILITADO")
  else
    cmp.setup.buffer({ completion = { autocomplete = false } })
    print("❌ Autopreenchimento DESABILITADO")
  end
end

-- Criar comando
vim.api.nvim_create_user_command('ToggleAutocomplete', M.toggle_autocomplete, {})

return M
