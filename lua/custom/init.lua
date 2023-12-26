local autocmd = vim.api.nvim_create_autocmd
local vim_settings_path = vim.api.nvim_get_runtime_file("lua/custom/settings.lua", false)[1]

if vim_settings_path then
  dofile(vim_settings_path)
end

-- Auto resize panes when resizing nvim window
autocmd("VimResized", {
  pattern = "*",
  command = "tabdo wincmd =",
})
