-- import gitsigns plugin safely
local setup, gitsigns = pcall(require, "gitsigns")
if not setup then
	return
end

-- configure/enable gitsigns
-- gitsigns.setup()

-- configure/enable gitsigns
gitsigns.setup({
	signs = {
		add = { text = "▎" },
		change = { text = "▎" },
		delete = { text = "_" },
		topdelete = { text = "‾" },
		changedelete = { text = "~" },
	},
	signcolumn = true, -- Ensure this is explicitly enabled
	numhl = false, -- optional: if you want number highlighting
	linehl = false, -- optional: line highlighting
	watch_gitdir = {
		interval = 1000,
		follow_files = true,
	},
	current_line_blame = false,
	update_debounce = 100,
	status_formatter = nil, -- Use default
})
