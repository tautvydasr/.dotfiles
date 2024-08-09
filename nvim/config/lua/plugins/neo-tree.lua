return {
  "nvim-neo-tree/neo-tree.nvim",
  keys = {
    {
      "<leader>fe",
      function()
        require("neo-tree.command").execute({ toggle = false, reveal = true })
      end,
      desc = "Explorer NeoTree (Root Dir)",
    },
  },
  opts = {
    filesystem = {
      filtered_items = {
        visible = true,
      },
    },
  },
}
