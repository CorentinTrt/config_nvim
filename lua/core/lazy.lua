require("core.bootstrap")

require("core.cmds")
require("core.keymaps")
require("core.options")

require("lazy").setup({
  spec = {
    { import = "plugins" },
  },
  defaults = {
    lazy = true,
    version = false,
  },
  checker = {
    enabled = true,
    notify = true,
  },
  performance = {
    rtp = {
      -- disable some rtp plugins
      disabled_plugins = {
        "gzip",
        -- "matchit",
        -- "matchparen",
        -- "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})
