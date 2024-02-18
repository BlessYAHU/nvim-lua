require("abraham")
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
vim.opt_local.conceallevel = 2

require("lazy").setup("plugins")
require("lualine").setup {
  options = { theme  = 'tokyonight'},
}
vim.cmd[[colorscheme tokyonight]]
