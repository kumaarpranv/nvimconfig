vim.keymap.set("n", "<leader>pv", "<cmd>NvimTreeToggle<CR>")
vim.keymap.set("n", "<cmd>v", "<Esc>pi")
vim.keymap.set("i", "<cmd>v", "<Esc>pi")
vim.keymap.set("n", "<leader>e", "<cmd>lua vim.diagnostic.open_float(nil, {focus=false})<CR>")
