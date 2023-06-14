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

--configuration for lazy
local plugins = {
    {
        'preservim/nerdtree',
        dependencies = { 'ryanoasis/vim-devicons' }
    },
}
--configuration for lazy

require("lazy").setup(plugins, opts)
