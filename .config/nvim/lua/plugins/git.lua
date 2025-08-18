return {
  {
    "tpope/vim-fugitive",
    cmd = {"G", "Git"},
    keys = {
      {"<leader>gp", ":Git pull<cr>", desc = "Git pull"},
    },
  },
  {
  "lewis6991/gitsigns.nvim",
    opts = {
      max_file_length = 10000,
    },
  },
}
