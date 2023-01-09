local ok, cokeline = pcall(require, "cokeline")
if not ok then
  return
end

cokeline.setup()

vim.keymap.set('n', 'tp', ":bprevious<CR>")
vim.keymap.set('n', 'tc', ":bdelete<CR>")
vim.keymap.set('n', 'tn', ":bnext<CR>")
vim.keymap.set('n', 'tf', ":bfirst<CR>")
vim.keymap.set('n', 'tl', ":blast<CR>")
