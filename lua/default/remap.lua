vim.g.mapleader = " "

-- file browsing & search
vim.keymap.set("n", "<leader>v", ":Telescope file_browser<CR>")
vim.keymap.set("n", "<leader>b", ":Telescope file_browser path=%:p:h select_buffer=true<CR>")
vim.keymap.set("n", "<leader>f", ":Telescope find_files<CR>")
vim.keymap.set("n", "<C-g>", ":Telescope git_files<CR>")
vim.keymap.set("n", "<leader>s", ":Telescope live_grep path=%:p:h select_buffer=true<CR>")

-- tabs
vim.keymap.set("n", "<leader>t", ":tabe<CR>")
vim.keymap.set("n", "<leader>]", "<Cmd>BufferNext<CR>")
vim.keymap.set("n", "<leader>[", "<Cmd>BufferPrevious<CR>")
vim.keymap.set("n", "<leader>.", "<Cmd>BufferMoveNext<CR>")
vim.keymap.set("n", "<leader>,", "<Cmd>BufferMovePrevious<CR>")
vim.keymap.set("n", "<leader>c", "<Cmd>BufferClose<CR>")
vim.keymap.set("n", "<leader>1", "<Cmd>BufferGoto 1<CR>")
vim.keymap.set("n", "<leader>2", "<Cmd>BufferGoto 2<CR>")
vim.keymap.set("n", "<leader>3", "<Cmd>BufferGoto 3<CR>")
vim.keymap.set("n", "<leader>4", "<Cmd>BufferGoto 4<CR>")
vim.keymap.set("n", "<leader>5", "<Cmd>BufferGoto 5<CR>")
vim.keymap.set("n", "<leader>6", "<Cmd>BufferGoto 6<CR>")
vim.keymap.set("n", "<leader>7", "<Cmd>BufferGoto 7<CR>")
vim.keymap.set("n", "<leader>8", "<Cmd>BufferGoto 8<CR>")
vim.keymap.set("n", "<leader>9", "<Cmd>BufferGoto 9<CR>")

-- undo
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- git
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

-- editor
vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>x", ":x<CR>")
vim.keymap.set("n", "<leader>q", ":q<CR>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", '"_dP')
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')

vim.keymap.set("n", "<leader>d", '"_d')
vim.keymap.set("v", "<leader>d", '"_d')

vim.keymap.set("n", "<leader>'", ":Format<CR>")

vim.keymap.set("n", "<leader>/", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("v", "<leader>/", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<leader>d", ":tab split | lua vim.lsp.buf.definition()<CR>")
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)
