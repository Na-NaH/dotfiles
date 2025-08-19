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
          ["<C-w>s"] = "file_split",
          ["<C-w>v"] = "file_vsplit",
        },
      },
      file_ignore_patterns = {
        -- ignore all files inside this directories
        "Sync/Storage/*",
        "Casa/Music/*",
        "Casa/Documents/*",
        "Casa/Media/*",
        "Casa/zaass/*",
        "Casa/Workbench/Blender/*",
        "Casa/Workbench/Virtual/*",
      },
    },
    pickers = {
      buffers = {
        sort_lastused = false,  -- Sort by last used
        sort_mru = true,       -- Sort by recently used
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
