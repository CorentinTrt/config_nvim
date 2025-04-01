vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- editor
vim.keymap.set("n", "<leader>'", ":Format<CR>")

-- explore
vim.keymap.set("n", "<leader>et", ":Neotree toggle<CR>")
vim.keymap.set("n", "<leader>ef", ":Telescope find_files<CR>")
vim.keymap.set("n", "<leader>eg", ":Telescope live_grep path=%:p:h select_buffer=true<CR>")

-- windows & tabs
vim.keymap.set("n", "<leader>w", "<C-w>")

vim.keymap.set("n", "<S-l>", "<cmd>BufferLineCycleNext<CR>")
vim.keymap.set("n", "<S-h>", "<cmd>BufferLineCyclePrev<CR>")
vim.keymap.set("n", "<C-l>", "<cmd>BufferLineMoveNext<CR>")
vim.keymap.set("n", "<C-h>", "<cmd>BufferLineMovePrev<CR>")
vim.keymap.set("n", "<leader>bc", "<cmd>BufferCloseCurrent<CR>")

-- yank & delete
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("x", "<leader>p", '"_dP')
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')

vim.keymap.set("n", "<leader>d", '"_d')
vim.keymap.set("v", "<leader>d", '"_d')

-- search
vim.keymap.set("n", "<leader>/", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("v", "<leader>/", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- not-categorized
-- vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
