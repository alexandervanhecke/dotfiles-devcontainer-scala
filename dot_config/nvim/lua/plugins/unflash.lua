-- ~/.config/nvim/lua/plugins/flash.lua
return {
  "folke/flash.nvim",
  opts = {
    modes = {
      char = {
        keys = {
          -- disable cs and cS, want dit is in conflict met de surround plugin
          ["c"] = false,
        },
      },
    },
  },
}
