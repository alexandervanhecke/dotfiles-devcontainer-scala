-- ~/.config/nvim/lua/plugins/disable-ui.lua
return {
  { import = "lazyvim.plugins.extras.ui.mini-animate", enabled = false },
  { import = "lazyvim.plugins.extras.ui.indentline", enabled = false },

  -- Disable animations from mini.animate
  {
    "echasnovski/mini.animate",
    opts = {
      enabled = false,
    },
  },

  -- Disable indent-blankline (indent guides)
  {
    "lukas-reineke/indent-blankline.nvim",
    opts = {
      enabled = false,
    },
  },
}
