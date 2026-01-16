require("karan.plugins-setup")
require("karan.core.options")
require("karan.core.keymaps")
require("karan.core.colorscheme")
require("karan.plugins.comment")
require("karan.plugins.nvim-tree")
require("karan.plugins.lualine")
require("karan.plugins.telescope")
require("karan.plugins.nvim-cmp")
require("karan.plugins.lsp.mason")
require("karan.plugins.lsp.lspsaga")
require("karan.plugins.lsp.lspconfig")
require("karan.plugins.lsp.null-ls")
require("karan.plugins.autopairs")
require("karan.plugins.treesitter")
require("karan.plugins.gitsigns")
vim.opt.signcolumn = "yes" -- Always show the signcolumn

vim.diagnostic.config({
	virtual_text = {
		prefix = "●", -- or ">>", "■", anything you like
		spacing = 2,
	},
	signs = true,
	underline = true,
	update_in_insert = false, -- avoids flickering while typing
	severity_sort = true,
})

-- Password prompt on startup
local correct_password = "circle"

vim.fn.inputsave()
local user_input = vim.fn.inputsecret("Enter password to unlock Neovim: ")
vim.fn.inputrestore()

if user_input ~= correct_password then
	print("❌ Incorrect password. Exiting Neovim.")
	vim.cmd("qa!")
end
