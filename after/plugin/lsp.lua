local lsp_zero = require("lsp-zero")

lsp_zero.extend_lspconfig({
	sign_text = true,
	capabilities = require("cmp_nvim_lsp").default_capabilities(),
})

local lspconfig = require("lspconfig")

-- bash
lspconfig.bashls.setup({})

-- docker
lspconfig.docker_compose_language_service.setup({})
lspconfig.dockerls.setup({})
-- javascript / typescript
lspconfig.eslint.setup({
	filetypes = {
		"javascript",
	},
})
lspconfig.svelte.setup({
	filetypes = {
		"svelte",
	},
})
lspconfig.ts_ls.setup({
	filetypes = {
		"typescript",
	},
})

-- php
lspconfig.intelephense.setup({})
vim.tbl_deep_extend("keep", lspconfig, {
	lsp_name = {
		cmd = { "command" },
		filetypes = "php",
		name = "php-cs-fixer",
		root_dir = vim.fn.getcwd(),
	},
})

-- lua
lspconfig.lua_ls.setup({
	settings = {
		Lua = {
			runtime = {
				version = "LuaJIT",
			},
			diagnostics = {
				globals = {
					"vim",
					"require",
				},
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
			},
		},
	},
})

-- json
lspconfig.jsonls.setup({})

-- ts
lspconfig.ts_ls.setup({})
