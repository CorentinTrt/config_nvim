return {
  "mfussenegger/nvim-lint",
  opts = function()
    return {
      events = { "BufWritePost", "BufReadPost", "InsertLeave" },
      linters_by_ft = {
        lua = { "selene" },
        terraform = { "tflint" }
      }
    }
  end,
  config = function(_, opts)
    local linter = require("lint")
    linter.linters_by_ft = opts.linters_by_ft
  end
}
