return {
  'nvim-telescope/telescope.nvim',
  event = 'VeryLazy',
  dependencies = {
    'nvim-lua/plenary.nvim',
    {'nvim-telescope/telescope-fzf-native.nvim', build = 'make'},
  },
  opts = {
    defaults = {
      mappings = {
        n = {
          ['<C-d>'] = "delete_buffer",
          ["<C-h>"] = "file_split",
          ["<C-s>"] = "file_vsplit",
        },
      },
      file_ignore_patterns = {
        "Casa/*",
        "Sync/Storage/*",
      },
    },
    extensions = {
      fzf = {
        fuzzy = true,  -- false for exact match
        override_generic_sorter = true,
        override_file_sorter = true,
        case_mode = "smart_case",
      },
    },
  },
  keys = {
    {
      "<leader>ff",
      function()
        require('telescope.builtin').find_files()
      end,
      desc = "Telescope Find Files",
    },
    {
      "<leader>fs",
      function()
        require("telescope.builtin").buffers({ initial_mode = "normal" })
      end,
      desc = "Telescope buffers",
    },
  },
}
