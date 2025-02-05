local lint = require("lint")

lint.linters_by_ft = {
	bash = { "shellcheck" },
	javascript = { "eslint_d" },
	php = { "phpstan" },
	proto = { "buf" },
	svelte = { "eslint_d" },
	terraform = { "tflint" },
	typescritpt = { "eslint_d" },
}
