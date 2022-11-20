local nnoremap = require("pranv.keymap").nnoremap
local inoremap = require("pranv.keymap").inoremap

nnoremap("<leader>pv", "<cmd>Ex<CR>")
inoremap("<cmd>v","<Esc>pi")
