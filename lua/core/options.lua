-- globals
vim.g.autoformat = true
vim.g.root_spec = { "lsp", { ".git", "lua" }, "cwd" }
vim.g.markdown_recommended_style = 0

-- opt
local opt = vim.opt

-- editor
opt.backup = false
opt.conceallevel = 2 -- hide * markup for bold and italic, but not markers with substitutions
opt.confirm = true -- confirm before closing
opt.cursorline = true -- enable highlighting of the current line
opt.cursorlineopt = "number"
opt.expandtab = true -- use spaces instead of tabs
opt.fillchars = {
  foldopen = "",
  foldclose = "",
  fold = " ",
  foldsep = " ",
  diff = "╱",
  eob = " ",
}
opt.foldcolumn = "1"
opt.foldenable = true
opt.foldlevel = 99
opt.foldlevelstart = 99
opt.foldmethod = "manual"
opt.hlsearch = false
opt.inccommand = "nosplit" -- preview incremental substitute
opt.incsearch = true
opt.jumpoptions = "view"
opt.laststatus = 3 -- global statusline
opt.linebreak = true -- Wrap lines at convenient points
opt.nu = true -- enable line number
opt.number = true -- Print line number
opt.pumblend = 10 -- Popup blend
opt.pumheight = 10 -- Maximum number of entries in a popup
opt.relativenumber = true
opt.ruler = false -- Disable the default ruler
opt.scrolloff = 8
opt.shiftround = true -- Round indent
opt.shiftwidth = 2
opt.softtabstop = 2
opt.showmode = false -- Dont show mode since we have a statusline
opt.sidescrolloff = 8 -- Columns of context
opt.signcolumn = "yes"
opt.smartindent = true
opt.spelllang = { "en" }
opt.swapfile = false
opt.tabstop = 2 -- Number of spaces tabs count for
opt.termguicolors = true
opt.title = true
opt.titlestring = "NVIM - /%{fnamemodify(getcwd(), ':t')}"
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true
opt.winbar = "%=%m %f" -- enable file path on the top right corner
