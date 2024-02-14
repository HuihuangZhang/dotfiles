
require('core.options')
require('core.lazy')
require('core.keymap')

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
 
