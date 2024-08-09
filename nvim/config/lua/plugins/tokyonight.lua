return {
  "folke/tokyonight.nvim",
  opts = {
    styles = {},
    on_highlights = function(hl, colors)
      hl.LineNr = {
        fg = colors.blue,
      }
      hl.CursorLineNr = {
        bold = true,
        fg = colors.blue,
      }
    end,
  },
}
