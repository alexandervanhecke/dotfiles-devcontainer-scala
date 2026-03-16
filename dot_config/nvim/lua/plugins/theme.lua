return {
  -- add gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    opts = {
      contrast = "hard",
    },
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
  {
    "askfiy/visual_studio_code",
    priority = 100,
    config = function()
      -- vim.cmd([[colorscheme visual_studio_code]])
    end,
  },
  {
    "Mofiqul/vscode.nvim",
    lazy = false,
    priority = 1000,
    name = "vscode",
    config = function()
      vim.cmd([[colorscheme vscode]])
    end,
  },
}
