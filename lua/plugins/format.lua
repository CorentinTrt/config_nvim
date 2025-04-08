return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = function()
    return {
      default_format_opts = {
        timeout_ms = 3000,
        async = false,
        quiet = false,
        lsp_format = "fallback",
      },
      formatters_by_ft = {
        lua = { "stylelua" },
        javascript = { "prettier" },
        svelte = { "prettier" },
        terraform = { "tflint" },
        typescript = { "prettier" },
      },
    }
  end,
  config = function(_, opts)
    require("conform").setup(opts)
  end,
}
