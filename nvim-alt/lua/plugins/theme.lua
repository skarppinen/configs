return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      require("tokyonight").setup({
        transparent = false,
        styles = {
          sidebars = "transparent",
          floats = "transparent",
        }
      })
      vim.cmd[[colorscheme tokyonight-night]]
    end,
  },
}
