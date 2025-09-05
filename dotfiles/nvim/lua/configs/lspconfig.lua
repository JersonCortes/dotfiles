require("nvchad.configs.lspconfig").defaults()

local servers = {
  bashls = {},
  cssls = {},
  docker_compose_language_service = {},
  dockerls = {},
  html = {},
  pyright = {},
  rust_analyzer = {},
  gopls = {
    cmd = require('devcontainers').lsp_cmd({ 'gopls' }),
  },
  terraformls = {},
  pylsp = {},
}

for name, opts in pairs(servers) do
  vim.lsp.enable(name)
  vim.lsp.config(name, opts)
end

-- read :h vim.lsp.config for changing options of lsp servers 
