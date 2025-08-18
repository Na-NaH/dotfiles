return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = "VeryLazy",
  main  = "nvim-treesitter.configs",
  opts = {
    ensure_installed = {
      "lua",
      "html",
      "php",
      "javascript",
      "python",
      "sql",
      "json",
      "markdown",
      "markdown_inline",
      "bash",
    },
    highlight = {
    enable = true,
    },
    indent = {
    enable = true,
    },
  },
}
