return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      mappings = {},
      vimgrep_arguments = {
        "rg",
        "--hidden",
        "--with-filename",
        "--line-number",
        "--column",
        "--smart-case",
        -- Ignore the files matching glob patterns bellow
        "--glob=!**/.git/*",
        "--glob=!**/.idea/*",
      },
    },
    pickers = {
      find_files = {
        hidden = true,
        find_command = {
          "rg",
          "--files",
          "--hidden",
          -- Ignore the files matching glob patterns bellow
          "--glob=!**/.git/*",
          "--glob=!**/.idea/*",
        },
      },
    },
  },
}
