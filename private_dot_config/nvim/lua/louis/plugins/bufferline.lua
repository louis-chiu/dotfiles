return {
  "akinsho/bufferline.nvim",
  after = "catppuccin",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",
  config = function()
    local macchiato = require("catppuccin.palettes").get_palette("macchiato")
    require("bufferline").setup({
      highlights = require("catppuccin.groups.integrations.bufferline").get({
        styles = { "italic", "bold" },
        custom = {},
      }),

      options = {
        mode = "tabs",
        separator_style = "slant",
      },
    })
  end,
}
