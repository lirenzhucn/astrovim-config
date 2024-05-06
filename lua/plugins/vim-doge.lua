-- vim-doge document generation tool
---@type LazySpec
return {
  "kkoomen/vim-doge",
  init = function()
    vim.g.doge_doc_standard_python = 'numpy'
    vim.g['doge_python_settings'] = {
      single_quotes = 0,
      omit_redundant_param_types = 0,
    }
  end,
}
