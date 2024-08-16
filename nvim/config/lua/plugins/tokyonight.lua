return {
  "folke/tokyonight.nvim",
  opts = {
    styles = {},
    on_highlights = function(hl, colors)
      hl.LineNrAbove = {
        fg = colors.blue,
      }
      hl.LineNrBelow = {
        fg = colors.blue,
      }
      hl.CursorLineNr = {
        bold = true,
        fg = colors.blue,
      }
    end,
  },
}
