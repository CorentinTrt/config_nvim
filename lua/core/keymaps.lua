vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- editor (<leader>e)
vim.keymap.set("n", "<leader>e'", ":Format<CR>", { desc = 'Format current buffer' })
vim.keymap.set("n", "<leader>ef", "za", { desc = 'Fold (ufo) under cursor' })
-- vim.keymap.set('n', 'zR', require('ufo').openAllFolds, { desc = 'Open (ufo) all folds' })
-- vim.keymap.set('n', 'zM', require('ufo').closeAllFolds, { desc = 'Close (ufo) all folds' })
vim.keymap.set("n", "<leader>eq", ":qa<CR>", { desc = 'Quit session' })
vim.keymap.set("n", "<leader>ew", ":w<CR>", { desc = 'Save current buffer' })
vim.keymap.set("n", "<leader>ex", ":x<CR>", { desc = 'Save current buffer and quit session' })

-- files/folders/find (<leader>x)
vim.keymap.set("n", "<leader>ft", ":Neotree toggle<CR>", { desc = 'Toggle neo-tree' })
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", { desc = 'Find (files)' })
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep path=%:p:h select_buffer=true<CR>", { desc = 'Find (grep)' })

-- windows (<leader>w)
-- vim.keymap.set("n", "<leader>w", "<C-w>")

-- tabs
vim.keymap.set("n", "<S-l>", "<cmd>BufferLineCycleNext<CR>")
vim.keymap.set("n", "<S-h>", "<cmd>BufferLineCyclePrev<CR>")
vim.keymap.set("n", "<C-l>", "<cmd>BufferLineMoveNext<CR>")
vim.keymap.set("n", "<C-h>", "<cmd>BufferLineMovePrev<CR>")
vim.keymap.set("n", "<leader>bc", "<cmd>BufferCloseCurrent<CR>", { desc = 'Close current buffer' })

-- yank & delete
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("x", "<leader>p", '"_dP')
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')

vim.keymap.set("n", "<leader>d", '"_d')
vim.keymap.set("v", "<leader>d", '"_d')

-- search (<leader>s)
vim.keymap.set("n", "<leader>sc", ":noh<CR>", { desc = 'Cancel search' })
vim.keymap.set("v", "<leader>sc", ":noh<CR>", { desc = 'Cancel search' })
vim.keymap.set("n", "<leader>s/", [[/\<<C-r><C-w><CR>]], { desc = 'Search under cursor' })
vim.keymap.set("v", "<leader>s/", [[/\<<C-r><C-w><CR>]], { desc = 'Search under cursor' })
vim.keymap.set("n", "<leader>sr", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = 'Search and replace under cursor' })
vim.keymap.set("v", "<leader>sr", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = 'Search and replace under cursor' })
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- not-categorized
-- vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
