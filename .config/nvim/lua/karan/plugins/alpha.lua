local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- Bold, centered NEOVIM ASCII header
dashboard.section.header = {
	type = "text",
	val = {
		[[                                                     ]],
		[[ ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗   ]],
		[[ ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║   ]],
		[[ ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║   ]],
		[[ ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║   ]],
		[[ ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║   ]],
		[[ ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝   ]],
		[[               🧠 Welcome to NEOVIM 🧠               ]],
	},
	opts = {
		position = "center",
		hl = "Type",
	},
}

-- Buttons section
dashboard.section.buttons.val = {
	dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("SPC f f", "󰈞  Find file", ":Telescope find_files<CR>"),
	dashboard.button("SPC f o", "  Recently opened files", ":Telescope oldfiles<CR>"),
	dashboard.button("SPC f r", "  Frecency/MRU", ":Telescope frecency<CR>"),
	dashboard.button("SPC f g", "  Find word", ":Telescope live_grep<CR>"),
	dashboard.button("SPC f m", "  Bookmarks", ":Telescope marks<CR>"),
	dashboard.button("SPC s l", "  Last session", ":SessionManager load_last_session<CR>"),
}

-- Footer section
dashboard.section.footer.val = "⚡ Karan's NeoVim Setup ⚡"
dashboard.section.footer.opts = {
	hl = "Constant",
	position = "center",
}

-- Final dashboard layout with spacing
dashboard.config.layout = {
	{ type = "padding", val = 4 },
	dashboard.section.header,
	{ type = "padding", val = 2 },
	dashboard.section.buttons,
	{ type = "padding", val = 2 },
	dashboard.section.footer,
}

-- Apply the config
alpha.setup(dashboard.config)

require("nvim-web-devicons").set_icon({
	css = {
		icon = "", -- or try "", "", ""
		color = "#563d7c",
		name = "CSS",
	},
})
