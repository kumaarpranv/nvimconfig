local ok, neogit = pcall(require, "neogit")
if not ok then
  return
end

neogit.setup {}

vim.keymap.set("n", "<leader>gs", function()
    neogit.open({ })
end);

vim.keymap.set("n", "<leader>ga", "<cmd>!git fetch --all<CR>");
