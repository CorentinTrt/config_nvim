return {
  -- mason (lsps manager)
  {
    "williamboman/mason.nvim",
    event = { "BufReadPre", "BufNewFile" },
    build = ":MasonUpdate",
    opts = {},
    config = function(_, opts)
      require("mason").setup(opts)
    end,
  },

  -- mason-lspconfig (bridge between mason and lspconfig)
  {
    "williamboman/mason-lspconfig.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "williamboman/mason.nvim",
    },
    opts = {
      ensure_installed = {
        "bashls",
        "lua_ls",
        "ts_ls",
      },
    },
    config = function(_, opts)
      require("mason-lspconfig").setup(opts)
    end,
  },

  -- nvim-lspconfig (lsps configurations)
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    opts = {},
    config = function(_, opts)
      vim.lsp.enable("bashls")
      vim.lsp.enable("lua_ls")
    end,
  },
}
