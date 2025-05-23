return {
  -- mason
  {
    "williamboman/mason.nvim",
    lazy = false,
    build = ":MasonUpdate",
    config = function(_, opts)
      require("mason").setup(opts)
    end,
  },

  -- mason-lspconfig
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    dependencies = {
      "williamboman/mason.nvim",
    },
    opts = function()
      return {
        ensure_installed = {
          "lua_ls",
          "ts_ls",
        }
      }
    end,
    config = function(_, opts)
      require("mason-lspconfig").setup(opts)

      local handlers = {
        function(server_name)
          require("lspconfig")[server_name].setup({})
        end,
        ["css-languageserver"] = function()
          require("cssls").ts_ls.setup {
            filetypes = { "css", "scss", "less", "svelte" }
          }
        end,
        ["typescript-language-server"] = function()
          require("lspconfig").ts_ls.setup {}
        end,
      }

      require("mason-lspconfig").setup_handlers(handlers)
    end,
  },

  -- nvim-lspconfig
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPost", "BufWritePost", "BufNewFile" },
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    opts = function() end,
    config = function(_, opts)
    end,
  },

  {
    "rachartier/tiny-inline-diagnostic.nvim",
    event = "VeryLazy", -- Or `LspAttach`
    priority = 1000,    -- needs to be loaded in first
    config = function()
      require('tiny-inline-diagnostic').setup()
      vim.diagnostic.config({ virtual_text = false }) -- Only if needed in your configuration, if you already have native LSP diagnostics
    end
  },

  -- treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPre", "BufNewFile" },
    lazy = vim.fn.argc(-1) == 0,
    opts = {
      highlight = { enable = true },
      indent = { enable = true },
      ensure_installed = {
        "bash",
        "diff",
        "gitignore",
        "html",
        "javascript",
        "jsdoc",
        "json",
        "jsonc",
        "lua",
        "luadoc",
        "luap",
        "markdown",
        "markdown_inline",
        "printf",
        "query",
        "regex",
        "scss",
        "svelte",
        "terraform",
        "tsx",
        "typescript",
        "vim",
        "vimdoc",
        "xml",
        "yaml",
      },
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
    end,
  },
}
