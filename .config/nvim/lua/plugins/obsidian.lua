return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = true,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "Personal",
        path = "~/Sync/Vaults/Personal",
      },
      {
        name = "Estudios",
        path = "~/Sync/Vaults/Estudios",
      },
    },
    new_notes_location = "current_dir",
    completion = {
      nvim_cmp = true,
      min_chars = 2,
    },
    mappings = {},
  },
}
