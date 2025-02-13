local opts = { noremap = true, silent = true }
local mp = vim.api.nvim_set_keymap
--[[
mp("n", "<C-p>", ":CopilotChatToggle<CR>", opts)
--]]

mp("n", "<A-O>", "<S-O>", opts)
mp("n", "<A-o>", "<S-o>", opts)
mp("n", "<A-Right>", ":CopilotChatToggle<CR>", opts)
mp("n", "<A-t>", ":TransparentToggle<CR>", opts)
mp("n", "<leader>o", ":NvimTreeFocus<CR>", opts)
mp("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

mp("n", "<C-h>", "<C-w>h", opts)
mp("n", "<C-l>", "<C-w>l", opts)
mp("n", "<C-j>", "<C-w>j", opts)
mp("n", "<C-k>", "<C-w>k", opts)
mp("n", "<C-up>", ":resize +2<CR>", opts)
mp("n", "<C-Down>", ":resize -2<CR>", opts)
mp("n", "<C-Left>", ":vertical resize +2<CR>", opts)
mp("n", "<C-Right>", ":vertical resize -2<CR>", opts)
mp("n", "<Left>", ":set nornu<CR>: set nonu<CR>", opts)
mp("n", "<Right>", ":set rnu<CR>:set nu<CR>", opts)
mp("n", "<C-s>", ":write<CR>", opts)
mp("n", "<C-x>", ":q<CR>", opts)
mp("n", "<C-A-x>", ":wqa<CR>", opts)
mp("i", "jj", "<Escape>", opts)
mp("n", "<S-s>", ":%s/", { noremap = true })
mp("n", "<C-g>", "gcc", { noremap = false })
mp("v", "<C-g>", "gcc", { noremap = false })
mp("v", "<", "<gv", opts)
mp("v", ">", ">gv", opts)
mp("n", "<leader>t", ":TransparentToggle<CR>", opts)
mp("n", "<C-A-s>", 'ggVG"+y', opts)
mp("n", "<A-3>", ":CopilotChatToggle<CR>", opts)

mp("n", "<A-q>", "<S-{>", opts)
mp("n", "<A-a>", "<S-}>", opts)
mp("n", "<A-1>", ":", opts)
mp("n", "<A-2>", "/", opts)

mp("n", "<A-g>", "gg", opts)
mp("n", "<A-G>", "G", opts)
mp("i", "<A-z>", "<Escape>", opts)
mp("n", "<A-f>", ":Telescope oldfiles<CR>", opts)
mp("n", "<A-f>", ":Telescope oldfiles<CR>", opts)

mp("n", "<C-p>", ":CopilotChatToggle<CR>", opts)
