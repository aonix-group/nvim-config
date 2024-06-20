-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Terminal
function _G.set_terminal_keymaps()
  local opts = { noremap = true }
  vim.api.nvim_buf_set_keymap(0, 't', "<esc>", [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', "jk", [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', "<C-w>", [[<C-\><C-n><C-w>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
