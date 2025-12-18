return {
  -- bufferline
  {
    "akinsho/bufferline.nvim",
    lazy = false,
    opts = {
      options = {
        diagnostics = "nvim_lsp",
        numbers = "ordinal",
        offsets = {
          {
            filetype = "neo-tree",
            text = "Neo-tree",
            highlight = "Directory",
            text_align = "left",
          },
        },
        themable = true,
      },
    },
    config = function(_, opts)
      require("bufferline").setup(opts)
    end,
  },

  -- dashboard (start screen)
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      config = {
        week_header = {
          enable = true,
        },
      },
      hide = {
        statusline = true,
        tabline = true,
        winbar = true,
      },
    },
    config = function(_, opts)
      require("dashboard").setup(opts)
    end,
  },

  -- lualine (status line)
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      options = {
        theme = "auto",
      },
    },
    config = function(_, opts)
      require("lualine").setup(opts)
    end,
  },

  -- mini-indentscope (indent vizualization)
  {
    "echasnovski/mini.indentscope",
    event = { "BufReadPre", "BufNewFile" },
    opts = {},
    config = function(_, opts)
      require("mini.indentscope").setup(opts)
    end,
  },

  -- noice - floating text areas
  {
    "folke/noice.nvim",
    lazy = false,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
      "hrsh7th/nvim-cmp",
    },
    opts = {
      lsp = {
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
        },
      },
      presets = {
        bottom_search = true, -- use a classic bottom cmdline for search
        command_palette = true, -- position the cmdline and popupmenu together
        long_message_to_split = true, -- long messages will be sent to a split
        inc_rename = false, -- enables an input dialog for inc-rename.nvim
        lsp_doc_border = false, -- add a border to hover docs and signature help
      },
    },
    config = function(_, opts)
      require("noice").setup(opts)
      require("notify").setup({
        background_colour = "#000000",
      })
    end,
  },
}
