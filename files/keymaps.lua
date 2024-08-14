-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Mapping for the :Stdheader command with the <F1> key, make a newline and activate INSERT mode.
function InsertHeaderWithNewline()
  vim.cmd('Stdheader')
  vim.cmd('normal! o')
  vim.cmd('startinsert')
end

vim.api.nvim_set_keymap('n', '<F1>', ':lua InsertHeaderWithNewline()<CR>', { noremap = true, silent = true })

-- F2 mapping is assigned to 42 Formatter.

-- Map F3 to run Norminette
vim.api.nvim_set_keymap('n', '<F3>', ':Norminette<CR>', { noremap = true, silent = true })

-- Map F4 to close the current window
vim.api.nvim_set_keymap('n', '<F4>', ':q<CR>', { noremap = true, silent = true })

-- Map F5 to save the current document
vim.api.nvim_set_keymap('n', '<F5>', ':w<CR>', { noremap = true, silent = true })

-- Map F6 to open/close the NeoTree explorer in the current working directory (cwd)
vim.api.nvim_set_keymap('n', '<F6>', '<cmd>Neotree toggle current<CR>', { noremap = true, silent = true })
