return
-- telescope (fuzy find)
{
  "nvim-telescope/telescope.nvim",
  lazy = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-ui-select.nvim",
  },
  opts = {
    defaults = {
      file_ignore_patterns = {
        "node_modules/",
        ".git/",
        "-lock.json",
      },
    },
    pickers = {
      find_files = {
        hidden = true,
      },
    },
    extensions = {
      file_browser = {
        grouped = true,
        hijack_netrw = true,
        hidden = true,
      },
      ["ui-select"] = {
        require("telescope.themes").get_dropdown({}),
      },
    },
  },
  config = function(_, opts)
    require("telescope").setup(opts)
    require("telescope").load_extension("ui-select")
  end,
}
