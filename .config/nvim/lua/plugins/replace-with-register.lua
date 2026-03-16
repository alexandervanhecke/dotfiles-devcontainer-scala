return {
  "vim-scripts/ReplaceWithRegister",
  lazy = false,
  config = function()
    -- Remove original 'gr' bindings if needed
    pcall(vim.keymap.del, "n", "gr")
    pcall(vim.keymap.del, "x", "gr")

    -- Proper remap for motion (operator-pending) commands
    vim.keymap.set("n", "gb", "<Plug>ReplaceWithRegisterOperator", { desc = "Replace with register (motion)" })
    vim.keymap.set("x", "gb", "<Plug>ReplaceWithRegisterVisual", { desc = "Replace with register (visual)" })
    vim.keymap.set("n", "gbb", "<Plug>ReplaceWithRegisterLine", { desc = "Replace line with register" })
  end,
}
