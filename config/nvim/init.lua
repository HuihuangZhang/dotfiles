
require('core.lazy')
require('core.keymap')

-- Mappings <Leader> as whitespace
vim.g.mapleader = ' '
vim.opt.ignorecase = true
-- set unname register as system clipboard
vim.opt.clipboard = "unnamedplus"

if vim.g.vscode then
    -- VSCode extension
    require('vscode.keymap')
    -- vim.cmd[[source $HOME/.config/nvim/lua/vscode/settings.vim]]
else
    -- ordinary Neovim
    -- 设置行号
    vim.wo.number= true
    vim.wo.relativenumber = true
end
 
