local ok, cokeline = pcall(require, "cokeline")
if not ok then
  return
end

cokeline.setup()

vim.keymap.set('n', '<leader>tp', ":bprevious<CR>")
vim.keymap.set('n', '<leader>tc', ":bdelete<CR>")
vim.keymap.set('n', '<leader>tn', ":bnext<CR>")
vim.keymap.set('n', '<leader>tf', ":bfirst<CR>")
vim.keymap.set('n', '<leader>tl', ":blast<CR>")
