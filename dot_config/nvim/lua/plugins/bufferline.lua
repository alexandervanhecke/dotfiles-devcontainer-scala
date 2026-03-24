return {
  "akinsho/bufferline.nvim",
  opts = {
    options = {
      sort_by = function(a, b)
        return a.id < b.id
      end,
    },
  },
}
