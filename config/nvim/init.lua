local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

print('lazy path:', lazypath)
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
  print('done load lazy.nvim')
end
vim.opt.rtp:prepend(lazypath) 

local lazy = require("lazy")
lazy.setup({
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
})

vim.opt.ignorecase = true
vim.opt.clipboard = "unnamedplus"

if vim.g.vscode then
    -- VSCode extension
    vim.cmd[[source $HOME/.config/nvim/vscode/settings.vim]]
else
    -- ordinary Neovim
    -- 设置行号
    vim.wo.number = true
end
 
