local ok, toggleterm = pcall(require, "toggleterm")
if not ok then
  return
end

toggleterm.setup({
    size = 20,
    open_mapping = [[<c-\>]],
    direction = "horizontal",
    hide_numbers = true,
    shade_terminals = true,
    shade_factor = 2,
    start_in_insert = true,
    insert_mappings = true,
    terminal_mappings = true,
    shell = vim.o.shell,
    close_on_exit = true,
})

