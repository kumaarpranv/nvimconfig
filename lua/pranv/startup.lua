vim.opt.termguicolors = true

local ok, _ = pcall(require, "impatient")
if not ok then
  return
end

require('pranv.utils.cokeline')

