local status_ok, mason = pcall(require, "mason")
if not status_ok then
  return
end

mason.setup()

require "jonestristand.lsp.configs"
require("jonestristand.lsp.handlers").setup()
require "jonestristand.lsp.null-ls"
