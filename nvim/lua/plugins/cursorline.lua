return {
  {
    "LazyVim/LazyVim",
    opts = {
      defaults = {
        cursorline = false,
      },
    },
  },

  {
    "EdenEast/nightfox.nvim",
    opts = function(_, opts)
      vim.api.nvim_create_autocmd("ColorScheme", {
        callback = function()
          vim.opt.cursorline = false

          local transparent = {
            "CursorLine",
            "CursorColumn",

            "SnacksPicker",
            "SnacksPickerList",
            "SnacksPickerPreview",
            "SnacksPickerInput",
            "SnacksPickerBox",

            "SnacksPickerBorder",
            "SnacksPickerListBorder",
            "SnacksPickerPreviewBorder",
            "SnacksPickerInputBorder",
            "SnacksPickerBoxBorder",

            "NormalFloat",
            "FloatBorder",
          }

          for _, group in ipairs(transparent) do
            vim.api.nvim_set_hl(0, group, { bg = "NONE" })
          end
        end,
      })
    end,
  },
}
