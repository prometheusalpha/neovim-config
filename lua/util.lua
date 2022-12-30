local M = {}

local function map(mode, lhs, rhs, opts)
  local options = { silent = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

function M.source()
  vim.cmd("source ~/.config/nvim/init.lua")

  local paths = vim.split(vim.fn.glob("~/.config/nvim/lua/*/*.lua"), "\n")

  for _, file in pairs(paths) do
    vim.cmd("source " .. file)
  end
end

function M.mapAll(keymaps)
  for mode, keymap in pairs(keymaps) do
    if mode == "x" then
      for key, expanded in pairs(keymap) do
        map("n", key, expanded)
        map("v", key, expanded)
      end
    else
      for key, expanded in pairs(keymap) do
        map(mode, key, expanded)
      end
    end
  end
end

return M
