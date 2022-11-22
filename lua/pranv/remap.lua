local nnoremap = require("pranv.keymap").nnoremap
local inoremap = require("pranv.keymap").inoremap

nnoremap("<leader>e", "<cmd>NvimTreeToggle<CR>")
inoremap("<cmd>v", "<Esc>pi")
