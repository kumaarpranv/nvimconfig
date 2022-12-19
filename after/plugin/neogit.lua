local neogit = require('neogit')
local nnoremap = require('pranv.keymap').nnoremap

neogit.setup {}

vim.keymap.set("n", "<leader>gs", function()
    neogit.open({ })
end);

vim.keymap.set("n", "<leader>ga", "<cmd>!git fetch --all<CR>");
