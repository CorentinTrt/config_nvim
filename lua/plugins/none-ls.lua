-- none-ls (format and lint)
return {
  "nvimtools/none-ls.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {},
  config = function(_, opts)
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
      },
    })
  end,
}
