return {
  'stevearc/oil.nvim',
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  opts = {
    default_file_explorer = true,
    delete_to_trash = true,
    skip_confirm_for_simple_edits = false,
    view_options = {
      natural_order = false,
      show_hidden = true,
      is_always_hidden = function(name, _)
        return name == ".." or name == ".git"
      end,
    },
    win_options = {
      wrap = true,
    },
    float = {
      padding = 1,
      max_height = 0.85,
      max_width = 0.77,
      preview_split = "right",
    },
    confirmation = {
      win_options = {
        wrap = false,
      },
    },
    use_default_keymaps = true,
    keymaps = {
      ["<C-h>"] = { "actions.select", opts = { horizontal = true } },
      ["<C-s>"] = { "actions.select", opts = { vertical = true } },
      ["<Esc>"] = { "actions.close", mode = "n" },
    },
  },
  keys = {
    {
      "<leader>fb",
      function()
        require('oil').open_float()
      end,
      desc = "Open oil in a floating window",
    },
  },
}
