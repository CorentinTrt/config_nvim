-- neo-tree
return {
  "nvim-neo-tree/neo-tree.nvim",
  lazy = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  opts = {
    filesystem = {
      bind_to_cwd = false,
      filtered_items = {
        visible = true,
      },
      follow_current_file = { enabled = true },
      use_libuv_file_watcher = true,
    },
    default_component_configs = {
      indent = {
        with_expanders = true,
        expander_highlight = "NeoTreeExpander",
      },
      git_status = {
        symbols = {
          unstaged = "󰄱",
          staged = "󰱒",
        },
      },
    },
    open_files_do_not_replace_types = { "terminal", "Trouble", "trouble", "qf", "Outline" },
    sources = { "filesystem", "buffers", "git_status" },
    window = {
      mappings = {
        ["l"] = "open",
        ["h"] = "close_node",
      },
    },
  },
  config = function(_, opts)
    require("neo-tree").setup(opts)
  end,
}
