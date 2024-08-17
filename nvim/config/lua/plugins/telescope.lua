return {
  "nvim-telescope/telescope.nvim",
  opts = function()
    local send_to_qflist = function(...)
      require("telescope.actions").send_to_qflist(...)
      require("trouble").toggle("quickfix")
    end

    local send_selected_to_qflist = function(...)
      require("telescope.actions").send_selected_to_qflist(...)
      require("trouble").toggle("quickfix")
    end

    return {
      defaults = {
        mappings = {
          i = {
            ["<C-q>"] = send_to_qflist,
            ["<M-q>"] = send_selected_to_qflist,
          },
          n = {
            ["<C-q>"] = send_to_qflist,
            ["<M-q>"] = send_selected_to_qflist,
          },
        },
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
    }
  end,
}
