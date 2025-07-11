require("nvchad.configs.lspconfig").defaults()

local servers = {
  bashls = {},
  cssls = {},
  docker_compose_language_service = {},
  dockerls = {},
  html = {},
  pyright = {},
  rust_analyzer = {},
}

for name, opts in pairs(servers) do
  vim.lsp.enable(name)
  vim.lsp.config(name, opts)
end

-- read :h vim.lsp.config for changing options of lsp servers 
