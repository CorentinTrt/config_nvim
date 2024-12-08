local conform = require("conform")

conform.setup({
	formatters_by_ft = {
		bash = { "shellharden" },
		javascript = { "prettierd", "prettier", stop_after_first = true },
		lua = { "stylua" },
		markdown = { "prettier" },
		php = { "php-cs-fixer" },
		proto = { "buf" },
		svelte = { "prettierd", "prettier", stop_after_first = true },
		typescript = { "prettierd", "prettier", stop_after_first = true },
	},
	format_on_save = {
		-- These options will be passed to conform.format()
		timeout_ms = 500,
		lsp_format = "fallback",
	},
})
