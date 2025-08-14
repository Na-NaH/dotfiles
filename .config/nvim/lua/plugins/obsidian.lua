return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = true,
  --  ft = "markdown",
  event = {
    "BufReadPre /home/nacho/Sync/Vaults/*",
    "BufNewFile /home/nacho/Sync/Vaults/*",
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "Personal",
        path = "/home/nacho/Sync/Vaults/Personal",
      },
      {
        name = "Estudios",
        path = "/home/nacho/Sync/Vaults/Estudios",
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
