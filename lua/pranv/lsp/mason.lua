local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")

-- enable mason
mason.setup()

mason_lspconfig.setup({
  -- list of servers for mason to install
  ensure_installed = {
    "tsserver",
    "jedi_language_server",
    "html",
    "sumneko_lua",
    "emmet_ls",
  },
  -- auto-install configured servers (with lspconfig)
  automatic_installation = true, -- not the same as ensure_installed
})
