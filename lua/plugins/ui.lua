return {
  -- statusline (tabs)
  {
    "echasnovski/mini.statusline",
    event = { "BufReadPre", "BufNewFile" },
    opts = function()
      return {
        use_icons = true,
        set_vim_settings = true,
      }
    end,
    config = function(_, opts)
      require("mini.statusline").setup(opts)
    end,
  },

  -- bufferline
  {
    "akinsho/bufferline.nvim",
    event = { "BufReadPre", "BufNewFile" },
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

  -- noice - floating text areas
  {
    "folke/noice.nvim",
    lazy = false,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
    opts = function()
      return {
        lsp = {
          override = {
            ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
            ["vim.lsp.util.stylize_markdown"] = true,
            ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
          },
        },
        presets = {
          bottom_search = true,         -- use a classic bottom cmdline for search
          command_palette = true,       -- position the cmdline and popupmenu together
          long_message_to_split = true, -- long messages will be sent to a split
          inc_rename = false,           -- enables an input dialog for inc-rename.nvim
          lsp_doc_border = false,       -- add a border to hover docs and signature help
        },
      }
    end,
    config = function(_, opts)
      require("noice").setup(opts)
    end,
  },

  -- smear-cursor (cursor animation)
  {
    "sphamba/smear-cursor.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = function()
      return {
        smear_between_buffers = true,
        smear_between_neighbor_lines = true,
        scroll_buffer_space = true,
        legacy_computing_symbols_support = false,
        smear_insert_mode = true,
      }
    end,
    config = function(_, opts)
      require("smear_cursor").setup(opts)
    end
  },

  -- mini-indentscope (indent vizualization)
  {
    'echasnovski/mini.indentscope',
    event = { "BufReadPre", "BufNewFile" },
    opts = function()
      return {}
    end,
    config = function(_, opts)
      require('mini.indentscope').setup(opts)
    end,
  },

  -- dashboard (start screen)
  {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    dependencies = { { 'nvim-tree/nvim-web-devicons' } },
    opts = function()
      return {
        config = {
          week_header = {
            enable = true
          },
        },
        hide = {
          statusline = false,
          tabline = false
        }
      }
    end,
    config = function(_, opts)
      require('dashboard').setup(opts)
    end,
  }
}
