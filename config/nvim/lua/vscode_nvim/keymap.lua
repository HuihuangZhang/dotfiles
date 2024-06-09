-- print('loading from vscode.keymap.lua')
vim.keymap.set('n', 'gI', function()
  require('vscode-neovim').call('editor.action.goToImplementation')
end, { noremap = true, silent = true })

-- fold keymap
vim.keymap.set('n', 'zM', function()
  require('vscode-neovim').call('editor.foldAll')
end, { noremap = true, silent = true })

vim.keymap.set('n', 'zR', function()
  require('vscode-neovim').call('editor.unfoldAll')
end, { noremap = true, silent = true })

vim.keymap.set('n', 'zc', function()
  require('vscode-neovim').call('editor.fold')
end, { noremap = true, silent = true })

vim.keymap.set('n', 'zC', function()
  require('vscode-neovim').call('editor.foldRecursively')
end, { noremap = true, silent = true })

vim.keymap.set('n', 'zo', function()
  require('vscode-neovim').call('editor.unfold')
end, { noremap = true, silent = true })

vim.keymap.set('n', 'zO', function()
  require('vscode-neovim').call('editor.unfoldRecursively')
end, { noremap = true, silent = true })

vim.keymap.set('n', 'za', function()
  require('vscode-neovim').call('editor.toggleFold')
end, { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>,', 'A,<Esc>', { noremap = true, silent = true })