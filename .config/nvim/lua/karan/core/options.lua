local opt = vim.opt --for consiseness


--line numbers 
opt.relativenumber = true
opt.number = true

--tabs & indentation
opt.tabstop = 4
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

--line wrapping
opt.wrap = false

--search settings
opt.ignorecase = true
opt.smartcase = true

--cursor line
opt.cursorline = true

--appearence
-- opt.termguicolors = true
-- opt.background = "dark"
opt.signcolumn = "no"

--backspace key 
opt.backspace = "indent,eol,start"


--clipboard
opt.clipboard:append("unnamedplus")

--split windows
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")

