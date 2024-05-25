vim.g.mapleader = " "
vim.opt.backup = false -- creates a backup file
vim.opt.clipboard = "unnamedplus" -- allows neovim to access the system clipboard
vim.opt.cmdheight = 1 -- more space in the neovim command line for displaying messages
vim.opt.conceallevel = 0 -- so that `` is visible in markdown files
vim.opt.hlsearch = false -- highlight all matches on previous search pattern
vim.opt.ignorecase = true -- ignore case in search patterns
vim.opt.mouse = "a" -- allow the mouse to be used in neovim
vim.opt.pumheight = 10 -- pop up menu height
vim.opt.showmode = false
vim.opt.showtabline = 4 -- always show tabs
vim.opt.smartcase = true -- smart case
vim.opt.smartindent = true -- make indenting smarter again
vim.opt.splitbelow = true -- force all horizontal splits to go below current window
vim.opt.splitright = true -- force all vertical splits to go to the right of current window
vim.opt.swapfile = false -- creates a swapfile
vim.opt.termguicolors = true -- set term gui colors (most terminals support this)
vim.opt.timeout = true
vim.opt.timeoutlen = 300 -- time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.undofile = true -- enable persistent undo
vim.opt.updatetime = 300 -- faster completion (4000ms default)
vim.opt.writebackup = false -- if a file is being edited by another programit is not allowed to be
vim.opt.expandtab = false -- convert tabs to spaces
vim.opt.shiftwidth = 2 -- the number of spaces inserted for each indentation
vim.opt.tabstop = 2 -- insert 4 spaces for a tab
vim.opt.softtabstop = 2
vim.opt.cursorline = true -- highlight the current line
vim.opt.number = false -- set numbered lines
vim.opt.relativenumber = false -- set relative numbered lines
vim.opt.numberwidth = 2 -- set number column width to 4
vim.opt.signcolumn = "yes" -- always show the sign column, otherwise it would shift the text each time
vim.opt.wrap = false -- display lines as one long line
vim.opt.syntax = "ON"
vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 10
vim.opt.hidden = true
vim.opt.errorbells = false
vim.opt.autochdir = false
vim.opt.modifiable = true
vim.opt.encoding = "UTF-8"
vim.opt.guicursor =
	"n-v-c:block,i-ci-ve:block,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon950-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"
vim.opt.foldmethod = "marker"
vim.opt.incsearch = true
vim.opt.list = true
vim.g.loaded_netrwPlugin = 1
vim.g.loaded_netrw = 1
vim.opt.gdefault = true

-- Highlight on yank
vim.api.nvim_create_autocmd('TextYankPost', {
	group = vim.api.nvim_create_augroup('highlight_yank', { clear = true }),
	callback = function()
		vim.highlight.on_yank { timeout = 50 }
	end,
})

-- let g:OmniSharp_server_path = '~/vsdbg/omnisharp/OmniSharp.exe'
