return {
  {
    "EdenEast/nightfox.nvim",
    priority = 1000,

    config = function()
      require("nightfox").setup({
        options = {
          transparent = true,
          terminal_colors = true,
          dim_inactive = false,

          styles = {
            comments = "italic",
            keywords = "NONE",
            functions = "NONE",
            conditionals = "NONE",
            constants = "NONE",
            numbers = "NONE",
            operators = "NONE",
            strings = "NONE",
            types = "NONE",
            variables = "NONE",
          },
        },
      })
    end,
  },
}
