return {
  {
    "tpope/vim-fugitive",
    cmd = {"G", "Git"},
    keys = {
      {"<leader>gf", ":Git fetch --all -p<cr>", desc = "Git fetch"},
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
