local configs = require("plugins.configs.lspconfig")
local on_attach = configs.on_attach
local capabilities = configs.capabilities

local lspconfig = require "lspconfig"

lspconfig.clangd.setup {
	on_attach = function(client, bufnr)
		client.server_capabilities.signatureHelpProvider = false
		on_attach(client, bufnr)
	end,
	capabilities = capabilities
}