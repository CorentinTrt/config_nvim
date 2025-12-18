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
        "lua_ls",
        "ts_ls",
      },
    },
    config = function(_, opts)
      require("mason-lspconfig").setup(opts)
      -- local handlers = {
      --   function(server_name)
      --     require("lspconfig")[server_nasme].setup({})
      --   end,
      -- }
      -- require("mason-lspconfig").setup_handlers(handlers)
    end,
  },

  -- nvim-lspconfig (lsps configurations)
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      -- "hrsh7th/cmp-nvim-lsp",
    },
    opts = {},
    config = function(_, opts)
      -- local capabilities = require("cmp_nvim_lsp").default_capabilities()
      -- vim.lsp.config("*", { capabilities = capabilities })
      vim.lsp.enable("lua_ls")
    end,
  },
}
