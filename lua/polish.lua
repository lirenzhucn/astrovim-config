-- this autocmd ensures that for all cpp files, shiftwidth is set to 2
-- without this autocmd, shiftwidth may be set to 1 (lsp is suspected to be the culprit)
-- a shiftwidth of 1 will prevent `DogeGenerate` from working properly
vim.api.nvim_create_autocmd('BufEnter', {
  -- have to use 'BufEnter' event instead of 'FileType' or 'BufRead', because soemthing else
  -- is overwriting this setting later than 'FileType'
  pattern = { '*.c', '*.h', '*.cpp', '*.hpp', '*.cu', '*.cuh' },
  command = 'setlocal shiftwidth=2'
})
