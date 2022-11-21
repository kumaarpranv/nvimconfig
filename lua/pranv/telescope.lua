local telescope = require("telescope")
local actions = require("telescope.actions")
local nnoremap = require('pranv.keymap').nnoremap

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

nnoremap("<leader>ff", "<cmd>Telescope find_files<CR>");
nnoremap("<leader>fs", "<cmd>Telescope live_grep<CR>");
nnoremap("<leader>fc", "<cmd>Telescope grep_string<CR>");

