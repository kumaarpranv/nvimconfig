local nnoremap = require("pranv.keymap").nnoremap
local inoremap = require("pranv.keymap").inoremap

nnoremap("<leader>x", "<cmd>NvimTreeToggle<CR>")
inoremap("<cmd>v", "<Esc>pi")
nnoremap("<leader>e", "<cmd>lua vim.diagnostic.open_float(nil, {focus=false})<CR>")
