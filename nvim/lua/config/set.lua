-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- tabs & indentation
vim.opt.tabstop = 4         -- 4 spaces for tabs
vim.opt.shiftwidth = 4      -- 4 spaces for indent width
vim.opt.expandtab = true    -- expand tab to spaces
vim.opt.autoindent = true   -- copy indent from current line when starting new one

vim.opt.smartindent = true  
vim.opt.wrap = false        -- to not warp to another word

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

-- UI improve
vim.opt.termguicolors = true    -- for my colorscheme to work
vim.opt.background = "dark"     -- colorschemes will be use dark
vim.opt.signcolumn = "yes"      -- show sign column so that text doesn't shift
vim.opt.colorcolumn = "80"      -- enable fill line in column 80

vim.opt.scrolloff = 8
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.backspace = "indent,eol,start"  -- allow backspace on indent, end of line or inset mode start position
vim.opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
vim.opt.splitright = true -- split vertical window to the right
vim.opt.splitbelow = true -- split horizontal window to the bottom
