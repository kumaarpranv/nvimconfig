vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<cmd>v", "<Esc>pi")
vim.keymap.set("i", "<cmd>v", "<Esc>pi")
vim.keymap.set("n", "<leader>e", "<cmd>lua vim.diagnostic.open_float(nil, {focus=false})<CR>")
vim.keymap.set("n", "<C-q>", vim.cmd.close)
vim.keymap.set("i", "<C-q>", vim.cmd.close)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set({"n", "v"}, "<leader>p", [["+p]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>sc", [[:s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("v", "<leader>sv", [[:s/\%V\old/new/gI]])

vim.keymap.set("n", "<leader>gd", "<cmd>DiffviewOpen<CR>")
vim.keymap.set("n", "<leader>gdd", "<cmd>DiffviewFileHistory<CR>")
vim.keymap.set("n", "<leader>gde", "<cmd>DiffviewClose<CR>")


