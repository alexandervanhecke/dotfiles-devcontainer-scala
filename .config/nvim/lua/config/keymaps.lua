-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- remove default keymap
vim.keymap.set("n", "<A-CR>", function()
  vim.lsp.buf.code_action()
end, { desc = "LSP Code Action" })
vim.keymap.set("n", "<C-b>", vim.lsp.buf.definition, { desc = "Go to Definition" })
vim.keymap.set("n", "<M-h>", "<cmd>BufferLineMovePrev<cr>", { desc = "Move buffer left" })
vim.keymap.set("n", "<M-l>", "<cmd>BufferLineMoveNext<cr>", { desc = "Move buffer right" })
