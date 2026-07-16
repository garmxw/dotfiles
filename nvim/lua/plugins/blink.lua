--This will give you
--Tab → next completion item, or jump to the next snippet placeholder.
--Shift+Tab → previous completion/snippet placeholder.
--Enter → accept the selected completion.
--Ctrl+Space → manually open completion.
--Automatic documentation popup.
--Ghost text suggestions.
--Function signature help while typing.

return {
  {
    "Saghen/blink.cmp",
    opts = function(_, opts)
      -- Keep existing sources (Dadbod, LSP, etc.)
      opts.sources = opts.sources or {}
      opts.sources.default = opts.sources.default or {}
      opts.sources.providers = opts.sources.providers or {}

      -- Completion keymaps
      opts.keymap = vim.tbl_deep_extend("force", opts.keymap or {}, {
        ["<Tab>"] = {
          "select_next",
          "snippet_forward",
          "fallback",
        },
        ["<S-Tab>"] = {
          "select_prev",
          "snippet_backward",
          "fallback",
        },
        ["<CR>"] = {
          "accept",
          "fallback",
        },
        ["<C-Space>"] = {
          "show",
          "show_documentation",
          "hide_documentation",
        },
      })

      -- Ghost text
      opts.completion = vim.tbl_deep_extend("force", opts.completion or {}, {
        ghost_text = {
          enabled = true,
        },
        documentation = {
          auto_show = true,
          auto_show_delay_ms = 200,
        },
      })

      -- Signature help
      opts.signature = {
        enabled = true,
      }

      return opts
    end,
  },
}
