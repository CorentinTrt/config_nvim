return {
  -- which-key (hints about keymaps)
  {
    "folke/which-key.nvim",
    lazy = false,
    opts_extend = { "spec" },
    opts = {
      preset = "helix",
      defaults = {},
      spec = {
        {
          mode = { "n", "v" },
          { "<leader>b", group = "Buffer" },
          { "<leader>e", group = "Editor" },
          { "<leader>f", group = "File/Find" },
          { "<leader>s", group = "Search" },
          -- better descriptions
          { "gx", desc = "Open with system app" },
        },
      },
    },
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Keymaps (which-key)",
      },
      {
        "<c-w><space>",
        function()
          require("which-key").show({ keys = "<c-w>", loop = true })
        end,
        desc = "Window Hydra Mode (which-key)",
      },
    },
    config = function(_, opts)
      local wk = require("which-key")
      wk.setup(opts)
      -- if not vim.tbl_isempty(opts.defaults) then
      --   LazyVim.warn("which-key: opts.defaults is deprecated. Please use opts.spec instead.")
      --   wk.register(opts.defaults)
      -- end
    end,
  },

  -- ufo (code folding)
  {
    "kevinhwang91/nvim-ufo",
    event = { "BufReadPost", "BufWritePost", "BufNewFile" },
    dependencies = {
      "kevinhwang91/promise-async"
    },
    opts = function()
      return {
        provider_selector = function()
          return { "lsp", "indent" }
        end,
      }
    end,
    config = function(_, opts)
      require("ufo").setup(opts)
    end
  }
}
