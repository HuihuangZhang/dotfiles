-- print('loading from keymap.lua')

vim.api.nvim_set_keymap('n', '<leader>o', 'o<Esc>0"_D', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>O', 'O<Esc>0"_D', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-o>', '<Esc>o', { noremap = true, silent = true })

-- remove highlight
vim.api.nvim_set_keymap('n', '<leader>h', ':noh<cr>', { noremap = true, silent = true })

-- move
vim.api.nvim_set_keymap('n', 'H', '0', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'L', '$', { noremap = true, silent = true })
