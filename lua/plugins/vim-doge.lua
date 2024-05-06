-- vim-doge document generation tool
---@type LazySpec
return {
  "kkoomen/vim-doge",
  init = function()
    vim.g.doge_doc_standard_python = 'numpy'
  end,
}
