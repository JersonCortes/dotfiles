require("nvchad.configs.lspconfig").defaults()

local servers = {
  bashls = {},
  cssls = {},
  docker_compose_language_service = {},
  dockerls = {},
  html = {},
  pyright = {},
  rust_analyzer = {
    cmd = require('devcontainers').lsp_cmd(vim.lsp.config.rust_analyzer.cmd)
  },
  gopls= {
    cmd = require('devcontainers').lsp_cmd(vim.lsp.config.gopls.cmd)
  },

}

for name, opts in pairs(servers) do
  vim.lsp.enable(name)
  vim.lsp.config(name, opts)
end

-- read :h vim.lsp.config for changing options of lsp servers 
