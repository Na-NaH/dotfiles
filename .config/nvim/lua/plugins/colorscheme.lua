return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,  -- Load before all the other plugins
  config = function()
    -- Theme options
    require("tokyonight").setup({
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    })
    -- Load the colorscheme
    vim.cmd.colorscheme "tokyonight"
  end,
}
