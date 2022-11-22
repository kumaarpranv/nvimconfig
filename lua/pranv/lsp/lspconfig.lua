 -- import lspconfig plugin safely
local lspconfig = require("lspconfig")
-- import cmp-nvim-lsp plugin safely
local cmp_nvim_lsp = require("cmp_nvim_lsp")
local nnoremap = require('pranv.keymap').nnoremap
local keymap = vim.keymap -- for conciseness
 
-- enable keybinds only for when lsp server available
local on_attach = function(client, bufnr)
  -- keybind options

  -- set keybinds
  nnoremap("gf", "<cmd>Lspsaga lsp_finder<CR>") -- show definition, references
  nnoremap("gD", "<Cmd>lua vim.lsp.buf.declaration()<CR>") -- got to declaration
  nnoremap("gd", "<cmd>Lspsaga peek_definition<CR>") -- see definition and make edits in window
  nnoremap("gi", "<cmd>lua vim.lsp.buf.implementation()<CR>") -- go to implementation
  nnoremap("<leader>ca", "<cmd>Lspsaga code_action<CR>") -- see available code actions
  nnoremap("<leader>rn", "<cmd>Lspsaga rename<CR>") -- smart rename
  nnoremap("<leader>d", "<cmd>Lspsaga show_line_diagnostics<CR>") -- show  diagnostics for line
  nnoremap("<leader>d", "<cmd>Lspsaga show_cursor_diagnostics<CR>") -- show diagnostics for cursor
  nnoremap("[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>") -- jump to previous diagnostic in buffer
  nnoremap("]d", "<cmd>Lspsaga diagnostic_jump_next<CR>") -- jump to next diagnostic in buffer
  nnoremap("K", "<cmd>Lspsaga hover_doc<CR>") -- show documentation for what is under cursor
  nnoremap("<leader>o", "<cmd>LSoutlineToggle<CR>") -- see outline on right hand side

end

-- used to enable autocompletion (assign to every lsp server config)
local capabilities = cmp_nvim_lsp.default_capabilities()

-- Change the Diagnostic symbols in the sign column (gutter)
-- (not in youtube nvim video)
local signs = { Error = " ", Warn = " ", Hint = "ﴞ ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

-- configure html server
lspconfig["html"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

lspconfig["jedi_language_server"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

lspconfig["rust_analyzer"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

lspconfig["gopls"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})
