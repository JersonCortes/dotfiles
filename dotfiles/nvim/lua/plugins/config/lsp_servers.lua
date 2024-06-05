--Servers
require('lspconfig')['lua_ls'].setup{
	on_attach = on_attach,
	flags = lsp_flags,
	capabilities = capabilities,
}
require('lspconfig')['rust_analyzer'].setup{
	on_attach = on_attach,
	flags = lsp_flags,
	capabilities = capabilities,
	-- Server-specific settings...
	cmd = { 'podman', 'exec', '-i', 'gh-pages-container', 'rust-analyzer' },

	settings = {
		["rust-analyzer"] = {
			-- Other Settings ...
			procMacro = {
				ignored = {
					leptos_macro = {
						-- optional: --
						-- "component",
						"server",
					},
				},
			},
		},
	}

}

require('lspconfig')['clangd'].setup{
	on_attach = on_attach,
	flags = lsp_flags,
	capabilities = capabilities,
}
require('lspconfig')['asm_lsp'].setup{
	on_attach = on_attach,
	flags = lsp_flags,
	capabilities = capabilities,
}
require('lspconfig')['cmake'].setup{
	on_attach = on_attach,
	flags = lsp_flags,
	capabilities = capabilities,
}
require('lspconfig')['pyright'].setup{
	on_attach = on_attach,
	flags = lsp_flags,
	capabilities = capabilities,
}
