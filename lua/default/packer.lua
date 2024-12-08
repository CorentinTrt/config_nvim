vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use({
		"nvim-telescope/telescope-file-browser.nvim",
		requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
	})

	use("CorentinTrt/config_kanagawa-clear")

	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })

	use("mbbill/undotree")

	use("tpope/vim-fugitive")

	use({ "VonHeikemen/lsp-zero.nvim", branch = "v4.x" })
	use("neovim/nvim-lspconfig")
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-nvim-lsp")
	use("williamboman/mason.nvim")
	use("mhartington/formatter.nvim")
	use("stevearc/conform.nvim")
	use("mfussenegger/nvim-lint")

	use("nvim-tree/nvim-web-devicons") -- devs icons
	use("lewis6991/gitsigns.nvim") -- git status
	use("romgrk/barbar.nvim") -- tabline
end)
