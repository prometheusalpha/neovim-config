local M = {}
local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
local workspace_dir = vim.fn.stdpath('data') .. '/site/java/workspace-root/' .. project_name
os.execute("mkdir " .. workspace_dir)

local jdtls_dir = vim.fn.stdpath('data') .. '/mason/packages/jdtls'
local path_to_lsp_config = jdtls_dir .. "/config_linux"
local lombok_path = jdtls_dir .. "/lombok.jar"
local path_to_plugins = jdtls_dir .. "/plugins/"
local path_to_jar = path_to_plugins .. "org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar"

M.config = {
  cmd = {
    '/usr/lib/jvm/java/bin/java',
    '-Declipse.application=org.eclipse.jdt.ls.core.id1',
    '-Dosgi.bundles.defaultStartLevel=4',
    '-Declipse.product=org.eclipse.jdt.ls.core.product',
    '-Dlog.protocol=true',
    '-Dlog.level=ALL',
    '-javaagent:' .. lombok_path,
    '-Xms1g',
    '--add-modules=ALL-SYSTEM',
    '--add-opens', 'java.base/java.util=ALL-UNNAMED',
    '--add-opens', 'java.base/java.lang=ALL-UNNAMED',
    '-jar', path_to_jar,
    '-configuration', path_to_lsp_config,
    '-data', workspace_dir
  },
  settings = {
    java = {
      format = {
        settings = { url = "~/.config/nvim/lua/lsp/google_formatter.xml" }
      }
    }
  },
}

return M
