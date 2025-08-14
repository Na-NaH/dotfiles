return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  ---@module "ibl"
  ---@type ibl.config
  opts = {
    scope = {
      enabled = false,
      show_start = true,
    },
    indent = {
      smart_indent_cap = true,
    },
    whitespace = {
      remove_blankline_trail = true,
    },
    exclude = {
      filetypes = { "help", "TelescopePrompt", "markdown" },
      buftypes = { "terminal", "telescope" },
    },
  },
}
