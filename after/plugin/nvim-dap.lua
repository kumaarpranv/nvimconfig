local ok, _ = pcall(require, "dap")
if not ok then
  return
end

vim.keymap.set("n", "<leader>dc", ":lua require'dap'.continue()<CR>")
vim.keymap.set("n", "<leader>d,", ":lua require'dap'.step_over()<CR>")
vim.keymap.set("n", "<leader>d.", ":lua require'dap'.step_into()<CR>")
vim.keymap.set("n", "<leader>d/", ":lua require'dap'.step_over()<CR>")
vim.keymap.set("n", "<leader>dc", ":lua require'dap'.continue()<CR>")
vim.keymap.set("n", "<leader>d,", ":lua require'dap'.step_over()<CR>")
vim.keymap.set("n", "<leader>d.", ":lua require'dap'.step_into()<CR>")
vim.keymap.set("n", "<leader>d/", ":lua require'dap'.step_over()<CR>")
vim.keymap.set("n", "<leader>db", ":lua require'dap'.toggle_breakpoint()<CR>")
