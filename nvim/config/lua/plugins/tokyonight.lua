return {
  "folke/tokyonight.nvim",
  opts = {
    styles = {
      comments = { italic = false },
      keywords = { italic = false },
    },
    on_highlights = function(hl, colors)
      hl.LineNr = {
        fg = colors.blue,
      }
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
