-- AstroLSP allows you to customize the features in AstroNvim's LSP configuration engine
-- Configuration documentation can be found with `:h astrolsp`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astrolsp",
  ---@type AstroLSPOpts
  opts = {
    config = {
      -- the key is the server name to configure
      -- the value is the configuration table
      clangd = {
        capabilities = {
          offsetEncoding = "utf-8",
        },
	      filetypes = { "c", "cpp" }
      },
    },
  },
}
