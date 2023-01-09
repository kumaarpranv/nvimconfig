local ok, telescope = pcall(require, "telescope")
if not ok then
  return
end

local actions = require("telescope.actions")

-- configure telescope
telescope.setup({
  -- configure custom mappings
  defaults = {
    mappings = {
      i = {
        ["<C-k>"] = actions.move_selection_previous, -- move to prev result
        ["<C-j>"] = actions.move_selection_next, -- move to next result
        ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist, -- send selected to quickfixlist
      },
    },
  },
})
telescope.load_extension("fzf")
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>");
vim.keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<CR>");
vim.keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<CR>");
vim.keymap.set("n", "<leader>fk", "<cmd>Telescope keymaps<CR>");

