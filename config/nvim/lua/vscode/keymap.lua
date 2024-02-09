vim.keymap.set('n', 'gI', function()
  require('vscode-neovim').call('editor.action.goToImplementation')
end, { noremap = true, silent = true })