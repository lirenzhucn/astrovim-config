-- This file simply bootstraps the installation of Lazy.nvim and then calls other files for execution
-- This file doesn't necessarily need to be touched, BE CAUTIOUS editing this file and proceed at your own risk.
local lazypath = vim.env.LAZY or vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not (vim.env.LAZY or (vim.uv or vim.loop).fs_stat(lazypath)) then
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable",
    lazypath })
end
vim.opt.rtp:prepend(lazypath)

-- validate that lazy is available
if not pcall(require, "lazy") then
  -- stylua: ignore
  vim.api.nvim_echo(
    { { ("Unable to load lazy from: %s\n"):format(lazypath), "ErrorMsg" }, { "Press any key to exit...", "MoreMsg" } },
    true, {})
  vim.fn.getchar()
  vim.cmd.quit()
end

require "lazy_setup"
require "polish"

-- this autocmd ensures that for all cpp files, shiftwidth is set to 2
-- without this autocmd, shiftwidth may be set to 1 (lsp is suspected to be the culprit)
-- a shiftwidth of 1 will prevent `DogeGenerate` from working properly
vim.api.nvim_create_autocmd('FileType', {
  pattern = { '*.c', '*.h', '*.cpp', '*.hpp', '*.cu', '*.cuh' },
  command = 'setlocal shiftwidth=2'
})
