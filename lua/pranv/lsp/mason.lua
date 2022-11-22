local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")

-- enable mason
mason.setup()

mason_lspconfig.setup({
  -- list of servers for mason to install
  ensure_installed = {
    "rust_analyzer",
    "jedi_language_server",
    "gopls",
    "html",
    "emmet_ls",
    "clangd",
  },
  -- auto-install configured servers (with lspconfig)
  automatic_installation = true, -- not the same as ensure_installed
})
