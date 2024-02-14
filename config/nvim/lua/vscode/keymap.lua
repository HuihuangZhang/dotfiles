-- print('loading from vscode.keymap.lua')
vim.keymap.set('n', 'gI', function()
  require('vscode-neovim').call('editor.action.goToImplementation')
end, { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>,', 'A,<Esc>', { noremap = true, silent = true })